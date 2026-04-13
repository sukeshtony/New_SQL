import re

def restore_m7_lesson_type(file_path):
    correct_type = "Silly Topic Debate"
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Pattern for bantrly.lesson table insert (difficulty_level, lesson_type, created_on ...)
    # VALUES (v_lesson_id, 'Name', 'Description', 'ModuleID', 'EASY', '[alignment]', NOW()...)
    lesson_pattern = r"((?:INSERT INTO bantrly\.lesson [^;]+VALUES \(\s*v_lesson_id,\s*'[^']+',\s*'[^']+',\s*'[^']+',\s*'[^']+',\s*)'[^']+')"
    # We replace the alignment at the end of the match with correct_type
    content = re.sub(lesson_pattern, lambda m: m.group(1).rsplit("'", 1)[0] + f"'{correct_type}'", content)

    # Pattern for bantrly.program_lesson_sequence_new table insert (lesson_id, lesson_type, grade ...)
    # VALUES (v_learning_path_id, v_custom_version_id, 'SchoolID', v_lesson_id, '[alignment]', 3, NULL, 'EASY', ...)
    sequence_pattern = r"((?:INSERT INTO bantrly\.program_lesson_sequence_new [^;]+VALUES \(\s*v_learning_path_id,\s*v_custom_version_id,\s*'[^']+',\s*v_lesson_id,\s*)'[^']+')"
    content = re.sub(sequence_pattern, lambda m: m.group(1).rsplit("'", 1)[0] + f"'{correct_type}'", content)

    # Ensure JSON is correct (though it seemed correct, let's be safe)
    json_entry_pattern = r'("lesson_type":\s*")([^"]+)'
    content = re.sub(json_entry_pattern, r'\1' + correct_type, content)

    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"Restored 'lesson_type' in {file_path}")

if __name__ == '__main__':
    restore_m7_lesson_type('module_7_silly_debate_new_grade3.sql')
