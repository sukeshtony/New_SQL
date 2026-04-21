BEGIN;

WITH keyword_updates AS (
    SELECT *
    FROM (VALUES
        ('A Fire Station Visit', 'emergency, tools, protect, rescue, station'),
        ('The School Play', 'rehearse, perform, audience, confident, applaud')
    ) AS v(lesson_name, new_keywords)
),

updated_lesson_content AS (
    UPDATE bantrly.lesson_content lc
    SET 
        content_value = ku.new_keywords,
        updated_at = NOW()
    FROM bantrly.lesson l
    JOIN keyword_updates ku
        ON ku.lesson_name = l.lesson_name
    WHERE lc.lesson_id = l.lesson_id
      AND lc.content_key = 'keywords'
      AND l.difficulty_level = 'EASY'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
    RETURNING l.lesson_name
),

updated_lesson_version AS (
    UPDATE bantrly.lesson_version_new lvn
    SET content = jsonb_set(
            lvn.content::jsonb,
            '{contents,2,content_value}',
            to_jsonb(ku.new_keywords)
        )
    FROM bantrly.lesson l
    JOIN keyword_updates ku
        ON ku.lesson_name = l.lesson_name
    WHERE lvn.lesson_id = l.lesson_id
      AND lvn.is_latest = true
      AND l.difficulty_level = 'EASY'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
    RETURNING lvn.title
)

SELECT 
    (SELECT COUNT(*) FROM updated_lesson_content) AS lesson_content_updated,
    (SELECT COUNT(*) FROM updated_lesson_version) AS lesson_version_updated;

COMMIT;
