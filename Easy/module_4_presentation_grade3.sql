-- =====================================================
-- Module 4: Informative Presentation - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: e9f70a86-834f-4f3c-aa92-7bbd98e9ad72
-- =====================================================

DO $$
DECLARE
  v_custom_version_id UUID := '6b135adf-fbba-433b-9516-355f970801e4';
  v_learning_path_id UUID := 'ffd44181-68cd-4ac8-9a85-e66adc2d7baa';
  v_lesson_id UUID;
BEGIN
  -- Create learning_path_version if it doesn't exist
  IF NOT EXISTS (SELECT 1 FROM bantrly.learning_path_version WHERE version_id = v_custom_version_id) THEN
    INSERT INTO bantrly.learning_path_version (
      version_id, learning_path_id, version_name, version_description,
      version_number, is_active, grade, section, created_on, created_by,
      created_by_role, is_custom, difficulty_level, school_id
    ) VALUES (
      v_custom_version_id, v_learning_path_id, 'Grade 3 Easy - Comprehensive Path (240 Lessons)',
      'Grade 3 Easy - Unified learning path containing all 8 modules (240 lessons)',
      (SELECT COALESCE(MAX(version_number), 0) + 1 FROM bantrly.learning_path_version WHERE learning_path_id = v_learning_path_id),
      true, 3, NULL, NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
      'TEACHER', true, 'EASY', 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266'
    );
  END IF;

  -- Lesson 1: My Favorite Animal
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Favorite Animal', '3SL4 (94%) PRIMARY | 3L6 (85%) SECONDARY | 3L1 (82%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Share your favorite animal and explain what makes it special.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say which animal is your favorite.Describe one thing it looks like.Mention something interesting it can do.End with why you chose this animal', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Favorite Animal',
    '{"lesson_name": "My Favorite Animal", "lesson_description": "3SL4 (94%) PRIMARY | 3L6 (85%) SECONDARY | 3L1 (82%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Share your favorite animal and explain what makes it special."}, {"content_key": "preparation_guidelines", "content_value": "Say which animal is your favorite.Describe one thing it looks like.Mention something interesting it can do.End with why you chose this animal"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 5
  );

  -- Lesson 2: What I Did This Weekend
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Did This Weekend', '3SL4 (93%) PRIMARY | 3L6 (85%) SECONDARY | 3L1 (82%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/52.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Tell what you did over the weekend and how it felt.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say where you were or what you did.Describe one detail about that activity.Explain how you felt during it.End with whether you would do it again', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Did This Weekend',
    '{"lesson_name": "What I Did This Weekend", "lesson_description": "3SL4 (93%) PRIMARY | 3L6 (85%) SECONDARY | 3L1 (82%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Tell what you did over the weekend and how it felt."}, {"content_key": "preparation_guidelines", "content_value": "Say where you were or what you did.Describe one detail about that activity.Explain how you felt during it.End with whether you would do it again"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 13
  );

  -- Lesson 3: Why We Need Rules in Games
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why We Need Rules in Games', '3SL4 (93%) PRIMARY | 3L6 (84%) SECONDARY | 3L1 (81%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Share why rules help games stay fair and fun for everyone.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what game rules do.Mention one helpful rule.Explain how rules prevent problems.End with a fairness reminder', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why We Need Rules in Games',
    '{"lesson_name": "Why We Need Rules in Games", "lesson_description": "3SL4 (93%) PRIMARY | 3L6 (84%) SECONDARY | 3L1 (81%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Share why rules help games stay fair and fun for everyone."}, {"content_key": "preparation_guidelines", "content_value": "Say what game rules do.Mention one helpful rule.Explain how rules prevent problems.End with a fairness reminder"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 21
  );

  -- Lesson 4: My Favorite Season
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Favorite Season', '3SL4 (92%) PRIMARY | 3L6 (84%) SECONDARY | 3L1 (81%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Describe your favorite season and what you love about it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Name your favorite season.Describe what the weather feels like.Mention one activity you love in that season.End with why this season beats the rest', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Favorite Season',
    '{"lesson_name": "My Favorite Season", "lesson_description": "3SL4 (92%) PRIMARY | 3L6 (84%) SECONDARY | 3L1 (81%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Describe your favorite season and what you love about it."}, {"content_key": "preparation_guidelines", "content_value": "Name your favorite season.Describe what the weather feels like.Mention one activity you love in that season.End with why this season beats the rest"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 29
  );

  -- Lesson 5: How to Be a Good Listener
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How to Be a Good Listener', '3SL4 (92%) PRIMARY | 3L6 (83%) SECONDARY | 3L1 (80%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what good listening looks like and why it matters.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what a good listener does with their body.Mention what a good listener does with their eyes.Explain why listening helps the speaker.End with one tip anyone can use right away', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How to Be a Good Listener',
    '{"lesson_name": "How to Be a Good Listener", "lesson_description": "3SL4 (92%) PRIMARY | 3L6 (83%) SECONDARY | 3L1 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what good listening looks like and why it matters."}, {"content_key": "preparation_guidelines", "content_value": "Say what a good listener does with their body.Mention what a good listener does with their eyes.Explain why listening helps the speaker.End with one tip anyone can use right away"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 37
  );

  -- Lesson 6: Something I Am Good At
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Am Good At', '3SL4 (92%) PRIMARY | 3L6 (83%) SECONDARY | 3L1 (80%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Share a skill or talent you have and how you got better at it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Name the skill or talent.Explain how you learned or practiced it.Describe a moment when it went well.End with what you still want to improve', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Am Good At',
    '{"lesson_name": "Something I Am Good At", "lesson_description": "3SL4 (92%) PRIMARY | 3L6 (83%) SECONDARY | 3L1 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Share a skill or talent you have and how you got better at it."}, {"content_key": "preparation_guidelines", "content_value": "Name the skill or talent.Explain how you learned or practiced it.Describe a moment when it went well.End with what you still want to improve"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 45
  );

  -- Lesson 7: How Recycling Helps the Planet
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Recycling Helps the Planet', '3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3L6 (82%) SECONDARY | 3L1 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/77.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what recycling is and why it matters for the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what recycling means.Name one material that can be recycled.Explain what happens when we don''t recycle.Mention one way students can recycle at school.End with why small actions add up', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Recycling Helps the Planet',
    '{"lesson_name": "How Recycling Helps the Planet", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3L6 (82%) SECONDARY | 3L1 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what recycling is and why it matters for the environment."}, {"content_key": "preparation_guidelines", "content_value": "Say what recycling means.Name one material that can be recycled.Explain what happens when we don''t recycle.Mention one way students can recycle at school.End with why small actions add up"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 53
  );

  -- Lesson 8: Why Sleep Is Important
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Sleep Is Important', '3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3L6 (82%) SECONDARY | 3L1 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why getting enough sleep helps your body and brain.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say how many hours of sleep children need.Describe what happens to your brain when you sleep.Mention one problem that comes from too little sleep.Share one habit that helps you sleep better.End with a reminder of why sleep is worth protecting', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Sleep Is Important',
    '{"lesson_name": "Why Sleep Is Important", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3L6 (82%) SECONDARY | 3L1 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain why getting enough sleep helps your body and brain."}, {"content_key": "preparation_guidelines", "content_value": "Say how many hours of sleep children need.Describe what happens to your brain when you sleep.Mention one problem that comes from too little sleep.Share one habit that helps you sleep better.End with a reminder of why sleep is worth protecting"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 61
  );

  -- Lesson 9: How to Stay Safe Online
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How to Stay Safe Online', '3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (81%) SECONDARY | 3L1 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/43.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Share basic safety rules everyone should follow on the internet.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say why the internet can be unsafe without rules.Mention one thing you should never share online.Explain what to do if something online makes you uncomfortable.Name one way to check if a website is trustworthy.End with a reminder to ask a trusted adult for help', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How to Stay Safe Online',
    '{"lesson_name": "How to Stay Safe Online", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (81%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Share basic safety rules everyone should follow on the internet."}, {"content_key": "preparation_guidelines", "content_value": "Say why the internet can be unsafe without rules.Mention one thing you should never share online.Explain what to do if something online makes you uncomfortable.Name one way to check if a website is trustworthy.End with a reminder to ask a trusted adult for help"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 69
  );

  -- Lesson 10: Why Exercise Matters
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Exercise Matters', '3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (81%) SECONDARY | 3L1 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why physical activity is good for your body and mind.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what exercise does for your heart and muscles.Mention how movement helps your brain focus.Name two types of exercise kids can do anywhere.Explain how exercise affects your mood.End with a simple challenge for your audience', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Exercise Matters',
    '{"lesson_name": "Why Exercise Matters", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (81%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain why physical activity is good for your body and mind."}, {"content_key": "preparation_guidelines", "content_value": "Say what exercise does for your heart and muscles.Mention how movement helps your brain focus.Name two types of exercise kids can do anywhere.Explain how exercise affects your mood.End with a simple challenge for your audience"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 77
  );

  -- Lesson 11: How to Handle a Disagreement
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How to Handle a Disagreement', '3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Share steps for working through a disagreement without fighting.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what usually causes disagreements.Mention why staying calm matters first.Explain what listening to the other person does.Describe how to find a solution both people can accept.End with why working it out is worth the effort', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How to Handle a Disagreement',
    '{"lesson_name": "How to Handle a Disagreement", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Share steps for working through a disagreement without fighting."}, {"content_key": "preparation_guidelines", "content_value": "Say what usually causes disagreements.Mention why staying calm matters first.Explain what listening to the other person does.Describe how to find a solution both people can accept.End with why working it out is worth the effort"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 85
  );

  -- Lesson 12: Why Reading Every Day Helps
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Reading Every Day Helps', '3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the benefits of reading a little bit every single day.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say how daily reading builds vocabulary over time.Mention what reading does for your imagination.Explain how reading improves focus.Name one type of book that might surprise a non-reader.End with a suggestion for when to fit reading into your day', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Reading Every Day Helps',
    '{"lesson_name": "Why Reading Every Day Helps", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the benefits of reading a little bit every single day."}, {"content_key": "preparation_guidelines", "content_value": "Say how daily reading builds vocabulary over time.Mention what reading does for your imagination.Explain how reading improves focus.Name one type of book that might surprise a non-reader.End with a suggestion for when to fit reading into your day"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 93
  );

  -- Lesson 13: How Weather Affects Our Day
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Weather Affects Our Day', '3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how different types of weather change what we do and how we feel.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say how sunny weather affects outdoor plans.Describe what rainy or stormy weather makes people do differently.Mention how extreme heat or cold affects how we dress and move.Explain how weather can change your mood.End with how people prepare for weather changes in advance', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Weather Affects Our Day',
    '{"lesson_name": "How Weather Affects Our Day", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how different types of weather change what we do and how we feel."}, {"content_key": "preparation_guidelines", "content_value": "Say how sunny weather affects outdoor plans.Describe what rainy or stormy weather makes people do differently.Mention how extreme heat or cold affects how we dress and move.Explain how weather can change your mood.End with how people prepare for weather changes in advance"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 101
  );

  -- Lesson 14: What Makes a Good Team
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes a Good Team', '3SL4 (89%) PRIMARY | 3W2 (82%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Share what ingredients make a team work well together.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what the most important part of any team is.Mention what happens when teammates don''t communicate.Explain why every person''s role matters even if it''s small.Describe what a team should do when things go wrong.End with one thing that makes your favorite team great', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes a Good Team',
    '{"lesson_name": "What Makes a Good Team", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (82%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Share what ingredients make a team work well together."}, {"content_key": "preparation_guidelines", "content_value": "Say what the most important part of any team is.Mention what happens when teammates don''t communicate.Explain why every person''s role matters even if it''s small.Describe what a team should do when things go wrong.End with one thing that makes your favorite team great"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 109
  );

  -- Lesson 15: How Plants Make Food
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Plants Make Food', '3SL4 (88%) PRIMARY | 3W2 (82%) SECONDARY | 3L6 (79%) SECONDARY | 3L1 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/86.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how plants use sunlight to make their own food through photosynthesis.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what photosynthesis is in simple terms.Mention the three things a plant needs for photosynthesis.Explain what the plant produces and where it goes.Describe why this process matters for other living things.End with one surprising fact about photosynthesis', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Plants Make Food',
    '{"lesson_name": "How Plants Make Food", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (82%) SECONDARY | 3L6 (79%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how plants use sunlight to make their own food through photosynthesis."}, {"content_key": "preparation_guidelines", "content_value": "Say what photosynthesis is in simple terms.Mention the three things a plant needs for photosynthesis.Explain what the plant produces and where it goes.Describe why this process matters for other living things.End with one surprising fact about photosynthesis"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 117
  );

  -- Lesson 16: How the Water Cycle Works
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How the Water Cycle Works', '3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/62.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the water cycle and why it keeps Earth''s water moving.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Name the four stages of the water cycle.Explain what evaporation is and where it happens.Describe how clouds form from water vapor.Say what causes rain or snow to fall back to Earth.Mention one way the water cycle affects daily life.End with why the cycle never really stops', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Water Cycle Works',
    '{"lesson_name": "How the Water Cycle Works", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the water cycle and why it keeps Earth''s water moving."}, {"content_key": "preparation_guidelines", "content_value": "Name the four stages of the water cycle.Explain what evaporation is and where it happens.Describe how clouds form from water vapor.Say what causes rain or snow to fall back to Earth.Mention one way the water cycle affects daily life.End with why the cycle never really stops"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 125
  );

  -- Lesson 17: Why Bees Are Important
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Bees Are Important', '3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why bees matter to ecosystems and our food supply.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what bees do when they visit flowers.Explain the word pollination and why it matters.Mention which foods depend on bee pollination.Describe one threat bees face today.End with one thing people can do to help bees', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Bees Are Important',
    '{"lesson_name": "Why Bees Are Important", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain why bees matter to ecosystems and our food supply."}, {"content_key": "preparation_guidelines", "content_value": "Say what bees do when they visit flowers.Explain the word pollination and why it matters.Mention which foods depend on bee pollination.Describe one threat bees face today.End with one thing people can do to help bees"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 133
  );

  -- Lesson 18: How the Human Heart Works
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How the Human Heart Works', '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/69.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what the heart does and why it is essential to staying alive.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what the heart is made of and roughly how big it is.Explain what the heart does all day without stopping.Describe the path blood takes through the heart.Mention what you can do to keep your heart healthy.End with one fact about the heart that surprises most people', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Human Heart Works',
    '{"lesson_name": "How the Human Heart Works", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what the heart does and why it is essential to staying alive."}, {"content_key": "preparation_guidelines", "content_value": "Say what the heart is made of and roughly how big it is.Explain what the heart does all day without stopping.Describe the path blood takes through the heart.Mention what you can do to keep your heart healthy.End with one fact about the heart that surprises most people"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 141
  );

  -- Lesson 19: What Causes Seasons to Change
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Causes Seasons to Change', '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why Earth has four seasons and what causes them to change.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain that seasons are caused by Earth''s tilt, not its distance from the sun.Describe what happens to sunlight during summer vs. winter.Mention which countries do not have four seasons and why.Explain why the Northern and Southern Hemispheres have opposite seasons.End with one way the changing seasons affect animals and plants', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Causes Seasons to Change',
    '{"lesson_name": "What Causes Seasons to Change", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain why Earth has four seasons and what causes them to change."}, {"content_key": "preparation_guidelines", "content_value": "Explain that seasons are caused by Earth''s tilt, not its distance from the sun.Describe what happens to sunlight during summer vs. winter.Mention which countries do not have four seasons and why.Explain why the Northern and Southern Hemispheres have opposite seasons.End with one way the changing seasons affect animals and plants"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 149
  );

  -- Lesson 20: How Gravity Works
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Gravity Works', '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/23.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what gravity is and how it shapes everything around us.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define gravity in simple, clear terms.Explain why we stay on the ground instead of floating.Mention how gravity affects the moon and Earth''s oceans.Describe what would happen if gravity disappeared for one minute.End with one example of gravity we experience every single day', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Gravity Works',
    '{"lesson_name": "How Gravity Works", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what gravity is and how it shapes everything around us."}, {"content_key": "preparation_guidelines", "content_value": "Define gravity in simple, clear terms.Explain why we stay on the ground instead of floating.Mention how gravity affects the moon and Earth''s oceans.Describe what would happen if gravity disappeared for one minute.End with one example of gravity we experience every single day"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 157
  );

  -- Lesson 21: Why Endangered Animals Need Protection
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Endangered Animals Need Protection', '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what makes an animal endangered and why protecting them matters.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define what it means for a species to be endangered.Name two main reasons animals become endangered.Explain how losing one species can affect others in its ecosystem.Mention one animal that was saved from extinction through protection efforts.End with one action students can take to help protect wildlife', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Endangered Animals Need Protection',
    '{"lesson_name": "Why Endangered Animals Need Protection", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what makes an animal endangered and why protecting them matters."}, {"content_key": "preparation_guidelines", "content_value": "Define what it means for a species to be endangered.Name two main reasons animals become endangered.Explain how losing one species can affect others in its ecosystem.Mention one animal that was saved from extinction through protection efforts.End with one action students can take to help protect wildlife"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 165
  );

  -- Lesson 22: How Sound Travels
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Sound Travels', '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what sound is and how it moves from one place to another.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define sound as vibrations moving through matter.Explain what happens to air particles when something makes a sound.Describe how sound travels differently through air, water, and solid objects.Mention why sound gets quieter the farther you are from the source.End with one everyday example that shows how sound travels', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Sound Travels',
    '{"lesson_name": "How Sound Travels", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what sound is and how it moves from one place to another."}, {"content_key": "preparation_guidelines", "content_value": "Define sound as vibrations moving through matter.Explain what happens to air particles when something makes a sound.Describe how sound travels differently through air, water, and solid objects.Mention why sound gets quieter the farther you are from the source.End with one everyday example that shows how sound travels"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 173
  );

  -- Lesson 23: What Makes a Community Strong
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes a Community Strong', '3SL4 (88%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/96.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the qualities that make a community work well together.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define what a community is.Mention two things people in a strong community do for each other.Explain why trust matters between community members.Describe what can weaken a community over time.End with one thing a third grader can do to make their community stronger', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes a Community Strong',
    '{"lesson_name": "What Makes a Community Strong", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the qualities that make a community work well together."}, {"content_key": "preparation_guidelines", "content_value": "Define what a community is.Mention two things people in a strong community do for each other.Explain why trust matters between community members.Describe what can weaken a community over time.End with one thing a third grader can do to make their community stronger"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 181
  );

  -- Lesson 24: How the Brain Learns New Things
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How the Brain Learns New Things', '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L3 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what happens inside the brain when you learn something new.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what neurons are and how they connect.Explain what happens to those connections when you practice something.Describe what ''forgetting'' means at the brain level.Mention how sleep helps the brain store what it learned.Explain why making mistakes is actually helpful for the brain.End with one strategy that helps the brain learn faster', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Brain Learns New Things',
    '{"lesson_name": "How the Brain Learns New Things", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L3 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what happens inside the brain when you learn something new."}, {"content_key": "preparation_guidelines", "content_value": "Say what neurons are and how they connect.Explain what happens to those connections when you practice something.Describe what ''forgetting'' means at the brain level.Mention how sleep helps the brain store what it learned.Explain why making mistakes is actually helpful for the brain.End with one strategy that helps the brain learn faster"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 189
  );

  -- Lesson 25: Why the Ocean Matters to All of Us
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why the Ocean Matters to All of Us', '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L3 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the ocean''s role in keeping Earth''s climate and ecosystems healthy.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what percentage of Earth''s surface the ocean covers.Explain how the ocean regulates Earth''s temperature.Describe how ocean currents affect weather patterns on land.Mention the role the ocean plays in producing oxygen.Explain one major threat the ocean faces today.End with why protecting the ocean matters even if you live far from the coast', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why the Ocean Matters to All of Us',
    '{"lesson_name": "Why the Ocean Matters to All of Us", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L3 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the ocean''s role in keeping Earth''s climate and ecosystems healthy."}, {"content_key": "preparation_guidelines", "content_value": "Say what percentage of Earth''s surface the ocean covers.Explain how the ocean regulates Earth''s temperature.Describe how ocean currents affect weather patterns on land.Mention the role the ocean plays in producing oxygen.Explain one major threat the ocean faces today.End with why protecting the ocean matters even if you live far from the coast"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 197
  );

  -- Lesson 26: How Voting Shapes a Community
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Voting Shapes a Community', '3SL4 (88%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/25.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how voting works and why participating in it matters.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define voting and why it is used to make group decisions.Explain what happens when a vote is very close.Describe why every vote matters even in a large group.Mention one type of decision that is made through voting in schools or communities.Explain what it means to be an informed voter.End with what might happen to a community where people stopped voting', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Voting Shapes a Community',
    '{"lesson_name": "How Voting Shapes a Community", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how voting works and why participating in it matters."}, {"content_key": "preparation_guidelines", "content_value": "Define voting and why it is used to make group decisions.Explain what happens when a vote is very close.Describe why every vote matters even in a large group.Mention one type of decision that is made through voting in schools or communities.Explain what it means to be an informed voter.End with what might happen to a community where people stopped voting"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 205
  );

  -- Lesson 27: What Scientists Do When They Are Wrong
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Scientists Do When They Are Wrong', '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how scientists respond to results that contradict what they expected.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say why being wrong is a normal part of science.Explain what scientists do first when an experiment fails.Describe how peer review helps catch mistakes.Mention a famous scientific idea that was changed or improved over time.Explain why admitting a mistake makes science stronger, not weaker.End with what this approach teaches us about learning in general', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Scientists Do When They Are Wrong',
    '{"lesson_name": "What Scientists Do When They Are Wrong", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how scientists respond to results that contradict what they expected."}, {"content_key": "preparation_guidelines", "content_value": "Say why being wrong is a normal part of science.Explain what scientists do first when an experiment fails.Describe how peer review helps catch mistakes.Mention a famous scientific idea that was changed or improved over time.Explain why admitting a mistake makes science stronger, not weaker.End with what this approach teaches us about learning in general"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 213
  );

  -- Lesson 28: How Technology Changes the Way We Communicate
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Technology Changes the Way We Communicate', '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/65.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how technology has changed the way people share ideas and stay connected.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Compare how people communicated before modern technology existed.Explain one way digital communication has made the world smaller.Mention one problem that has come with increased digital communication.Describe how schools have changed because of communication technology.Explain why face-to-face communication still matters despite technology.End with one question students should ask themselves about their own technology habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Technology Changes the Way We Communicate',
    '{"lesson_name": "How Technology Changes the Way We Communicate", "lesson_description": "3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how technology has changed the way people share ideas and stay connected."}, {"content_key": "preparation_guidelines", "content_value": "Compare how people communicated before modern technology existed.Explain one way digital communication has made the world smaller.Mention one problem that has come with increased digital communication.Describe how schools have changed because of communication technology.Explain why face-to-face communication still matters despite technology.End with one question students should ask themselves about their own technology habits"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 221
  );

  -- Lesson 29: Why Biodiversity Matters
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Biodiversity Matters', '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/94.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what biodiversity is and why having many types of living things on Earth is important.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define biodiversity and give one example of it in nature.Explain how a diverse ecosystem is more stable than a simple one.Describe what can happen to a food chain when one species disappears.Mention one place on Earth with especially high biodiversity and why it is valued.Explain one threat to biodiversity caused by human activity.End with why protecting biodiversity protects people too', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Biodiversity Matters',
    '{"lesson_name": "Why Biodiversity Matters", "lesson_description": "3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what biodiversity is and why having many types of living things on Earth is important."}, {"content_key": "preparation_guidelines", "content_value": "Define biodiversity and give one example of it in nature.Explain how a diverse ecosystem is more stable than a simple one.Describe what can happen to a food chain when one species disappears.Mention one place on Earth with especially high biodiversity and why it is valued.Explain one threat to biodiversity caused by human activity.End with why protecting biodiversity protects people too"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 229
  );

  -- Lesson 30: How Our Choices Affect Others
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Our Choices Affect Others', '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L3 (78%) SECONDARY',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how individual choices ripple outward to affect people and places we may never know.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Give one example of a small personal choice that has a larger impact.Explain how the things we buy are connected to people who made them.Describe how environmental choices today affect future generations.Mention how the internet connects personal choices to global consequences.Explain why thinking beyond yourself is a skill worth building.End with one question that helps you think about the wider impact of your daily decisions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Our Choices Affect Others',
    '{"lesson_name": "How Our Choices Affect Others", "lesson_description": "3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L3 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how individual choices ripple outward to affect people and places we may never know."}, {"content_key": "preparation_guidelines", "content_value": "Give one example of a small personal choice that has a larger impact.Explain how the things we buy are connected to people who made them.Describe how environmental choices today affect future generations.Mention how the internet connects personal choices to global consequences.Explain why thinking beyond yourself is a skill worth building.End with one question that helps you think about the wider impact of your daily decisions"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'EASY', 237
  );

END $$;
