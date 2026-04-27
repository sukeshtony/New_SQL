BEGIN;

WITH
-- M4 - Presentation: insert missing content (30 lesson(s))
m4_data AS (
    SELECT * FROM (VALUES
        ('How the Moon Shapes Earth''s Oceans', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('Why Maps Can Be Misleading', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Authors Build Characters', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('What Stars Are Made Of and Why They Shine', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('What Makes a Community Resilient', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Animals Communicate Without Words', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Plate Tectonics Shapes Earth''s Surface', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('Why Equal and Fair Are Not the Same', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Memory Works in the Brain', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Democracy Functions and Why It''s Fragile', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Migration Has Shaped Nations', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Scientists Use Evidence to Change Their Minds', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('What Biodiversity Does for Ecosystems', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Authors Use Structure to Shape Meaning', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Climate Has Changed Over Earth''s History', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Perspective Is Built Into Texts', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Trade-offs Shape Every Decision', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Civic Participation Beyond Voting Shapes Society', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How the Human Body Responds to Exercise', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How the Same Event Can Be Remembered Differently by Different People', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Language Has Shaped History', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Economic Inequality Affects Education', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Stories Are Used to Build and Challenge Power', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Individuals Have Changed the Direction of History', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Systems Produce Unintended Consequences', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Reading Changes How We Think', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('What Justice Requires — Beyond Following Rules', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Scientific Models Are Built and Revised', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('Why Freedom of Expression Has Limits — and Why Those Limits Are Hard to Draw', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!'),
        ('How Communities Repair After Conflict', NULL, NULL, 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!')
    ) AS v(lesson_name, topic_overview, preparation_guidelines, example_heading, example_content)
),

m4_exampleheading_ins AS (
    INSERT INTO bantrly.lesson_content
        (content_id, lesson_id, content_key, content_value, created_at, updated_at)
    SELECT
        gen_random_uuid(),
        l.lesson_id,
        'example_heading',
        d.example_heading,
        NOW(),
        NOW()
    FROM bantrly.lesson l
    JOIN m4_data d
        ON d.lesson_name = l.lesson_name
    WHERE l.difficulty_level = 'HARD'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
      AND d.example_heading IS NOT NULL
      AND NOT EXISTS (
          SELECT 1
          FROM bantrly.lesson_content lc
          WHERE lc.lesson_id = l.lesson_id
            AND lc.content_key = 'example_heading'
      )
    RETURNING lesson_id
),

m4_examplecontent_ins AS (
    INSERT INTO bantrly.lesson_content
        (content_id, lesson_id, content_key, content_value, created_at, updated_at)
    SELECT
        gen_random_uuid(),
        l.lesson_id,
        'example_content',
        d.example_content,
        NOW(),
        NOW()
    FROM bantrly.lesson l
    JOIN m4_data d
        ON d.lesson_name = l.lesson_name
    WHERE l.difficulty_level = 'HARD'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
      AND d.example_content IS NOT NULL
      AND NOT EXISTS (
          SELECT 1
          FROM bantrly.lesson_content lc
          WHERE lc.lesson_id = l.lesson_id
            AND lc.content_key = 'example_content'
      )
    RETURNING lesson_id
),

m4_version_upd AS (
    UPDATE bantrly.lesson_version_new lvn
    SET content = jsonb_set(
        lvn.content::jsonb,
        '{contents}',
        COALESCE(lvn.content::jsonb->'contents', '[]'::jsonb)

        ||

        CASE
            WHEN d.example_heading IS NOT NULL
             AND NOT (
                COALESCE(lvn.content::jsonb->'contents', '[]'::jsonb)
                @> '[{"content_key":"example_heading"}]'::jsonb
             )
            THEN jsonb_build_array(
                jsonb_build_object(
                    'content_key', 'example_heading',
                    'content_value', d.example_heading
                )
            )
            ELSE '[]'::jsonb
        END

        ||

        CASE
            WHEN d.example_content IS NOT NULL
             AND NOT (
                COALESCE(lvn.content::jsonb->'contents', '[]'::jsonb)
                @> '[{"content_key":"example_content"}]'::jsonb
             )
            THEN jsonb_build_array(
                jsonb_build_object(
                    'content_key', 'example_content',
                    'content_value', d.example_content
                )
            )
            ELSE '[]'::jsonb
        END,
        true
    )::text
    FROM bantrly.lesson l
    JOIN m4_data d
        ON d.lesson_name = l.lesson_name
    WHERE lvn.lesson_id = l.lesson_id
      AND lvn.is_latest = true
      AND l.difficulty_level = 'HARD'
      AND l.created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
      AND l.created_by_role = 'TEACHER'
    RETURNING lvn.title
)

SELECT
    (SELECT COUNT(*) FROM m4_exampleheading_ins) AS m4_exampleheading_inserted,
    (SELECT COUNT(*) FROM m4_examplecontent_ins) AS m4_examplecontent_inserted,
    (SELECT COUNT(*) FROM m4_version_upd) AS m4_versions_updated;

COMMIT;