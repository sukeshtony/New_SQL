"""
update_lesson_desc.py
────────────────────────────────────────────────────────────────
Reads an Excel template and generates SQL to update lesson_description
for any or all modules.

lesson_description is updated in TWO places:
  1. bantrly.lesson             (direct column)
  2. bantrly.lesson_version_new (top-level key in the content JSON)

Usage:
    python update_lesson_desc.py                     # all modules, default Excel
    python update_lesson_desc.py my_file.xlsx        # custom Excel, all modules
    python update_lesson_desc.py my_file.xlsx 1      # only Module 1
    python update_lesson_desc.py my_file.xlsx 1 3 7  # modules 1, 3 and 7
    python update_lesson_desc.py --list              # show module names
    python update_lesson_desc.py --create-template   # create blank template

Output: lesson_desc_output.sql
"""

import sys
from pathlib import Path

try:
    import openpyxl
    from openpyxl.styles import Font, PatternFill, Alignment
    from openpyxl.utils import get_column_letter
except ImportError:
    sys.exit("openpyxl not installed.  Run: pip install openpyxl")

CONFIG_SHEET  = "Config"
DEFAULT_EXCEL = "lesson_desc_template.xlsx"
OUTPUT_FILE   = "lesson_desc_output.sql"

MODULE_SHEETS = [
    "M1 - Reading Paragraph",
    "M2 - Story Building",
    "M3 - QA Bursts",
    "M4 - Presentation",
    "M5 - Tongue Twisters",
    "M6 - Poems",
    "M7 - Silly Debate",
    "M8 - Audio Postcards",
]

VALID_MODULES = {int(s.split(" - ")[0][1:]): s for s in MODULE_SHEETS}


# ─── Helpers ───────────────────────────────────────────────────────────────────
def sq(val: str) -> str:
    return str(val).replace("'", "''")


def read_config(wb) -> dict[str, str]:
    if CONFIG_SHEET not in wb.sheetnames:
        sys.exit(
            f"'{CONFIG_SHEET}' sheet not found.\n"
            "Run with --create-template to regenerate the template."
        )
    ws  = wb[CONFIG_SHEET]
    cfg: dict[str, str] = {}
    for row in ws.iter_rows(min_row=2, values_only=True):
        key, val = row[0], row[1]
        if key and val is not None and str(key).strip():
            cfg[str(key).strip().lower()] = str(val).strip()

    missing = [f for f in ("created_by", "role", "difficulty") if f not in cfg]
    if missing:
        sys.exit(f"Config sheet is missing required field(s): {', '.join(missing)}")
    return cfg


def read_sheet(ws) -> list[tuple[str, str]]:
    """
    Row 1 = headers (lesson_name, lesson_description)
    Row 2+ = data

    Returns list of (lesson_name, new_description).
    """
    headers = [c.value for c in ws[1]]
    if not headers or headers[0] is None:
        return []

    rows: list[tuple[str, str]] = []
    for row in ws.iter_rows(min_row=2, values_only=True):
        lesson_name = row[0]
        if lesson_name is None or str(lesson_name).strip() == "":
            continue
        lesson_name = str(lesson_name).strip()
        if lesson_name.startswith("("):
            continue

        new_desc = row[1] if len(row) > 1 else None
        if new_desc is None or str(new_desc).strip() == "":
            continue

        rows.append((lesson_name, str(new_desc).strip()))
    return rows


