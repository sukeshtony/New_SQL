BEGIN;

WITH presentation_updates AS (
    SELECT *
    FROM (VALUES
        ('What I Did This Weekend', 
         'Say where you were or what you did.Describe one detail about that activity.Explain how you felt during the activity.End with whether you would do it again')
    ) AS v(lesson_name, new_guidelines)
),

-- 1. Update bantrly.lesson_content for 'preparation_guidelines'
updated_guidelines AS (
    UPDATE bantrly.lesson_content lc
    SET 
        content_value = pu.new_guidelines,
        updated_at = NOW()
    FROM bantrly.lesson l
    JOIN presentation_updates pu ON pu.lesson_name = l.lesson_name
    WHERE lc.lesson_id = l.lesson_id
      AND lc.content_key = 'preparation_guidelines'
      AND l.difficulty_level = 'EASY'
    RETURNING l.lesson_name
),

-- 2. Update bantrly.lesson_version_new (JSON content)
updated_version AS (
    UPDATE bantrly.lesson_version_new lvn
    SET content = jsonb_set(
            lvn.content::jsonb,
            '{contents,1,content_value}',
            to_jsonb(pu.new_guidelines)
        )
    FROM bantrly.lesson l
    JOIN presentation_updates pu ON pu.lesson_name = l.lesson_name
    WHERE lvn.lesson_id = l.lesson_id
      AND lvn.is_latest = true
      AND l.difficulty_level = 'EASY'
    RETURNING lvn.title
)

SELECT 
    (SELECT COUNT(*) FROM updated_guidelines) AS guidelines_updated,
    (SELECT COUNT(*) FROM updated_version) AS versions_updated;

COMMIT;
