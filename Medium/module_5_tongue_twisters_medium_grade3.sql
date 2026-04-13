-- =====================================================
-- Module 5: Tongue Twisters - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b
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

  -- Lesson 1: Wiggly Worms Weave Webs
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Wiggly Worms Weave Webs', '3RF4a (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Wiggly worms weave webs in willows.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Wiggly Worms Weave Webs',
    '{"lesson_name": "Wiggly Worms Weave Webs", "lesson_description": "3RF4a (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Wiggly worms weave webs in willows."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 5
  );

  -- Lesson 2: Golden Geese Glide
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Golden Geese Glide', '3RF4a (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/52.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Golden geese glide down green gorges.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Golden Geese Glide',
    '{"lesson_name": "Golden Geese Glide", "lesson_description": "3RF4a (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Golden geese glide down green gorges."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 13
  );

  -- Lesson 3: Rushing Rabbits Race
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Rushing Rabbits Race', '3RF4a (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Rushing rabbits race around rocky roads.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Rushing Rabbits Race',
    '{"lesson_name": "Rushing Rabbits Race", "lesson_description": "3RF4a (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Rushing rabbits race around rocky roads."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 21
  );

  -- Lesson 4: Dizzy Dolphins Dash
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Dizzy Dolphins Dash', '3RF4a (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Dizzy dolphins dash through dark dunes.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Dizzy Dolphins Dash',
    '{"lesson_name": "Dizzy Dolphins Dash", "lesson_description": "3RF4a (90%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Dizzy dolphins dash through dark dunes."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 29
  );

  -- Lesson 5: Muddy Moose Munch Mushrooms
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Muddy Moose Munch Mushrooms', '3RF4a (91%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Muddy moose munch many crunchy mushrooms.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Muddy Moose Munch Mushrooms',
    '{"lesson_name": "Muddy Moose Munch Mushrooms", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Muddy moose munch many crunchy mushrooms."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 37
  );

  -- Lesson 6: Shiny Shells Shine
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Shiny Shells Shine', '3RF4a (91%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Shiny shells shine sharply on shores.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Shiny Shells Shine',
    '{"lesson_name": "Shiny Shells Shine", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (87%) PRIMARY | 3SL6 (84%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Shiny shells shine sharply on shores."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 45
  );

  -- Lesson 7: Six Slippery Snails
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Six Slippery Snails', '3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Six slippery snails slid slowly southward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Six Slippery Snails',
    '{"lesson_name": "Six Slippery Snails", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Six slippery snails slid slowly southward."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 53
  );

  -- Lesson 8: Three Thick Thorny Thistles
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Three Thick Thorny Thistles', '3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Three thick thorny thistles thump together.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Three Thick Thorny Thistles',
    '{"lesson_name": "Three Thick Thorny Thistles", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Three thick thorny thistles thump together."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 61
  );

  -- Lesson 9: Plump Purple Plums
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Plump Purple Plums', '3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Plump purple plums pile past ponds.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Plump Purple Plums',
    '{"lesson_name": "Plump Purple Plums", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Plump purple plums pile past ponds."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 69
  );

  -- Lesson 10: Crunchy Crickets Creep
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Crunchy Crickets Creep', '3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/59.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Crunchy crickets creep across crinkled creeks.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Crunchy Crickets Creep',
    '{"lesson_name": "Crunchy Crickets Creep", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Crunchy crickets creep across crinkled creeks."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 77
  );

  -- Lesson 11: Bright Bronze Beetles
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Bright Bronze Beetles', '3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/49.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Bright bronze beetles buzz beside bark.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Bright Bronze Beetles',
    '{"lesson_name": "Bright Bronze Beetles", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (85%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Bright bronze beetles buzz beside bark."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 85
  );

  -- Lesson 12: Twisting Twigs Tangle
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Twisting Twigs Tangle', '3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/46.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Twisting twigs tangle between tall trunks.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Twisting Twigs Tangle',
    '{"lesson_name": "Twisting Twigs Tangle", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Twisting twigs tangle between tall trunks."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 93
  );

  -- Lesson 13: Freckled Frogs Flip
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Freckled Frogs Flip', '3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/97.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Freckled frogs flip flat feet forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Freckled Frogs Flip',
    '{"lesson_name": "Freckled Frogs Flip", "lesson_description": "3RF4a (91%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Freckled frogs flip flat feet forward."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 101
  );

  -- Lesson 14: Greedy Gray Geese
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Greedy Gray Geese', '3RF4a (92%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/73.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Greedy gray geese grab green grains.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Greedy Gray Geese',
    '{"lesson_name": "Greedy Gray Geese", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Greedy gray geese grab green grains."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 109
  );

  -- Lesson 15: Clapping Clams Clatter
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Clapping Clams Clatter', '3RF4a (92%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Clapping clams clatter close by cliffs.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clapping Clams Clatter',
    '{"lesson_name": "Clapping Clams Clatter", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (88%) PRIMARY | 3SL6 (86%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Clapping clams clatter close by cliffs."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 117
  );

  -- Lesson 16: Grumpy Groundhogs Groan
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Grumpy Groundhogs Groan', '3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (86%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Grumpy groundhogs groan gathering gray grains.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Grumpy Groundhogs Groan',
    '{"lesson_name": "Grumpy Groundhogs Groan", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (86%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Grumpy groundhogs groan gathering gray grains."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 125
  );

  -- Lesson 17: Creaky Cranes Carry Cargo
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Creaky Cranes Carry Cargo', '3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (86%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/74.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Creaky cranes carry cargo carefully crosswise.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Creaky Cranes Carry Cargo',
    '{"lesson_name": "Creaky Cranes Carry Cargo", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (86%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Creaky cranes carry cargo carefully crosswise."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 133
  );

  -- Lesson 18: Slender Swallows Swoop
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Slender Swallows Swoop', '3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Slender swallows swoop through swift storms.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Slender Swallows Swoop',
    '{"lesson_name": "Slender Swallows Swoop", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Slender swallows swoop through swift storms."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 141
  );

  -- Lesson 19: Wobbly Wolves Wade
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Wobbly Wolves Wade', '3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/73.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Wobbly wolves wade past wide whirlpools.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Wobbly Wolves Wade',
    '{"lesson_name": "Wobbly Wolves Wade", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Wobbly wolves wade past wide whirlpools."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 149
  );

  -- Lesson 20: Striped Starfish Stretch
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Striped Starfish Stretch', '3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Striped starfish stretch stiff spiny arms.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Striped Starfish Stretch',
    '{"lesson_name": "Striped Starfish Stretch", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Striped starfish stretch stiff spiny arms."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 157
  );

  -- Lesson 21: Brown Bluebirds Brush Blossoms
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Brown Bluebirds Brush Blossoms', '3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Brown bluebirds brush blossoms beside branches.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Brown Bluebirds Brush Blossoms',
    '{"lesson_name": "Brown Bluebirds Brush Blossoms", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Brown bluebirds brush blossoms beside branches."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 165
  );

  -- Lesson 22: Sneaky Snakes Slither
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sneaky Snakes Slither', '3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Sneaky snakes slither sideways through streams.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sneaky Snakes Slither',
    '{"lesson_name": "Sneaky Snakes Slither", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Sneaky snakes slither sideways through streams."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 173
  );

  -- Lesson 23: Prancing Ponies Prance
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Prancing Ponies Prance', '3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Prancing ponies prance past pretty pastures.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Prancing Ponies Prance',
    '{"lesson_name": "Prancing Ponies Prance", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (89%) PRIMARY | 3SL6 (87%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Prancing ponies prance past pretty pastures."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 181
  );

  -- Lesson 24: Scruffy Squirrels Scramble
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Scruffy Squirrels Scramble', '3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/59.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Scruffy squirrels scurry scrambling through scrub.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Scruffy Squirrels Scramble',
    '{"lesson_name": "Scruffy Squirrels Scramble", "lesson_description": "3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Scruffy squirrels scurry scrambling through scrub."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 189
  );

  -- Lesson 25: Stiff Straight Strands Stretch
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Stiff Straight Strands Stretch', '3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/37.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Stiff straight strands stretch across still streams.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stiff Straight Strands Stretch',
    '{"lesson_name": "Stiff Straight Strands Stretch", "lesson_description": "3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Stiff straight strands stretch across still streams."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 197
  );

  -- Lesson 26: Thirty Thick Threads
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Thirty Thick Threads', '3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/42.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Thirty thick threads threaded through thin thickets.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Thirty Thick Threads',
    '{"lesson_name": "Thirty Thick Threads", "lesson_description": "3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Thirty thick threads threaded through thin thickets."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 205
  );

  -- Lesson 27: Flickering Fireflies Flit
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Flickering Fireflies Flit', '3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/56.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Flickering fireflies flit freely from flowers.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Flickering Fireflies Flit',
    '{"lesson_name": "Flickering Fireflies Flit", "lesson_description": "3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Flickering fireflies flit freely from flowers."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 213
  );

  -- Lesson 28: Spotted Sparrows Spring
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Spotted Sparrows Spring', '3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/94.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Spotted sparrows spring past splintered sprouts.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Spotted Sparrows Spring',
    '{"lesson_name": "Spotted Sparrows Spring", "lesson_description": "3RF4a (93%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Spotted sparrows spring past splintered sprouts."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 221
  );

  -- Lesson 29: Glittering Glaciers Glow
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Glittering Glaciers Glow', '3RF4a (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3SL6 (89%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/23.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Glittering glaciers glow giving grand glimpses.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Glittering Glaciers Glow',
    '{"lesson_name": "Glittering Glaciers Glow", "lesson_description": "3RF4a (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3SL6 (89%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Glittering glaciers glow giving grand glimpses."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 229
  );

  -- Lesson 30: Skillful Skunks Sketch Shapes
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Skillful Skunks Sketch Shapes', '3RF4a (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3SL6 (89%) SECONDARY', 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b',
    'MEDIUM', 'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Skillful skunks sketch scratchy scaly shapes.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Skillful Skunks Sketch Shapes',
    '{"lesson_name": "Skillful Skunks Sketch Shapes", "lesson_description": "3RF4a (93%) PRIMARY | 3-5L2 (91%) PRIMARY | 3SL6 (89%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "tongue_twister", "content_value": "Skillful skunks sketch scratchy scaly shapes."}, {"content_key": "example", "content_value": "She sells seashells by the seashore."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'MEDIUM', 237
  );

END $$;
