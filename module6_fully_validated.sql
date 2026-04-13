-- =====================================================
-- Module 6: Poems (Vocal Variety) - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: 0a1c0321-81a1-465f-a8d1-11beec18c591
-- =====================================================

DO $$
DECLARE
  v_custom_version_id UUID := '6b135adf-fbba-433b-9516-355f970801e4';
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
      v_custom_version_id, v_learning_path_id, 'Grade 3 Easy - Comprehensive Path (240 Lessons)',
      'Grade 3 Easy - Unified learning path containing all 8 modules (240 lessons)',
      (SELECT COALESCE(MAX(version_number), 0) + 1 FROM bantrly.learning_path_version WHERE learning_path_id = v_learning_path_id),
      true, 3, NULL, NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
      'TEACHER', true, 'EASY', 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266'
    );
  END IF;

  -- Lesson 1: Good Morning
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Good Morning', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/95.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The sun comes up, the day is new,I stretch my arms and tie my shoe,And head to school to learn something true.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Good Morning',
    '{"lesson_name": "Good Morning", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The sun comes up, the day is new,I stretch my arms and tie my shoe, And head to school to learn something true."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 6
  );

  -- Lesson 2: My Voice
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Voice', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'My voice is mine — it''s small but strong,I speak up clearly all day long,And say my words where I belong.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Voice',
    '{"lesson_name": "My Voice", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "My voice is mine — it''s small but strong,I speak up clearly all day long,And say my words where I belong."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 14
  );

  -- Lesson 3: Listen Up
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Listen Up', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/47.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'When someone speaks, I turn and hear,I nod my head and lean in near,Because their words are worth my ear.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listen Up',
    '{"lesson_name": "Listen Up", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "When someone speaks, I turn and hear,I nod my head and lean in near,Because their words are worth my ear."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 22
  );

  -- Lesson 4: Keep on Trying
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Keep on Trying', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/86.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I miss a step but start again,I try once more and wonder when I''ll find the way — I will by ten.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Keep on Trying',
    '{"lesson_name": "Keep on Trying", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I miss a step but start again,I try once more and wonder when I''ll find the way — I will by ten."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 30
  );

  -- Lesson 5: Reading Time
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Reading Time', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/56.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I open up my book and seeA story waiting just for me,I read each word so carefully.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reading Time',
    '{"lesson_name": "Reading Time", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I open up my book and seeA story waiting just for me,I read each word so carefully."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 38
  );

  -- Lesson 6: Rain and Puddles
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Rain and Puddles', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The raindrops fall on leaf and stone,They splash and drip and splash alone,Then dry away — the puddle''s gone.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Rain and Puddles',
    '{"lesson_name": "Rain and Puddles", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The raindrops fall on leaf and stone,They splash and drip and splash alone,Then dry away — the puddle''s gone."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 46
  );

  -- Lesson 7: Brave Enough
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Brave Enough', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'It scares me some to stand up tall,But brave is not about no fear at all —It''s taking one more step before I fall.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Brave Enough',
    '{"lesson_name": "Brave Enough", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "It scares me some to stand up tall,But brave is not about no fear at all —It''s taking one more step before I fall."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 54
  );

  -- Lesson 8: The Quiet Moment
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Quiet Moment', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Sometimes the world moves fast and loud,So I close my eyes behind the crowd,And breathe until my mind''s uncloud.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Quiet Moment',
    '{"lesson_name": "The Quiet Moment", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Sometimes the world moves fast and loud,So I close my eyes behind the crowd,And breathe until my mind''s uncloud."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 62
  );

  -- Lesson 9: A Good Friend
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Good Friend', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/59.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'A friend who listens, stands, and staysIs worth a million sunny days —I try to be that friend always.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Good Friend',
    '{"lesson_name": "A Good Friend", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "A friend who listens, stands, and staysIs worth a million sunny days —I try to be that friend always."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 70
  );

  -- Lesson 10: Classroom Voices
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Classroom Voices', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Inside we use a gentle sound,Our voices soft and safely wound —The right voice for the space we''ve found.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Classroom Voices',
    '{"lesson_name": "Classroom Voices", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Inside we use a gentle sound,Our voices soft and safely wound —The right voice for the space we''ve found."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 78
  );

  -- Lesson 11: Make a Mistake
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Make a Mistake', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/58.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I made a wrong — I said so clear,I tried again without the fear,And got it right on my next year.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Make a Mistake',
    '{"lesson_name": "Make a Mistake", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I made a wrong — I said so clear,I tried again without the fear,And got it right on my next year."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 86
  );

  -- Lesson 12: Sharing Space
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sharing Space', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'This desk is yours, and this is mine,But when we share, it turns out fine —Two minds together build the line.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing Space',
    '{"lesson_name": "Sharing Space", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "This desk is yours, and this is mine,But when we share, it turns out fine —Two minds together build the line."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 94
  );

  -- Lesson 13: The Stars at Night
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Stars at Night', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/86.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The stars come out when school is done,They flicker where the moon has spun —A sky that never outgrows fun.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Stars at Night',
    '{"lesson_name": "The Stars at Night", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The stars come out when school is done,They flicker where the moon has spun —A sky that never outgrows fun."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 102
  );

  -- Lesson 14: Helping Hands
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Helping Hands', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'My hands can hold, my hands can share,They reach for those who need some care —Helping hands are everywhere.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping Hands',
    '{"lesson_name": "Helping Hands", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "My hands can hold, my hands can share,They reach for those who need some care —Helping hands are everywhere."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 110
  );

  -- Lesson 15: Words Matter
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Words Matter', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The words I say can lift or break,So I choose them for kindness'' sake —Words matter in the moves I make.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Words Matter',
    '{"lesson_name": "Words Matter", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The words I say can lift or break,So I choose them for kindness'' sake —Words matter in the moves I make."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 118
  );

  -- Lesson 16: What Curiosity Feels Like
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Curiosity Feels Like', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/39.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'A question is a door flung wide,That pulls the whole world back inside —Curiosity is my best guide.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Curiosity Feels Like',
    '{"lesson_name": "What Curiosity Feels Like", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "A question is a door flung wide,That pulls the whole world back inside —Curiosity is my best guide."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 126
  );

  -- Lesson 17: Growing Up Slowly
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Growing Up Slowly', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I''m not who I was yesterday,And not yet who I''ll be someday —Growing means I''m on the way.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Growing Up Slowly',
    '{"lesson_name": "Growing Up Slowly", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I''m not who I was yesterday,And not yet who I''ll be someday —Growing means I''m on the way."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 134
  );

  -- Lesson 18: The Last Try
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Last Try', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/97.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I wanted to quit — I nearly did,But deep inside me something hidThe try that finally flipped the lid.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Last Try',
    '{"lesson_name": "The Last Try", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I wanted to quit — I nearly did,But deep inside me something hidThe try that finally flipped the lid."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 142
  );

  -- Lesson 19: Inside the Story
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Inside the Story', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/43.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The page turns quiet, and I''m in —The world around me grows thin skin —The story living beneath my chin.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Inside the Story',
    '{"lesson_name": "Inside the Story", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The page turns quiet, and I''m in —The world around me grows thin skin — The story living beneath my chin."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 150
  );

  -- Lesson 20: What Fairness Looks Like
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Fairness Looks Like', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/53.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Fair doesn''t mean we all get same —It means each player plays the gameWith what they need to reach the frame.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Fairness Looks Like',
    '{"lesson_name": "What Fairness Looks Like", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Fair doesn''t mean we all get same —It means each player plays the gameWith what they need to reach the frame."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 158
  );

  -- Lesson 21: Paying Attention
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Paying Attention', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/44.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The world is full of things to missWhen minds move fast and eyes go whiz —Slowing down is where the real thing is.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Paying Attention',
    '{"lesson_name": "Paying Attention", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The world is full of things to missWhen minds move fast and eyes go whiz —Slowing down is where the real thing is."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 166
  );

  -- Lesson 22: Who I''m Becoming
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Who I''m Becoming', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I don''t know all of who I''ll be,But every choice is shaping me —The self I''m growing, step by step, is free.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Who I''m Becoming',
    '{"lesson_name": "Who I''m Becoming", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I don''t know all of who I''ll be,But every choice is shaping me —The self I''m growing, step by step, is free."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 174
  );

  -- Lesson 23: The Sound of Learning
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Sound of Learning', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/96.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'A classroom hums with thinking minds,The kind of sound a question finds —Every answer new unwinds.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Sound of Learning',
    '{"lesson_name": "The Sound of Learning", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "A classroom hums with thinking minds,The kind of sound a question finds —Every answer new unwinds."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 182
  );

  -- Lesson 24: Roots and Wings
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Roots and Wings', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/50.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Roots hold me where my story grew,But wings are what I''m reaching to —Between the two, I''m something new.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Roots and Wings',
    '{"lesson_name": "Roots and Wings", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Roots hold me where my story grew,But wings are what I''m reaching to —Between the two, I''m something new."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 190
  );

  -- Lesson 25: The Shape of a Question
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Shape of a Question', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'A question has no finished side —It opens outward, deep and wide,And pulls the whole truth back inside.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Shape of a Question',
    '{"lesson_name": "The Shape of a Question", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "A question has no finished side —It opens outward, deep and wide,And pulls the whole truth back inside."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 198
  );

  -- Lesson 26: What Silence Teaches
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Silence Teaches', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Silence isn''t empty air —It holds the thoughts that need more care,And clears the space for what is rare.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Silence Teaches',
    '{"lesson_name": "What Silence Teaches", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Silence isn''t empty air —It holds the thoughts that need more care,And clears the space for what is rare."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 206
  );

  -- Lesson 27: Both Things True
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Both Things True', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/69.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Two things can be true at once, I find —I''m scared and brave inside my mind,The in-between is my own kind.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Both Things True',
    '{"lesson_name": "Both Things True", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Two things can be true at once, I find — I''m scared and brave inside my mind,The in-between is my own kind."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 214
  );

  -- Lesson 28: The Long Way Around
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Long Way Around', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/97.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The longest road is sometimes right,It leads through shadow into light —The short way skips what makes you bright.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Long Way Around',
    '{"lesson_name": "The Long Way Around", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The longest road is sometimes right,It leads through shadow into light —The short way skips what makes you bright."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 222
  );

  -- Lesson 29: What We Leave Behind
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What We Leave Behind', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/9.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'What will remain when I have gone?The kindness carried, passed along —The echo of a voice still strong.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What We Leave Behind',
    '{"lesson_name": "What We Leave Behind", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "What will remain when I have gone?The kindness carried, passed along —The echo of a voice still strong."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 230
  );

  -- Lesson 30: Making Meaning
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Making Meaning', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/64.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Meaning isn''t handed down —I search the sounds and words I''ve found,And build it from the ground around.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Meaning',
    '{"lesson_name": "Making Meaning", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run—\nNature''s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Meaning isn''t handed down —I search the sounds and words I''ve found,And build it from the ground around."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Vocal Variety Emotion', 3, NULL, 'EASY', 238
  );

END $$;
