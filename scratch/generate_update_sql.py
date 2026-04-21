import re

file_path = r"c:\Users\Sukesh\Desktop\New SQL Data\Easy\updated_module_7_silly_topic.sql"

with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Pattern for Lesson blocks
# We need: Lesson Name, and all content values
# The easiest way is to find the 'INSERT INTO bantrly.lesson' block for name
# and then 'INSERT INTO bantrly.lesson_content' for values
# and 'INSERT INTO bantrly.lesson_version_new' for JSON

lessons = []
# Split by Lesson markers
blocks = re.split(r'-- Lesson \d+:', content)[1:]

for block in blocks:
    name_match = re.search(r"VALUES\s*\(\s*v_lesson_id,\s*'([^']+)'", block)
    if not name_match: continue
    name = name_match.group(1)
    
    # Extract keys and values from lesson_content
    # VALUES (gen_random_uuid(), v_lesson_id, 'key', 'value', NOW(), NOW())
    values = re.findall(r"v_lesson_id,\s*'([^']+)',\s*'((?:''|[^'])+)'", block)
    content_map = {k: v for k, v in values}
    
    # Extract JSON from lesson_version_new
    json_match = re.search(r"INSERT INTO bantrly\.lesson_version_new.*?VALUES\s*\(.*?, v_lesson_id, \d+, '.*?',\s*'((?:''|[^'])+)'", block, re.DOTALL)
    json_str = json_match.group(1) if json_match else ""
    
    lessons.append({
        'name': name,
        'topic': content_map.get('topic', ''),
        'user_side': content_map.get('user_side', ''),
        'ai_side': content_map.get('ai_side', ''),
        'content': content_map.get('content', ''),
        'example_topic': content_map.get('example_topic', ''),
        'example_user_side': content_map.get('example_user_side', ''),
        'example_ai_side': content_map.get('example_ai_side', ''),
        'json': json_str
    })

# Now generate SQL
sql = """BEGIN;

-- Strict filters for safety
DO $$
DECLARE
  v_created_by UUID := 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
  v_role TEXT := 'TEACHER';
  v_lesson_type TEXT := 'Silly Topic Debate';
  v_difficulty TEXT := 'EASY';
  v_training_module_id UUID := '8addaf36-3881-49d8-ab34-444c399bf432';
BEGIN

WITH updated_data (lesson_name, topic, user_side, ai_side, content_val, ex_topic, ex_user, ex_ai, full_json) AS (
    VALUES
"""

for i, l in enumerate(lessons):
    comma = "," if i < len(lessons) - 1 else ""
    sql += f"        ('{l['name']}', '{l['topic']}', '{l['user_side']}', '{l['ai_side']}', '{l['content']}', '{l['example_topic']}', '{l['example_user_side']}', '{l['example_ai_side']}', '{l['json']}'::JSONB){comma}\n"

sql += """),

target_lessons AS (
    SELECT lesson_id, lesson_name, full_json
    FROM bantrly.lesson l
    JOIN updated_data ud ON l.lesson_name = ud.lesson_name
    WHERE training_module_id = v_training_module_id
      AND lesson_type = v_lesson_type
      AND difficulty_level = v_difficulty
      AND created_by = v_created_by
      AND created_by_role = v_role
),

-- 1. Update lesson_content keys
update_content AS (
  UPDATE bantrly.lesson_content lc
  SET content_value = CASE 
    WHEN content_key = 'topic' THEN ud.topic
    WHEN content_key = 'user_side' THEN ud.user_side
    WHEN content_key = 'ai_side' THEN ud.ai_side
    WHEN content_key = 'content' THEN ud.content_val
    WHEN content_key = 'example_topic' THEN ud.ex_topic
    WHEN content_key = 'example_user_side' THEN ud.ex_user
    WHEN content_key = 'example_ai_side' THEN ud.ex_ai
  END,
  updated_at = NOW()
  FROM target_lessons tl
  JOIN updated_data ud ON tl.lesson_name = ud.lesson_name
  WHERE lc.lesson_id = tl.lesson_id
    AND lc.content_key IN ('topic', 'user_side', 'ai_side', 'content', 'example_topic', 'example_user_side', 'example_ai_side')
  RETURNING lc.lesson_id
),

-- 2. Update lesson_version_new JSON
update_version AS (
  UPDATE bantrly.lesson_version_new lvn
  SET content = tl.full_json,
      created_at = NOW()
  FROM target_lessons tl
  WHERE lvn.lesson_id = tl.lesson_id
    AND lvn.is_latest = true
  RETURNING lvn.lesson_id
)

SELECT 
  (SELECT COUNT(*) FROM target_lessons) AS lessons_found,
  (SELECT COUNT(*) FROM update_content) AS content_rows_updated,
  (SELECT COUNT(*) FROM update_version) AS versions_updated;

END $$;

COMMIT;
"""

output_path = r"c:\Users\Sukesh\Desktop\New SQL Data\scratch\generate_update_sql.sql"
with open(output_path, 'w', encoding='utf-8') as f:
    f.write(sql)
print("SQL generated successfully.")