def build_block(sheet_name: str, rows: list[tuple[str, str]], cfg: dict[str, str]) -> str:
    """Build one CTE chain for a module's lesson_description updates."""
    created_by = cfg["created_by"]
    role       = cfg["role"]
    difficulty = cfg["difficulty"]

    sheet_code = sheet_name.split(" - ")[0].strip().lower()   # m1, m2 …
    data_cte   = f"{sheet_code}_desc_data"
    lesson_cte = f"{sheet_code}_update_lesson"
    ver_cte    = f"{sheet_code}_update_version"

    values_lines = [f"        ('{sq(name)}', '{sq(desc)}')" for name, desc in rows]
    values_str   = ",\n".join(values_lines)

    return (
        f"-- {sheet_name}: lesson_description ({len(rows)} lesson(s))\n"
        f"{data_cte} AS (\n"
        f"    SELECT * FROM (VALUES\n"
        f"{values_str}\n"
        f"    ) AS v(lesson_name, new_desc)\n"
        f"),\n"
        f"{lesson_cte} AS (\n"
        f"    UPDATE bantrly.lesson l\n"
        f"    SET lesson_description = d.new_desc\n"
        f"    FROM {data_cte} d\n"
        f"    WHERE l.lesson_name = d.lesson_name\n"
        f"      AND l.difficulty_level = '{difficulty}'\n"
        f"      AND l.created_by = '{created_by}'\n"
        f"      AND l.created_by_role = '{role}'\n"
        f"    RETURNING l.lesson_id, l.lesson_name, d.new_desc\n"
        f"),\n"
        f"{ver_cte} AS (\n"
        f"    UPDATE bantrly.lesson_version_new lvn\n"
        f"    SET content = jsonb_set(\n"
        f"            lvn.content::jsonb,\n"
        f"            '{{lesson_description}}',\n"
        f"            to_jsonb(ul.new_desc)\n"
        f"        )\n"
        f"    FROM {lesson_cte} ul\n"
        f"    WHERE lvn.lesson_id = ul.lesson_id\n"
        f"      AND lvn.is_latest = true\n"
        f"    RETURNING lvn.title\n"
        f")"
    ), [
        f"    (SELECT COUNT(*) FROM {lesson_cte}) AS {sheet_code}_lessons_updated",
        f"    (SELECT COUNT(*) FROM {ver_cte})   AS {sheet_code}_versions_updated",
    ]


def generate_sql(excel_path: str, selected: set[int] | None = None) -> str | None:
    wb  = openpyxl.load_workbook(excel_path, data_only=True)
    cfg = read_config(wb)

    all_ctes: list[str]    = []
    all_selects: list[str] = []

    for sheet_name in MODULE_SHEETS:
        mod_num = int(sheet_name.split(" - ")[0][1:])
        if selected and mod_num not in selected:
            continue
        if sheet_name not in wb.sheetnames:
            continue
        rows = read_sheet(wb[sheet_name])
        if not rows:
            continue

        cte_block, select_cols = build_block(sheet_name, rows, cfg)
        all_ctes.append(cte_block)
        all_selects.extend(select_cols)
        print(f"  + {sheet_name}  ({len(rows)} row(s))")

    if not all_ctes:
        print("No updates found in the Excel file.")
        return None

    sql = (
        f"-- Generated by update_lesson_desc.py\n"
        f"-- Filters: difficulty={cfg['difficulty']} | created_by={cfg['created_by']} | role={cfg['role']}\n"
        f"-- Updates bantrly.lesson (lesson_description column) and\n"
        f"--         bantrly.lesson_version_new (lesson_description JSON key)\n\n"
        f"BEGIN;\n\n"
        f"WITH\n"
        + ",\n\n".join(all_ctes)
        + "\n\nSELECT\n"
        + ",\n".join(all_selects)
        + ";\n\nCOMMIT;\n"
    )
    return sql


