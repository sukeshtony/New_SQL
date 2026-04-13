-- =====================================================
-- Module 6: Poems (Vocal Variety) - Grade 3 (30 Lessons) [HARD]
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: 0a1c0321-81a1-465f-a8d1-11beec18c591
-- =====================================================

DO $$
DECLARE
  v_custom_version_id UUID := 'c3d4e5f6-a7b8-4c9d-ae0f-1b2c3d4e5f6a';
  v_learning_path_id UUID := 'ffd44181-68cd-4ac8-9a85-e66adc2d7baa';
  v_lesson_id UUID;
BEGIN
  IF NOT EXISTS (SELECT 1 FROM bantrly.learning_path_version WHERE version_id = v_custom_version_id) THEN
    INSERT INTO bantrly.learning_path_version (
      version_id, learning_path_id, version_name, version_description,
      version_number, is_active, grade, section, created_on, created_by,
      created_by_role, is_custom, difficulty_level, school_id
    ) VALUES (
      v_custom_version_id, v_learning_path_id, 'Grade 3 Hard - Comprehensive Path (240 Lessons)',
      'Grade 3 Hard - Unified learning path containing all 8 modules (240 lessons)',
      (SELECT COALESCE(MAX(version_number), 0) + 1 FROM bantrly.learning_path_version WHERE learning_path_id = v_learning_path_id),
      true, 3, NULL, NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
      'TEACHER', true, 'HARD', 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266'
    );
  END IF;

  -- Lesson 1: Listening
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Listening', '3SL4 (92%) PRIMARY | 3SL1 [3SL1d] (90%) PRIMARY | 3-5L2 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'When I stop my own voice for a moment and wait,\nI hear what was already there, steady and straight.\nListening is how I find what I nearly missed.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening',
    '{"lesson_name": "Listening", "lesson_description": "3SL4 (92%) PRIMARY | 3SL1 [3SL1d] (90%) PRIMARY | 3-5L2 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "When I stop my own voice for a moment and wait,\nI hear what was already there, steady and straight.\nListening is how I find what I nearly missed."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 6
  );

  -- Lesson 2: Changing Your Mind
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Changing Your Mind', '3SL4 (91%) PRIMARY | 3SL1 (89%) PRIMARY | 3-5L2 (86%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/2.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Yesterday''s answer felt certain and true,\nbut new information rearranged the view.\nChanging your mind is a kind of strength too.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Changing Your Mind',
    '{"lesson_name": "Changing Your Mind", "lesson_description": "3SL4 (91%) PRIMARY | 3SL1 (89%) PRIMARY | 3-5L2 (86%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Yesterday''s answer felt certain and true,\nbut new information rearranged the view.\nChanging your mind is a kind of strength too."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 14
  );

  -- Lesson 3: Asking Why
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Asking Why', '3SL4 (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (85%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The question sits quietly, waiting to grow,\npressing against what I already know.\nAsking "why" is the first step of flow.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Asking Why',
    '{"lesson_name": "Asking Why", "lesson_description": "3SL4 (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (85%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The question sits quietly, waiting to grow,\npressing against what I already know.\nAsking \"why\" is the first step of flow."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 22
  );

  -- Lesson 4: Making Mistakes
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Making Mistakes', '3SL4 (92%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'A mistake is a message sent from the path,\nit says: try again, recalculate the math.\nLearning begins in the long aftermath.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Mistakes',
    '{"lesson_name": "Making Mistakes", "lesson_description": "3SL4 (92%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "A mistake is a message sent from the path,\nit says: try again, recalculate the math.\nLearning begins in the long aftermath."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 30
  );

  -- Lesson 5: Trying Again
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Trying Again', '3SL4 (91%) PRIMARY | 3SL1 (88%) PRIMARY | 3-5L2 (85%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The attempt that failed left a small kind of mark,\nnot a scar, but a map through the difficult dark.\nTrying again is the point, not just the start.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trying Again',
    '{"lesson_name": "Trying Again", "lesson_description": "3SL4 (91%) PRIMARY | 3SL1 (88%) PRIMARY | 3-5L2 (85%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The attempt that failed left a small kind of mark,\nnot a scar, but a map through the difficult dark.\nTrying again is the point, not just the start."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 38
  );

  -- Lesson 6: Patience
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Patience', '3SL4 (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Patience does not mean nothing is happening here,\nit means something is forming, layer by layer.\nWait, and what matters will suddenly appear.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Patience',
    '{"lesson_name": "Patience", "lesson_description": "3SL4 (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Patience does not mean nothing is happening here,\nit means something is forming, layer by layer.\nWait, and what matters will suddenly appear."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 46
  );

  -- Lesson 7: Noticing Others
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Noticing Others', '3SL1 [3SL1d] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L2 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Their face held something before any word was said,\na shift, a stillness, a quiet thread.\nI noticed it, and something changed instead.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noticing Others',
    '{"lesson_name": "Noticing Others", "lesson_description": "3SL1 [3SL1d] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L2 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Their face held something before any word was said,\na shift, a stillness, a quiet thread.\nI noticed it, and something changed instead."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 54
  );

  -- Lesson 8: When Words Are Hard to Find
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Words Are Hard to Find', '3SL4 (91%) PRIMARY | 3-5L1 (89%) PRIMARY | 3-5L2 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The feeling arrived before language could form,\na shape without name, somewhere between calm and storm.\nI waited, and slowly, the words settled warm.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Words Are Hard to Find',
    '{"lesson_name": "When Words Are Hard to Find", "lesson_description": "3SL4 (91%) PRIMARY | 3-5L1 (89%) PRIMARY | 3-5L2 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The feeling arrived before language could form,\na shape without name, somewhere between calm and storm.\nI waited, and slowly, the words settled warm."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 62
  );

  -- Lesson 9: The Space Before Speaking
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Space Before Speaking', '3SL4 (92%) PRIMARY | 3SL6 (90%) PRIMARY | 3-5L1 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/9.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Between what I think and the moment I say,\nthere''s a small quiet place I can choose to stay.\nThe right words wait there, already on their way.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Space Before Speaking',
    '{"lesson_name": "The Space Before Speaking", "lesson_description": "3SL4 (92%) PRIMARY | 3SL6 (90%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Between what I think and the moment I say,\nthere''s a small quiet place I can choose to stay.\nThe right words wait there, already on their way."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 70
  );

  -- Lesson 10: Being Brave Without Knowing It
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Being Brave Without Knowing It', '3SL4 (91%) PRIMARY | 3R3 (88%) SECONDARY | 3-5L1 (86%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/10.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I didn''t feel brave when I stood up to speak,\njust quietly nervous in the middle of the week.\nBut brave is the word others said, cheek to cheek.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Being Brave Without Knowing It',
    '{"lesson_name": "Being Brave Without Knowing It", "lesson_description": "3SL4 (91%) PRIMARY | 3R3 (88%) SECONDARY | 3-5L1 (86%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I didn''t feel brave when I stood up to speak,\njust quietly nervous in the middle of the week.\nBut brave is the word others said, cheek to cheek."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 78
  );

  -- Lesson 11: Losing and Learning
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Losing and Learning', '3SL4 (90%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL1 (85%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Losing doesn''t always mean I got it wrong,\nsometimes it means the lesson had to come along.\nWhat stays with me after is stronger than the song.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Losing and Learning',
    '{"lesson_name": "Losing and Learning", "lesson_description": "3SL4 (90%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL1 (85%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Losing doesn''t always mean I got it wrong,\nsometimes it means the lesson had to come along.\nWhat stays with me after is stronger than the song."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 86
  );

  -- Lesson 12: What Fairness Feels Like
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Fairness Feels Like', '3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Fairness isn''t always the same for each seat,\nit means everyone gets what they need to complete.\nThe table must fit every person who meets.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Fairness Feels Like',
    '{"lesson_name": "What Fairness Feels Like", "lesson_description": "3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Fairness isn''t always the same for each seat,\nit means everyone gets what they need to complete.\nThe table must fit every person who meets."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 94
  );

  -- Lesson 13: When Quiet Is Loud
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Quiet Is Loud', '3SL4 (92%) PRIMARY | 3SL1 (89%) PRIMARY | 3-5L2 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'A room that says nothing can still carry weight,\nthe absence of words can say something quite great.\nSilence, I''ve learned, can communicate.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Quiet Is Loud',
    '{"lesson_name": "When Quiet Is Loud", "lesson_description": "3SL4 (92%) PRIMARY | 3SL1 (89%) PRIMARY | 3-5L2 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "A room that says nothing can still carry weight,\nthe absence of words can say something quite great.\nSilence, I''ve learned, can communicate."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 102
  );

  -- Lesson 14: Deciding Alone
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Deciding Alone', '3SL4 (90%) PRIMARY | 3R3 (88%) SECONDARY | 3-5L1 (86%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'No one was there to say what was right,\njust me and the choice at the edge of the night.\nI made it, and carried it into the light.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Deciding Alone',
    '{"lesson_name": "Deciding Alone", "lesson_description": "3SL4 (90%) PRIMARY | 3R3 (88%) SECONDARY | 3-5L1 (86%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "No one was there to say what was right,\njust me and the choice at the edge of the night.\nI made it, and carried it into the light."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 110
  );

  -- Lesson 15: The Weight of Kindness
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Weight of Kindness', '3SL4 (91%) PRIMARY | 3SL1 (88%) PRIMARY | 3-5L2 (86%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Kindness is lighter than anger to hold,\nbut it travels farther through the cold.\nOne act repeated becomes something bold.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Weight of Kindness',
    '{"lesson_name": "The Weight of Kindness", "lesson_description": "3SL4 (91%) PRIMARY | 3SL1 (88%) PRIMARY | 3-5L2 (86%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Kindness is lighter than anger to hold,\nbut it travels farther through the cold.\nOne act repeated becomes something bold."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 118
  );

  -- Lesson 16: The Shape of Courage
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Shape of Courage', '3SL4 (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3R3 (88%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Courage isn''t loud, it doesn''t shout or blaze,\nit moves in small steps through uncertain haze.\nIts shape reveals itself inside the maze.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Shape of Courage',
    '{"lesson_name": "The Shape of Courage", "lesson_description": "3SL4 (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3R3 (88%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Courage isn''t loud, it doesn''t shout or blaze,\nit moves in small steps through uncertain haze.\nIts shape reveals itself inside the maze."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 126
  );

  -- Lesson 17: When Something New Feels Wrong
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Something New Feels Wrong', '3SL4 (91%) PRIMARY | 3-5L1 (89%) PRIMARY | 3SL1 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Unfamiliar things press against what I know,\nlike weather arriving in places I don''t go.\nBut wrong and new are not always the same, though.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Something New Feels Wrong',
    '{"lesson_name": "When Something New Feels Wrong", "lesson_description": "3SL4 (91%) PRIMARY | 3-5L1 (89%) PRIMARY | 3SL1 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Unfamiliar things press against what I know,\nlike weather arriving in places I don''t go.\nBut wrong and new are not always the same, though."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 134
  );

  -- Lesson 18: Choosing Carefully
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Choosing Carefully', '3SL4 (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3R3 (88%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Every choice removes a different door,\nthe one I take becomes the floor.\nI walk it forward, learning more and more.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Carefully',
    '{"lesson_name": "Choosing Carefully", "lesson_description": "3SL4 (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3R3 (88%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Every choice removes a different door,\nthe one I take becomes the floor.\nI walk it forward, learning more and more."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 142
  );

  -- Lesson 19: Want Versus Need
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Want Versus Need', '3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Want is a flag that flies bright and loud,\nneed is the root beneath the ground.\nI''ve learned to tell one from the other sound.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Want Versus Need',
    '{"lesson_name": "Want Versus Need", "lesson_description": "3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Want is a flag that flies bright and loud,\nneed is the root beneath the ground.\nI''ve learned to tell one from the other sound."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 150
  );

  -- Lesson 20: Finding Your Pace
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Finding Your Pace', '3SL4 (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I used to match my speed to all the rest,\nbut slower thinking sometimes does it best.\nMy pace, I found, is how I take the test.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding Your Pace',
    '{"lesson_name": "Finding Your Pace", "lesson_description": "3SL4 (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I used to match my speed to all the rest,\nbut slower thinking sometimes does it best.\nMy pace, I found, is how I take the test."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 158
  );

  -- Lesson 21: What Persistence Looks Like
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Persistence Looks Like', '3SL4 (91%) PRIMARY | 3R3 (88%) SECONDARY | 3-5L2 (86%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'It doesn''t look like triumph every day,\nmost times it''s just returning, come what may.\nPersistence is the act of choosing to stay.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Persistence Looks Like',
    '{"lesson_name": "What Persistence Looks Like", "lesson_description": "3SL4 (91%) PRIMARY | 3R3 (88%) SECONDARY | 3-5L2 (86%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "It doesn''t look like triumph every day,\nmost times it''s just returning, come what may.\nPersistence is the act of choosing to stay."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 166
  );

  -- Lesson 22: When Understanding Arrives
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Understanding Arrives', '3SL4 (92%) PRIMARY | 3RF4a (89%) SECONDARY | 3-5L2 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/22.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The idea arrived like light through a narrow crack,\nnot all at once, but slowly tracking back.\nUnderstanding came, and nothing pushed it back.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Understanding Arrives',
    '{"lesson_name": "When Understanding Arrives", "lesson_description": "3SL4 (92%) PRIMARY | 3RF4a (89%) SECONDARY | 3-5L2 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The idea arrived like light through a narrow crack,\nnot all at once, but slowly tracking back.\nUnderstanding came, and nothing pushed it back."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 174
  );

  -- Lesson 23: Growing Without Noticing
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Growing Without Noticing', '3SL4 (91%) PRIMARY | 3R3 (89%) SECONDARY | 3-5L1 (87%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/23.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I didn''t feel myself becoming more,\nbut one day I could open a different door,\none I''d found too heavy long before.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Growing Without Noticing',
    '{"lesson_name": "Growing Without Noticing", "lesson_description": "3SL4 (91%) PRIMARY | 3R3 (89%) SECONDARY | 3-5L1 (87%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I didn''t feel myself becoming more,\nbut one day I could open a different door,\none I''d found too heavy long before."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 182
  );

  -- Lesson 24: What Thinking Is Made Of
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Thinking Is Made Of', '3SL4 (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3SL1 (89%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Thinking is not a straight road to the end,\nit circles back and doubles round the bend,\na process, not a product, I defend.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Thinking Is Made Of',
    '{"lesson_name": "What Thinking Is Made Of", "lesson_description": "3SL4 (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3SL1 (89%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Thinking is not a straight road to the end,\nit circles back and doubles round the bend,\na process, not a product, I defend."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 190
  );

  -- Lesson 25: The Voice You Choose
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Voice You Choose', '3SL4 (93%) PRIMARY | 3SL6 (91%) PRIMARY | 3-5L1 (89%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/25.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Every speaker selects from what they carry,\nsome voices are certain, some careful, some wary.\nThe voice that I choose becomes my dictionary.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Voice You Choose',
    '{"lesson_name": "The Voice You Choose", "lesson_description": "3SL4 (93%) PRIMARY | 3SL6 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Every speaker selects from what they carry,\nsome voices are certain, some careful, some wary.\nThe voice that I choose becomes my dictionary."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 198
  );

  -- Lesson 26: When Silence Speaks
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Silence Speaks', '3SL1 [3SL1d] (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L2 (89%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/26.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Some truths arrive without a single word,\ntheir presence is felt before they are heard.\nSilence, used well, is the sharpest third.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Silence Speaks',
    '{"lesson_name": "When Silence Speaks", "lesson_description": "3SL1 [3SL1d] (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L2 (89%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Some truths arrive without a single word,\ntheir presence is felt before they are heard.\nSilence, used well, is the sharpest third."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 206
  );

  -- Lesson 27: Learning as a Map
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Learning as a Map', '3SL4 (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3R3 (89%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/27.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'A map is not the territory, just a guide,\nand learning is the same, a rough outside.\nThe landscape shifts when you are deep inside.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning as a Map',
    '{"lesson_name": "Learning as a Map", "lesson_description": "3SL4 (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3R3 (89%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "A map is not the territory, just a guide,\nand learning is the same, a rough outside.\nThe landscape shifts when you are deep inside."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 214
  );

  -- Lesson 28: What You Carry Forward
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What You Carry Forward', '3SL4 (92%) PRIMARY | 3-5L1 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Not every lesson can be taught or told,\nsome are discovered in the doing, then hold.\nWhat you carry forward is your own to mold.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What You Carry Forward',
    '{"lesson_name": "What You Carry Forward", "lesson_description": "3SL4 (92%) PRIMARY | 3-5L1 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Not every lesson can be taught or told,\nsome are discovered in the doing, then hold.\nWhat you carry forward is your own to mold."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 222
  );

  -- Lesson 29: The Edge of What You Know
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Edge of What You Know', '3SL4 (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3RF4a (89%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/29.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'At the edge of what I know, the ground gets thin,\nand that is where the real learning can begin.\nI step out carefully, taking everything in.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Edge of What You Know',
    '{"lesson_name": "The Edge of What You Know", "lesson_description": "3SL4 (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3RF4a (89%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "At the edge of what I know, the ground gets thin,\nand that is where the real learning can begin.\nI step out carefully, taking everything in."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 230
  );

  -- Lesson 30: Beginning Again
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Beginning Again', '3SL4 (93%) PRIMARY | 3R3 (91%) SECONDARY | 3-5L1 (89%) SECONDARY',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'HARD',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/30.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Starting over doesn''t erase what was built,\nit lifts the weight of accumulated silt.\nBeginning again is not a reason for guilt.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Beginning Again',
    '{"lesson_name": "Beginning Again", "lesson_description": "3SL4 (93%) PRIMARY | 3R3 (91%) SECONDARY | 3-5L1 (89%) SECONDARY", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Starting over doesn''t erase what was built,\nit lifts the weight of accumulated silt.\nBeginning again is not a reason for guilt."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'HARD', 238
  );

END $$;
