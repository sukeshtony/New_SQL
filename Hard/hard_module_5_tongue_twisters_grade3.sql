-- =====================================================
-- Module 5: Tongue Twisters - Grade 3 (30 Lessons) [HARD]
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b
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

  -- Lesson 1: Striped Storks Stride
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Striped Storks Stride', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Striped storks stride swiftly through steep stone steps. Striped storks stride swiftly through steep stone steps. Striped storks stride swiftly through steep stone steps.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Striped Storks Stride',
    '{"lesson_name": "Striped Storks Stride", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Striped storks stride swiftly through steep stone steps. Striped storks stride swiftly through steep stone steps. Striped storks stride swiftly through steep stone steps."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 3
  );

  -- Lesson 2: Shiny Shells Shift
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Shiny Shells Shift', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/2.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Shiny shells shift slowly on shallow shoreline stones. Shiny shells shift slowly on shallow shoreline stones. Shiny shells shift slowly on shallow shoreline stones.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Shiny Shells Shift',
    '{"lesson_name": "Shiny Shells Shift", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Shiny shells shift slowly on shallow shoreline stones. Shiny shells shift slowly on shallow shoreline stones. Shiny shells shift slowly on shallow shoreline stones."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 11
  );

  -- Lesson 3: Three Thrushes Thrash
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Three Thrushes Thrash', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Three thrushes thrash through thorny thickets twice daily. Three thrushes thrash through thorny thickets twice daily. Three thrushes thrash through thorny thickets twice daily.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Three Thrushes Thrash',
    '{"lesson_name": "Three Thrushes Thrash", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Three thrushes thrash through thorny thickets twice daily. Three thrushes thrash through thorny thickets twice daily. Three thrushes thrash through thorny thickets twice daily."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 19
  );

  -- Lesson 4: Spiral Springs Spread
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Spiral Springs Spread', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Spiral springs spread sprouts across springtime stone streams. Spiral springs spread sprouts across springtime stone streams. Spiral springs spread sprouts across springtime stone streams.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Spiral Springs Spread',
    '{"lesson_name": "Spiral Springs Spread", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Spiral springs spread sprouts across springtime stone streams. Spiral springs spread sprouts across springtime stone streams. Spiral springs spread sprouts across springtime stone streams."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 27
  );

  -- Lesson 5: Clever Crows Clutch
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Clever Crows Clutch', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Clever crows clutch crisp crackling crumbs near creeks. Clever crows clutch crisp crackling crumbs near creeks. Clever crows clutch crisp crackling crumbs near creeks.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clever Crows Clutch',
    '{"lesson_name": "Clever Crows Clutch", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Clever crows clutch crisp crackling crumbs near creeks. Clever crows clutch crisp crackling crumbs near creeks. Clever crows clutch crisp crackling crumbs near creeks."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 35
  );

  -- Lesson 6: Splotchy Snails Slip
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Splotchy Snails Slip', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Splotchy snails slip past splintered stumps in shadows. Splotchy snails slip past splintered stumps in shadows. Splotchy snails slip past splintered stumps in shadows.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Splotchy Snails Slip',
    '{"lesson_name": "Splotchy Snails Slip", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Splotchy snails slip past splintered stumps in shadows. Splotchy snails slip past splintered stumps in shadows. Splotchy snails slip past splintered stumps in shadows."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 43
  );

  -- Lesson 7: Striped Skinks Skip
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Striped Skinks Skip', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Striped skinks skip and skitter across slick stone slopes. Striped skinks skip and skitter across slick stone slopes. Striped skinks skip and skitter across slick stone slopes.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Striped Skinks Skip',
    '{"lesson_name": "Striped Skinks Skip", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Striped skinks skip and skitter across slick stone slopes. Striped skinks skip and skitter across slick stone slopes. Striped skinks skip and skitter across slick stone slopes."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 51
  );

  -- Lesson 8: Twisted Twigs Twirl
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Twisted Twigs Twirl', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Twisted twigs twirl through treetops in the twilight wind. Twisted twigs twirl through treetops in the twilight wind. Twisted twigs twirl through treetops in the twilight wind.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Twisted Twigs Twirl',
    '{"lesson_name": "Twisted Twigs Twirl", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Twisted twigs twirl through treetops in the twilight wind. Twisted twigs twirl through treetops in the twilight wind. Twisted twigs twirl through treetops in the twilight wind."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 59
  );

  -- Lesson 9: Shrewd Shrews Shred
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Shrewd Shrews Shred', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/9.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Shrewd shrews shred shimmering shrubs near the shallow stream. Shrewd shrews shred shimmering shrubs near the shallow stream. Shrewd shrews shred shimmering shrubs near the shallow stream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Shrewd Shrews Shred',
    '{"lesson_name": "Shrewd Shrews Shred", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Shrewd shrews shred shimmering shrubs near the shallow stream. Shrewd shrews shred shimmering shrubs near the shallow stream. Shrewd shrews shred shimmering shrubs near the shallow stream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 67
  );

  -- Lesson 10: Flipped Freckled Frogs
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Flipped Freckled Frogs', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/10.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Freckled frogs frantically flip from slippery flat flagstones. Freckled frogs frantically flip from slippery flat flagstones. Freckled frogs frantically flip from slippery flat flagstones.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Flipped Freckled Frogs',
    '{"lesson_name": "Flipped Freckled Frogs", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Freckled frogs frantically flip from slippery flat flagstones. Freckled frogs frantically flip from slippery flat flagstones. Freckled frogs frantically flip from slippery flat flagstones."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 75
  );

  -- Lesson 11: Whistling Winds Whirl
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Whistling Winds Whirl', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Whistling winds whirl and whip through wide wet wheatfields. Whistling winds whirl and whip through wide wet wheatfields. Whistling winds whirl and whip through wide wet wheatfields.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Whistling Winds Whirl',
    '{"lesson_name": "Whistling Winds Whirl", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Whistling winds whirl and whip through wide wet wheatfields. Whistling winds whirl and whip through wide wet wheatfields. Whistling winds whirl and whip through wide wet wheatfields."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 83
  );

  -- Lesson 12: Crackling Creek Crabs
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Crackling Creek Crabs', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Crackling creek crabs crawl carefully across crumbling clay cliffs. Crackling creek crabs crawl carefully across crumbling clay cliffs. Crackling creek crabs crawl carefully across crumbling clay cliffs.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Crackling Creek Crabs',
    '{"lesson_name": "Crackling Creek Crabs", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Crackling creek crabs crawl carefully across crumbling clay cliffs. Crackling creek crabs crawl carefully across crumbling clay cliffs. Crackling creek crabs crawl carefully across crumbling clay cliffs."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 91
  );

  -- Lesson 13: Spotted Starlings Swoop
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Spotted Starlings Swoop', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Spotted starlings swoop swiftly between swaying steel spire tips. Spotted starlings swoop swiftly between swaying steel spire tips. Spotted starlings swoop swiftly between swaying steel spire tips.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Spotted Starlings Swoop',
    '{"lesson_name": "Spotted Starlings Swoop", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Spotted starlings swoop swiftly between swaying steel spire tips. Spotted starlings swoop swiftly between swaying steel spire tips. Spotted starlings swoop swiftly between swaying steel spire tips."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 99
  );

  -- Lesson 14: Stealthy Scorpions Scuttle
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Stealthy Scorpions Scuttle', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Stealthy scorpions scuttle and scatter across slick scattered gravel. Stealthy scorpions scuttle and scatter across slick scattered gravel. Stealthy scorpions scuttle and scatter across slick scattered gravel.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stealthy Scorpions Scuttle',
    '{"lesson_name": "Stealthy Scorpions Scuttle", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Stealthy scorpions scuttle and scatter across slick scattered gravel. Stealthy scorpions scuttle and scatter across slick scattered gravel. Stealthy scorpions scuttle and scatter across slick scattered gravel."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 107
  );

  -- Lesson 15: Screaming Swallows Sweep
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Screaming Swallows Sweep', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Screaming swallows sweep and swoop past splintered shipwreck planks. Screaming swallows sweep and swoop past splintered shipwreck planks. Screaming swallows sweep and swoop past splintered shipwreck planks.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Screaming Swallows Sweep',
    '{"lesson_name": "Screaming Swallows Sweep", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Screaming swallows sweep and swoop past splintered shipwreck planks. Screaming swallows sweep and swoop past splintered shipwreck planks. Screaming swallows sweep and swoop past splintered shipwreck planks."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 115
  );

  -- Lesson 16: Stitched Scarves Strewn
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Stitched Scarves Strewn', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Skillfully stitched scarves strewn across twelve swirling stone staircases. Skillfully stitched scarves strewn across twelve swirling stone staircases. Skillfully stitched scarves strewn across twelve swirling stone staircases.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stitched Scarves Strewn',
    '{"lesson_name": "Stitched Scarves Strewn", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Skillfully stitched scarves strewn across twelve swirling stone staircases. Skillfully stitched scarves strewn across twelve swirling stone staircases. Skillfully stitched scarves strewn across twelve swirling stone staircases."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 123
  );

  -- Lesson 17: Thrilling Thresholds Thrust
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Thrilling Thresholds Thrust', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Thrilling threadbare thresholds thrust through three thick thornbush tangles. Thrilling threadbare thresholds thrust through three thick thornbush tangles. Thrilling threadbare thresholds thrust through three thick thornbush tangles.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Thrilling Thresholds Thrust',
    '{"lesson_name": "Thrilling Thresholds Thrust", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Thrilling threadbare thresholds thrust through three thick thornbush tangles. Thrilling threadbare thresholds thrust through three thick thornbush tangles. Thrilling threadbare thresholds thrust through three thick thornbush tangles."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 131
  );

  -- Lesson 18: Sprightly Squirrels Sprint
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sprightly Squirrels Sprint', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Sprightly squirrels sprint past sprawling spruce and spindly sprout stalks. Sprightly squirrels sprint past sprawling spruce and spindly sprout stalks. Sprightly squirrels sprint past sprawling spruce and spindly sprout stalks.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sprightly Squirrels Sprint',
    '{"lesson_name": "Sprightly Squirrels Sprint", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Sprightly squirrels sprint past sprawling spruce and spindly sprout stalks. Sprightly squirrels sprint past sprawling spruce and spindly sprout stalks. Sprightly squirrels sprint past sprawling spruce and spindly sprout stalks."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 139
  );

  -- Lesson 19: Slippery Snowflakes Spiral
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Slippery Snowflakes Spiral', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Slippery snowflakes spiral softly settling across steep slanted stone structures. Slippery snowflakes spiral softly settling across steep slanted stone structures. Slippery snowflakes spiral softly settling across steep slanted stone structures.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Slippery Snowflakes Spiral',
    '{"lesson_name": "Slippery Snowflakes Spiral", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Slippery snowflakes spiral softly settling across steep slanted stone structures. Slippery snowflakes spiral softly settling across steep slanted stone structures. Slippery snowflakes spiral softly settling across steep slanted stone structures."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 147
  );

  -- Lesson 20: Swift Starlings Skim
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Swift Starlings Skim', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Strikingly swift starlings skim and streak past swirling storm cloud banks. Strikingly swift starlings skim and streak past swirling storm cloud banks. Strikingly swift starlings skim and streak past swirling storm cloud banks.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Swift Starlings Skim',
    '{"lesson_name": "Swift Starlings Skim", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Strikingly swift starlings skim and streak past swirling storm cloud banks. Strikingly swift starlings skim and streak past swirling storm cloud banks. Strikingly swift starlings skim and streak past swirling storm cloud banks."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 155
  );

  -- Lesson 21: Scrunching Spring Sprockets
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Scrunching Spring Sprockets', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Scrunching spring sprockets sprang apart and scattered across slick wet slate. Scrunching spring sprockets sprang apart and scattered across slick wet slate. Scrunching spring sprockets sprang apart and scattered across slick wet slate.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Scrunching Spring Sprockets',
    '{"lesson_name": "Scrunching Spring Sprockets", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Scrunching spring sprockets sprang apart and scattered across slick wet slate. Scrunching spring sprockets sprang apart and scattered across slick wet slate. Scrunching spring sprockets sprang apart and scattered across slick wet slate."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 163
  );

  -- Lesson 22: Swishing Swans Swept
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Swishing Swans Swept', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/22.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Swishing swans swept swiftly past splashing sprinkling springtime sparkling shores. Swishing swans swept swiftly past splashing sprinkling springtime sparkling shores. Swishing swans swept swiftly past splashing sprinkling springtime sparkling shores.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Swishing Swans Swept',
    '{"lesson_name": "Swishing Swans Swept", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Swishing swans swept swiftly past splashing sprinkling springtime sparkling shores. Swishing swans swept swiftly past splashing sprinkling springtime sparkling shores. Swishing swans swept swiftly past splashing sprinkling springtime sparkling shores."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 171
  );

  -- Lesson 23: Stretching Sprouts Strain
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Stretching Sprouts Strain', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/23.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Stretching stiff-stalked sprouts strain steadily upward toward shimmering silver skies. Stretching stiff-stalked sprouts strain steadily upward toward shimmering silver skies. Stretching stiff-stalked sprouts strain steadily upward toward shimmering silver skies.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stretching Sprouts Strain',
    '{"lesson_name": "Stretching Sprouts Strain", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Stretching stiff-stalked sprouts strain steadily upward toward shimmering silver skies. Stretching stiff-stalked sprouts strain steadily upward toward shimmering silver skies. Stretching stiff-stalked sprouts strain steadily upward toward shimmering silver skies."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 179
  );

  -- Lesson 24: Strangely Twisted Thornbushes
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Strangely Twisted Thornbushes', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Strangely twisted thornbushes thrust through twelve shrieking shrubs near shimmering streams. Strangely twisted thornbushes thrust through twelve shrieking shrubs near shimmering streams. Strangely twisted thornbushes thrust through twelve shrieking shrubs near shimmering streams.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Strangely Twisted Thornbushes',
    '{"lesson_name": "Strangely Twisted Thornbushes", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Strangely twisted thornbushes thrust through twelve shrieking shrubs near shimmering streams. Strangely twisted thornbushes thrust through twelve shrieking shrubs near shimmering streams. Strangely twisted thornbushes thrust through twelve shrieking shrubs near shimmering streams."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 187
  );

  -- Lesson 25: Crinkled Crustaceans Crawled
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Crinkled Crustaceans Crawled', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/25.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Crinkled crackling crustaceans crawled and crashed across crumbling crystalline cliff faces. Crinkled crackling crustaceans crawled and crashed across crumbling crystalline cliff faces. Crinkled crackling crustaceans crawled and crashed across crumbling crystalline cliff faces.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Crinkled Crustaceans Crawled',
    '{"lesson_name": "Crinkled Crustaceans Crawled", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Crinkled crackling crustaceans crawled and crashed across crumbling crystalline cliff faces. Crinkled crackling crustaceans crawled and crashed across crumbling crystalline cliff faces. Crinkled crackling crustaceans crawled and crashed across crumbling crystalline cliff faces."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 195
  );

  -- Lesson 26: Sprawling Speckled Sparrows
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sprawling Speckled Sparrows', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/26.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Sprawling speckled sparrows sweep past spinning splintered steeple spire tips above. Sprawling speckled sparrows sweep past spinning splintered steeple spire tips above. Sprawling speckled sparrows sweep past spinning splintered steeple spire tips above.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sprawling Speckled Sparrows',
    '{"lesson_name": "Sprawling Speckled Sparrows", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Sprawling speckled sparrows sweep past spinning splintered steeple spire tips above. Sprawling speckled sparrows sweep past spinning splintered steeple spire tips above. Sprawling speckled sparrows sweep past spinning splintered steeple spire tips above."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 203
  );

  -- Lesson 27: Shriveled Shrunken Shrubs
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Shriveled Shrunken Shrubs', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/27.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Shriveled shrunken shrubs shudder sharply through shrieking thunderstruck showers and shards. Shriveled shrunken shrubs shudder sharply through shrieking thunderstruck showers and shards. Shriveled shrunken shrubs shudder sharply through shrieking thunderstruck showers and shards.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Shriveled Shrunken Shrubs',
    '{"lesson_name": "Shriveled Shrunken Shrubs", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Shriveled shrunken shrubs shudder sharply through shrieking thunderstruck showers and shards. Shriveled shrunken shrubs shudder sharply through shrieking thunderstruck showers and shards. Shriveled shrunken shrubs shudder sharply through shrieking thunderstruck showers and shards."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 211
  );

  -- Lesson 28: Swiftly Switching Streaks
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Swiftly Switching Streaks', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Swiftly switching streaks of pale starlight skim across steep silvery sky slopes. Swiftly switching streaks of pale starlight skim across steep silvery sky slopes. Swiftly switching streaks of pale starlight skim across steep silvery sky slopes.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Swiftly Switching Streaks',
    '{"lesson_name": "Swiftly Switching Streaks", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Swiftly switching streaks of pale starlight skim across steep silvery sky slopes. Swiftly switching streaks of pale starlight skim across steep silvery sky slopes. Swiftly switching streaks of pale starlight skim across steep silvery sky slopes."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 219
  );

  -- Lesson 29: Sprinkling Sprinklers Sprayed
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sprinkling Sprinklers Sprayed', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/29.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Sprinkling sprinklers sprayed sparkling sprouts across spreading springtime structured stone stretches. Sprinkling sprinklers sprayed sparkling sprouts across spreading springtime structured stone stretches. Sprinkling sprinklers sprayed sparkling sprouts across spreading springtime structured stone stretches.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sprinkling Sprinklers Sprayed',
    '{"lesson_name": "Sprinkling Sprinklers Sprayed", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Sprinkling sprinklers sprayed sparkling sprouts across spreading springtime structured stone stretches. Sprinkling sprinklers sprayed sparkling sprouts across spreading springtime structured stone stretches. Sprinkling sprinklers sprayed sparkling sprouts across spreading springtime structured stone stretches."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 227
  );

  -- Lesson 30: Stretching Straining Storks
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Stretching Straining Storks', '3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'HARD',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/30.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Stretching, straining, strikingly strong storks strode through streams of streaming silver starlight. Stretching, straining, strikingly strong storks strode through streams of streaming silver starlight. Stretching, straining, strikingly strong storks strode through streams of streaming silver starlight.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stretching Straining Storks',
    '{"lesson_name": "Stretching Straining Storks", "lesson_description": "3RF4a (92%) PRIMARY | 3-5L2 (90%) PRIMARY | 3SL6 (88%) SECONDARY", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Stretching, straining, strikingly strong storks strode through streams of streaming silver starlight. Stretching, straining, strikingly strong storks strode through streams of streaming silver starlight. Stretching, straining, strikingly strong storks strode through streams of streaming silver starlight."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'HARD', 235
  );

END $$;
