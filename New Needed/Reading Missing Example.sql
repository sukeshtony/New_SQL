BEGIN;

WITH
-- M1 - Reading Paragraph: insert missing content (30 lesson(s))
m1_data AS (
    SELECT * FROM (VALUES
        ('The Seat She Didn''t Expect', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Moment Before', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('A Rainy Recess', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('Asking', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Thing She Didn''t Know She Could Do', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('Noticing', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Practice That Finally Worked', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('What He Did Without Thinking', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('She Changed Her Mind', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Group She Hadn''t Expected', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),

        ('The Question She Asked a Stranger', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Classmate He''d Had Wrong', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Afternoon in the Library', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('Finishing Alone', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Moment She Felt She Belonged', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('Losing Well', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('What She Heard in Her Own Voice', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Friendship That Started With a Disagreement', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Thing She Made', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('What Her Teacher Said', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),

        ('A Day That Went Better Than He Thought', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('When She Found the Right Words', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('Understanding Something He''d Been Missing', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('Ready', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('The Decision She Made Herself', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('A New Way of Seeing the Room', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('Letting Someone In', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('What She Found Out She Loved', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('What She Carried Home', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.'),
        ('Saying the True Thing', NULL, 'Jamal forgot his lunch and felt embarrassed. He sat quietly at his desk, hoping no one would notice. His friend Priya saw him and offered to share her sandwich. They ate together and talked about their morning. Jamal smiled and said thank you. After class, he drew a small thank-you note for her. By the end of the day, he felt cared for. He learned that a small act of kindness can turn a hard day around.')
    ) AS v(lesson_name, passage, example)
),

m1_example_ins AS (
    INSERT INTO bantrly.lesson_content
        (content_id, lesson_id, content_key, content_value, created_at, updated_at)
    SELECT
        gen_random_uuid(),
        l.lesson_id,
        'example',
        d.example,
        NOW(),
        NOW()
    FROM bantrly.lesson l
    JOIN m1_data d 
        ON d.lesson_name = l.lesson_name
    WHERE l.difficulty_level = 'HARD'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
      AND d.example IS NOT NULL
      AND NOT EXISTS (
          SELECT 1
          FROM bantrly.lesson_content lc
          WHERE lc.lesson_id = l.lesson_id
            AND lc.content_key = 'example'
      )
    RETURNING lesson_id
),

m1_version_upd AS (
    UPDATE bantrly.lesson_version_new lvn
    SET content = jsonb_set(
            lvn.content::jsonb,
            '{contents}',
            COALESCE(lvn.content::jsonb->'contents', '[]'::jsonb)
            ||
            CASE
                WHEN d.example IS NOT NULL
                 AND NOT (
                    COALESCE(lvn.content::jsonb->'contents', '[]'::jsonb)
                    @> '[{"content_key":"example"}]'::jsonb
                 )
                THEN jsonb_build_array(
                    jsonb_build_object(
                        'content_key', 'example',
                        'content_value', d.example
                    )
                )
                ELSE '[]'::jsonb
            END,
            true
        )::text
    FROM bantrly.lesson l
    JOIN m1_data d 
        ON d.lesson_name = l.lesson_name
    WHERE lvn.lesson_id = l.lesson_id
      AND lvn.is_latest = true
      AND l.difficulty_level = 'HARD'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
    RETURNING lvn.title
)

SELECT
    (SELECT COUNT(*) FROM m1_example_ins) AS m1_example_inserted,
    (SELECT COUNT(*) FROM m1_version_upd) AS m1_versions_updated;

COMMIT;