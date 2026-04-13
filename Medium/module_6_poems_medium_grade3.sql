-- =====================================================
-- Module 6: Poems - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: 0a1c0321-81a1-465f-a8d1-11beec18c591
-- Difficulty: MEDIUM
-- =====================================================

DO $$
DECLARE
  v_custom_version_id UUID := 'f8137e5c-7cb1-4e46-8472-ecc80499846e';
  v_learning_path_id UUID := 'ffd44181-68cd-4ac8-9a85-e66adc2d7baa';
  v_lesson_id UUID;
BEGIN
  -- Create learning_path_version if it doesn''t exist
  IF NOT EXISTS (SELECT 1 FROM bantrly.learning_path_version WHERE version_id = v_custom_version_id) THEN
    INSERT INTO bantrly.learning_path_version (
      version_id, learning_path_id, version_name, version_description,
      version_number, is_active, grade, section, created_on, created_by,
      created_by_role, is_custom, difficulty_level, school_id
    ) VALUES (
      v_custom_version_id, v_learning_path_id, 'Grade 3 Medium - Comprehensive Path (240 Lessons)',
      'Grade 3 Medium - Unified learning path containing all 8 modules (240 lessons)',
      (SELECT COALESCE(MAX(version_number), 0) + 1 FROM bantrly.learning_path_version WHERE learning_path_id = v_learning_path_id),
      true, 3, NULL, NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
      'TEACHER', true, 'MEDIUM', 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266'
    );
  END IF;

  -- Lesson 1: The First Try
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The First Try', '3SL4 (92%) PRIMARY | 3SL6 (88%) PRIMARY | 3L3 (81%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The blank page waits -- I pick up my pen,
the first word is hardest, but once it begins,
the rest of the story rushes in.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The First Try',
    '{"lesson_name": "The First Try", "lesson_description": "3SL4 (92%) PRIMARY | 3SL6 (88%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The blank page waits \u2014 I pick up my pen,\nthe first word is hardest, but once it begins,\nthe rest of the story rushes in."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 6
  );

  -- Lesson 2: After the Rain
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'After the Rain', '3SL4 (92%) PRIMARY | 3SL6 (88%) PRIMARY | 3L3 (80%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The storm blew through and bent every tree,
but after the rain the air smelled clean and free,
and a rainbow curved just for me to see.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'After the Rain',
    '{"lesson_name": "After the Rain", "lesson_description": "3SL4 (92%) PRIMARY | 3SL6 (88%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The storm blew through and bent every tree,\nbut after the rain the air smelled clean and free,\nand a rainbow curved just for me to see."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 14
  );

  -- Lesson 3: My Best Friend
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Best Friend', '3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'You know when I''m quiet that something''s not right,
you sit close beside me and don''t ask why,
some friendships don''t need a single reply.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Best Friend',
    '{"lesson_name": "My Best Friend", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "You know when I''m quiet that something''s not right,\nyou sit close beside me and don''t ask why,\nsome friendships don''t need a single reply."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 22
  );

  -- Lesson 4: Morning Light
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Morning Light', '3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The window glows gold before school begins,
I pack what I need and breathe the cool air in,
today is a page I haven''t written yet.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Morning Light',
    '{"lesson_name": "Morning Light", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The window glows gold before school begins,\nI pack what I need and breathe the cool air in,\ntoday is a page I haven''t written yet."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 30
  );

  -- Lesson 5: The Mistake
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Mistake', '3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I said the wrong thing and felt my face go red,
but I went back and changed what I''d said,
fixing a mistake means the weight lifts from your head.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Mistake',
    '{"lesson_name": "The Mistake", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I said the wrong thing and felt my face go red,\nbut I went back and changed what I''d said,\nfixing a mistake means the weight lifts from your head."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 38
  );

  -- Lesson 6: Autumn Leaves
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Autumn Leaves', '3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (81%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/48.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Red and gold, they let go of the branch,
not because they''re lost, but because it''s their chance --
even falling can look like a dance.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Autumn Leaves',
    '{"lesson_name": "Autumn Leaves", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "Red and gold, they let go of the branch,\nnot because they''re lost, but because it''s their chance \u2014\neven falling can look like a dance."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 46
  );

  -- Lesson 7: Two Feelings
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Two Feelings', '3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/38.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I''m nervous and excited -- they feel the same,
my heart beats fast before I hear my name,
and brave is just scared with a different frame.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Two Feelings',
    '{"lesson_name": "Two Feelings", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I''m nervous and excited \u2014 they feel the same,\nmy heart beats fast before I hear my name,\nand brave is just scared with a different frame."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 54
  );

  -- Lesson 8: The Book I Couldn''t Close
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Book I Couldn''t Close', '3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/79.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Long past bedtime, one more page,
the story pulled me into its world like a cage,
I didn''t want to leave -- I was living on its stage.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Book I Couldn''t Close',
    '{"lesson_name": "The Book I Couldn''t Close", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "Long past bedtime, one more page,\nthe story pulled me into its world like a cage,\nI didn''t want to leave \u2014 I was living on its stage."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 62
  );

  -- Lesson 9: Practicing
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Practicing', '3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/27.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The first ten tries sound nothing like the last,
between the clumsy start and the fast
is the quiet middle where learning gets amassed.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Practicing',
    '{"lesson_name": "Practicing", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The first ten tries sound nothing like the last,\nbetween the clumsy start and the fast\nis the quiet middle where learning gets amassed."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 70
  );

  -- Lesson 10: Winter Morning
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Winter Morning', '3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/94.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The ground wore white before the sun arrived,
each footprint pressed a path through frozen grass,
and breath came out in clouds that didn''t last.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Winter Morning',
    '{"lesson_name": "Winter Morning", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The ground wore white before the sun arrived,\neach footprint pressed a path through frozen grass,\nand breath came out in clouds that didn''t last."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 78
  );

  -- Lesson 11: The Hard Question
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Hard Question', '3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/36.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I raised my hand even though I wasn''t sure,
the question sat inside me like a closed door,
and asking it cracked the room open more.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Hard Question',
    '{"lesson_name": "The Hard Question", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I raised my hand even though I wasn''t sure,\nthe question sat inside me like a closed door,\nand asking it cracked the room open more."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 86
  );

  -- Lesson 12: Listening
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Listening', '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I used to wait for my turn to speak,
now I listen all the way to the deep,
and find the things I used to miss asleep.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening',
    '{"lesson_name": "Listening", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I used to wait for my turn to speak,\nnow I listen all the way to the deep,\nand find the things I used to miss asleep."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 94
  );

  -- Lesson 13: The New Student
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The New Student', '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'She stood at the door with nowhere to go,
I moved my bag over -- she sat in the row,
now she''s the best part of science, I know.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The New Student',
    '{"lesson_name": "The New Student", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "She stood at the door with nowhere to go,\nI moved my bag over \u2014 she sat in the row,\nnow she''s the best part of science, I know."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 102
  );

  -- Lesson 14: Spring Arrives
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Spring Arrives', '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/73.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The mud smells alive after months of cold,
the first green shoots push through soil and hold,
spring doesn''t ask permission -- it''s bold.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Spring Arrives',
    '{"lesson_name": "Spring Arrives", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The mud smells alive after months of cold,\nthe first green shoots push through soil and hold,\nspring doesn''t ask permission \u2014 it''s bold."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 110
  );

  -- Lesson 15: Reading Together
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Reading Together', '3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (81%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'When we read aloud, the words belong to all,
my voice carries further in that hall,
together we hold the story -- we don''t let it fall.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reading Together',
    '{"lesson_name": "Reading Together", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "When we read aloud, the words belong to all,\nmy voice carries further in that hall,\ntogether we hold the story \u2014 we don''t let it fall."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 118
  );

  -- Lesson 16: The Long Way Around
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Long Way Around', '3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/62.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The shortcut was faster -- I took the long trail,
I missed where I was going but found the detail,
sometimes the slow road is the one that doesn''t fail.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Long Way Around',
    '{"lesson_name": "The Long Way Around", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The shortcut was faster \u2014 I took the long trail,\nI missed where I was going but found the detail,\nsometimes the slow road is the one that doesn''t fail."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 126
  );

  -- Lesson 17: What I Keep
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Keep', '3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I forget most Tuesdays -- but I keep the smell
of rain on hot pavement and the dinner bell,
some things stay forever without anyone to tell.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Keep',
    '{"lesson_name": "What I Keep", "lesson_description": "3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I forget most Tuesdays \u2014 but I keep the smell\nof rain on hot pavement and the dinner bell,\nsome things stay forever without anyone to tell."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 134
  );

  -- Lesson 18: Growing Slowly
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Growing Slowly', '3SL4 (88%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I''m not the same as I was last spring,
but the change came so quiet I didn''t feel a thing --
growing is slow like seeds, not sudden like a ring.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Growing Slowly',
    '{"lesson_name": "Growing Slowly", "lesson_description": "3SL4 (88%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I''m not the same as I was last spring,\nbut the change came so quiet I didn''t feel a thing \u2014\ngrowing is slow like seeds, not sudden like a ring."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 142
  );

  -- Lesson 19: The Storm That Passed
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Storm That Passed', '3SL4 (88%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/52.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The fight was loud and left a quiet behind,
the kind of quiet that''s harder to find,
but the air after storms is the clearing kind.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Storm That Passed',
    '{"lesson_name": "The Storm That Passed", "lesson_description": "3SL4 (88%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The fight was loud and left a quiet behind,\nthe kind of quiet that''s harder to find,\nbut the air after storms is the clearing kind."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 150
  );

  -- Lesson 20: What I Notice
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Notice', '3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/79.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Most people passed the spider''s web today,
I stopped to watch the morning light at play --
slowing down is a kind of seeing anyway.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Notice',
    '{"lesson_name": "What I Notice", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "Most people passed the spider''s web today,\nI stopped to watch the morning light at play \u2014\nslowing down is a kind of seeing anyway."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 158
  );

  -- Lesson 21: The Question Behind the Question
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Question Behind the Question', '3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I asked why the sky was blue and you said light,
but I meant why the world holds itself so right,
some questions open wider the more you hold them tight.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Question Behind the Question',
    '{"lesson_name": "The Question Behind the Question", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I asked why the sky was blue and you said light,\nbut I meant why the world holds itself so right,\nsome questions open wider the more you hold them tight."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 166
  );

  -- Lesson 22: Different and the Same
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Different and the Same', '3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (81%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/64.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'We eat different things and speak different ways,
but we all put hands up on uncertain days,
and we all go quiet when the last light fades.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Different and the Same',
    '{"lesson_name": "Different and the Same", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "We eat different things and speak different ways,\nbut we all put hands up on uncertain days,\nand we all go quiet when the last light fades."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 174
  );

  -- Lesson 23: What the Tree Knows
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What the Tree Knows', '3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (81%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/34.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The oak doesn''t hurry to reach the sky --
it holds its ground while the seasons go by,
some things grow strongest when they don''t try.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What the Tree Knows',
    '{"lesson_name": "What the Tree Knows", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The oak doesn''t hurry to reach the sky \u2014\nit holds its ground while the seasons go by,\nsome things grow strongest when they don''t try."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 182
  );

  -- Lesson 24: Roots and Wings
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Roots and Wings', '3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/49.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'My roots hold where my story first grew,
but my wings keep reaching somewhere new --
I carry both, and they carry me through.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Roots and Wings',
    '{"lesson_name": "Roots and Wings", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "My roots hold where my story first grew,\nbut my wings keep reaching somewhere new \u2014\nI carry both, and they carry me through."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 190
  );

  -- Lesson 25: Both at Once
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Both at Once', '3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I can miss the old thing and love the new,
I can be scared and still push through --
being two things at once is what growing does to you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Both at Once',
    '{"lesson_name": "Both at Once", "lesson_description": "3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I can miss the old thing and love the new,\nI can be scared and still push through \u2014\nbeing two things at once is what growing does to you."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 198
  );

  -- Lesson 26: Silence Before Speaking
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Silence Before Speaking', '3SL4 (86%) PRIMARY | 3SL6 (81%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The best thing I said this week I almost didn''t say,
I held it back, let it settle, then found the right way --
silence before speaking is not the same as having nothing to say.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Silence Before Speaking',
    '{"lesson_name": "Silence Before Speaking", "lesson_description": "3SL4 (86%) PRIMARY | 3SL6 (81%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "The best thing I said this week I almost didn''t say,\nI held it back, let it settle, then found the right way \u2014\nsilence before speaking is not the same as having nothing to say."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 206
  );

  -- Lesson 27: Small and Important
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Small and Important', '3SL4 (86%) PRIMARY | 3SL6 (81%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'No one will write about the cup I returned,
the door I held, the patience I learned,
but quiet things matter even when they go unearned.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Small and Important',
    '{"lesson_name": "Small and Important", "lesson_description": "3SL4 (86%) PRIMARY | 3SL6 (81%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "No one will write about the cup I returned,\nthe door I held, the patience I learned,\nbut quiet things matter even when they go unearned."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 214
  );

  -- Lesson 28: Reading the Room
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Reading the Room', '3SL4 (85%) PRIMARY | 3SL6 (81%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Before I spoke, I looked around the table first --
his eyes were down, her shoulders braced for the worst,
I chose my words like water -- not like a burst.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reading the Room',
    '{"lesson_name": "Reading the Room", "lesson_description": "3SL4 (85%) PRIMARY | 3SL6 (81%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "Before I spoke, I looked around the table first \u2014\nhis eyes were down, her shoulders braced for the worst,\nI chose my words like water \u2014 not like a burst."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 222
  );

  -- Lesson 29: The Echo
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Echo', '3SL4 (85%) PRIMARY | 3SL6 (81%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'What I say in the morning follows me all day,
like an echo that shapes itself along the way --
I try to send out the kind I want to stay.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Echo',
    '{"lesson_name": "The Echo", "lesson_description": "3SL4 (85%) PRIMARY | 3SL6 (81%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "What I say in the morning follows me all day,\nlike an echo that shapes itself along the way \u2014\nI try to send out the kind I want to stay."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 230
  );

  -- Lesson 30: What I''m Still Learning
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I''m Still Learning', '3SL4 (85%) PRIMARY | 3SL6 (80%) PRIMARY | 3L3 (82%) SECONDARY', '0a1c0321-81a1-465f-a8d1-11beec18c591',
    'MEDIUM', 'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/91.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I don''t know yet who I''ll grow up to be,
but I know each day adds a ring to the tree --
still learning is its own kind of mastery.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run--\nNature''''s poem has just begun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I''m Still Learning',
    '{"lesson_name": "What I''m Still Learning", "lesson_description": "3SL4 (85%) PRIMARY | 3SL6 (80%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "assigned_text", "content_value": "I don''t know yet who I''ll grow up to be,\nbut I know each day adds a ring to the tree \u2014\nstill learning is its own kind of mastery."}, {"content_key": "example", "content_value": "The sun paints gold across the sky,\\nBirds take flight and breezes sigh.\\nLeaves that whisper, rivers that run\u2014\\nNature''''s poem has just begun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'MEDIUM', 238
  );

END $$;
