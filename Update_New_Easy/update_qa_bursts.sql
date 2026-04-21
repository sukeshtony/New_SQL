BEGIN;

WITH qa_updates AS (
    SELECT *
    FROM (VALUES
        ('How My Actions Affect Others', 
         'Can you think of something you did that had an effect on someone else, whether good or bad?.Why is it important to think about how your choices might affect other people?.What do you do when you realize your actions hurt someone without meaning to?.How do your actions at school affect the people around you?.What is one small thing you do regularly that you think makes someone else''s day better?'),
        ('Learning from Mistakes', 
         'What is a mistake you made that taught you something important?.How do you feel right after making a mistake, and how do you get past that feeling?.Do you think mistakes are always bad? Why or why not?.What is harder: forgiving yourself or forgiving someone else for a mistake?.What would school feel like if everyone was afraid to make mistakes?')
    ) AS v(lesson_name, new_questions)
),

-- 1. Update bantrly.lesson_content for 'rapid_questions'
updated_questions AS (
    UPDATE bantrly.lesson_content lc
    SET 
        content_value = qu.new_questions,
        updated_at = NOW()
    FROM bantrly.lesson l
    JOIN qa_updates qu ON qu.lesson_name = l.lesson_name
    WHERE lc.lesson_id = l.lesson_id
      AND lc.content_key = 'rapid_questions'
      AND l.difficulty_level = 'EASY'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
    RETURNING l.lesson_name
),

-- 2. Update bantrly.lesson_version_new (JSON content)
updated_version AS (
    UPDATE bantrly.lesson_version_new lvn
    SET content = jsonb_set(
            lvn.content::jsonb,
            '{contents,1,content_value}',
            to_jsonb(qu.new_questions)
        )
    FROM bantrly.lesson l
    JOIN qa_updates qu ON qu.lesson_name = l.lesson_name
    WHERE lvn.lesson_id = l.lesson_id
      AND lvn.is_latest = true
      AND l.difficulty_level = 'EASY'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
    RETURNING lvn.title
)

SELECT 
    (SELECT COUNT(*) FROM updated_questions) AS questions_updated,
    (SELECT COUNT(*) FROM updated_version) AS versions_updated;

COMMIT;
