BEGIN;

WITH poem_updates AS (
    SELECT *
    FROM (VALUES
        ('Listen Up', 
         'When someone speaks, I turn and hear, I nod my head and lean in near, Because their words are worth a hear.'),
        ('The Quiet Moment', 
         'Sometimes the world moves fast and loud, So I close my eyes behind the crowd, And breathe until my mind''s not loud.')
    ) AS v(lesson_name, new_poem)
),

-- 1. Update Poems in lesson_content
updated_poems AS (
    UPDATE bantrly.lesson_content lc
    SET 
        content_value = pu.new_poem,
        updated_at = NOW()
    FROM bantrly.lesson l
    JOIN poem_updates pu ON pu.lesson_name = l.lesson_name
    WHERE lc.lesson_id = l.lesson_id
      AND lc.content_key = 'assigned_text'
      AND l.difficulty_level = 'EASY'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
    RETURNING l.lesson_name
),

-- 2. Update lesson_version_new JSON
updated_version AS (
    UPDATE bantrly.lesson_version_new lvn
    SET content = jsonb_set(
            lvn.content::jsonb,
            '{contents,1,content_value}',
            to_jsonb(pu.new_poem)
        )
    FROM bantrly.lesson l
    JOIN poem_updates pu ON pu.lesson_name = l.lesson_name
    WHERE lvn.lesson_id = l.lesson_id
      AND lvn.is_latest = true
      AND l.difficulty_level = 'EASY'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
    RETURNING lvn.title
)

SELECT 
    (SELECT COUNT(*) FROM updated_poems) AS poems_updated,
    (SELECT COUNT(*) FROM updated_version) AS versions_updated;

COMMIT;
