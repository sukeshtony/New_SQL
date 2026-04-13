import re

def fix_m7_lesson_type(file_path):
    correct_type = "Silly Topic Debate"
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Fix the mess I made (concatenated alignment and type)
    # Match '[alignment]'Silly Topic Debate'
    broken_pattern = r"'[^']*?Silly Topic Debate'"
    content = re.sub(broken_pattern, f"'{correct_type}'", content)

    # In case there were any that were just alignment strings (column 6 in bantrly.lesson)
    # Pattern: column 6 is the 6th string after VALUES (v_lesson_id, ...)
    # VALUES (v_lesson_id, '1', '2', '3', '4', '5', '6'
    # Wait, column 3 is desc, column 6 is type.
    # Actually, column 5 is difficulty_level, column 6 is lesson_type.
    # 'EASY', '[alignment]'
    lesson_pattern = r"(v_lesson_id,\s*'[^']+',\s*'[^']+',\s*'[^']+',\s*'[^']+',\s*)'[^']+'"
    content = re.sub(lesson_pattern, r"\1'" + correct_type + "'", content)

    # Column 5 in program_lesson_sequence_new
    # (id, id, school, lesson, type, grade ...)
    # (..., v_lesson_id,\s*)'[^']+'
    sequence_pattern = r"(v_lesson_id,\s*)'[^']+'"
    content = re.sub(sequence_pattern, r"\1'" + correct_type + "'", content)

    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"Fixed 'lesson_type' in {file_path}")

if __name__ == '__main__':
    fix_m7_lesson_type('module_7_silly_debate_new_grade3.sql')