# ─── Template creator ──────────────────────────────────────────────────────────
def create_template(out_path: str = DEFAULT_EXCEL) -> None:
    wb = openpyxl.Workbook()
    wb.remove(wb.active)

    hdr_font  = Font(bold=True, color="FFFFFF")
    hdr_fill  = PatternFill("solid", fgColor="2E5090")
    note_font = Font(italic=True, color="999999")
    note_fill = PatternFill("solid", fgColor="FFF2CC")
    center    = Alignment(horizontal="center", wrap_text=True)

    # ── Config sheet ────────────────────────────────────────────────────────────
    ws_cfg = wb.create_sheet(CONFIG_SHEET, 0)
    ws_cfg.column_dimensions["A"].width = 22
    ws_cfg.column_dimensions["B"].width = 45
    ws_cfg.column_dimensions["C"].width = 42

    for col, label in enumerate(("Field", "Value", "Description"), 1):
        cell      = ws_cfg.cell(row=1, column=col, value=label)
        cell.font = hdr_font
        cell.fill = hdr_fill
        cell.alignment = center

    cfg_rows = [
        ("created_by", "ee42009d-d83e-4c12-abd1-2d8fff809b18", "UUID of the teacher who created the lessons"),
        ("role",       "TEACHER",                               "Role filter  (e.g. TEACHER)"),
        ("difficulty", "EASY",                                  "Difficulty level  (e.g. EASY, MEDIUM, HARD)"),
    ]
    for row_idx, (field, default_val, desc) in enumerate(cfg_rows, 2):
        ws_cfg.cell(row=row_idx, column=1, value=field).font = Font(bold=True)
        ws_cfg.cell(row=row_idx, column=2, value=default_val)
        ws_cfg.cell(row=row_idx, column=3, value=desc).font  = Font(italic=True, color="666666")

    ws_cfg.freeze_panes = "B2"

    # ── Module sheets ───────────────────────────────────────────────────────────
    for sheet_name in MODULE_SHEETS:
        ws = wb.create_sheet(sheet_name)

        for col, label in enumerate(("lesson_name", "lesson_description"), 1):
            cell           = ws.cell(row=1, column=col, value=label)
            cell.font      = hdr_font
            cell.fill      = hdr_fill
            cell.alignment = center

        ws.column_dimensions["A"].width = 38
        ws.column_dimensions["B"].width = 60

        # Example row
        ex1 = ws.cell(row=2, column=1, value="(example — delete this row)")
        ex2 = ws.cell(row=2, column=2, value="3SL1 [3SL1d] (88%) PRIMARY | 3SL4 (85%) PRIMARY")
        for cell in (ex1, ex2):
            cell.font      = note_font
            cell.fill      = note_fill
            cell.alignment = Alignment(wrap_text=True)

        ws.row_dimensions[1].height = 20
        ws.row_dimensions[2].height = 30
        ws.freeze_panes = "A3"

    wb.save(Path(out_path))
    print(f"Template saved: {out_path}")
    print()
    print("How to use:")
    print("  1. Fill in Config sheet (created_by, role, difficulty).")
    print("  2. In each module sheet, fill in lesson_name and the new lesson_description.")
    print("  3. Leave a module sheet blank to skip it.")
    print("  4. Delete or ignore the yellow example row.")


# ─── Main ─────────────────────────────────────────────────────────────────────
def main() -> None:
    args = sys.argv[1:]

    if "--create-template" in args:
        positional = [a for a in args if not a.startswith("--")]
        out = positional[0] if positional else DEFAULT_EXCEL
        create_template(out)
        return

    if "--list" in args:
        print("Available modules:")
        for num, sheet in VALID_MODULES.items():
            print(f"  {num}  {sheet}")
        return

    positional = [a for a in args if not a.startswith("--")]
    mod_args   = [a for a in positional if a.isdigit()]
    file_args  = [a for a in positional if not a.isdigit()]

    excel_file = file_args[0] if file_args else DEFAULT_EXCEL

    selected: set[int] | None = None
    if mod_args:
        selected = set()
        for m in mod_args:
            n = int(m)
            if n not in VALID_MODULES:
                sys.exit(f"Module {n} does not exist. Valid: 1-8  (use --list to see names)")
            selected.add(n)

    p = Path(excel_file)
    if not p.exists():
        sys.exit(
            f"'{excel_file}' not found.\n"
            "Run with --create-template to generate a blank template."
        )

    label = f"modules {sorted(selected)}" if selected else "all modules"
    print(f"Reading:  {p}  [{label}]")
    sql = generate_sql(str(p), selected)

    if sql:
        out = Path(OUTPUT_FILE)
        out.write_text(sql, encoding="utf-8")
        print(f"\nSaved:  {out}  ({len(sql):,} chars)")

    print("\nDone.")


if __name__ == "__main__":
    main()
