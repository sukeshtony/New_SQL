-- =====================================================
-- Module 5: Tongue Twisters - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b
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

  -- Lesson 1: Bright Bees Buzz
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Bright Bees Buzz', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Bright bees buzz by blue blossoms. Bright bees buzz by blue blossoms. Bright bees buzz by blue blossoms.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Bright Bees Buzz',
    '{"lesson_name": "Bright Bees Buzz", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Bright bees buzz by blue blossoms. Bright bees buzz by blue blossoms. Bright bees buzz by blue blossoms."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 3
  );

  -- Lesson 2: Tiny Turtles Turn
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Tiny Turtles Turn', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Tiny turtles turn toward tall trees. Tiny turtles turn toward tall trees. Tiny turtles turn toward tall trees.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tiny Turtles Turn',
    '{"lesson_name": "Tiny Turtles Turn", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Tiny turtles turn toward tall trees. Tiny turtles turn toward tall trees. Tiny turtles turn toward tall trees."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 11
  );

  -- Lesson 3: Silly Seals Slide
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Silly Seals Slide', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/39.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Silly seals slide on snowy slopes. Silly seals slide on snowy slopes. Silly seals slide on snowy slopes.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Silly Seals Slide',
    '{"lesson_name": "Silly Seals Slide", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Silly seals slide on snowy slopes. Silly seals slide on snowy slopes. Silly seals slide on snowy slopes."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 19
  );

  -- Lesson 4: Lovely Lions Lie
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Lovely Lions Lie', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/36.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Lovely lions lie on long leaves. Lovely lions lie on long leaves. Lovely lions lie on long leaves.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Lovely Lions Lie',
    '{"lesson_name": "Lovely Lions Lie", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Lovely lions lie on long leaves. Lovely lions lie on long leaves. Lovely lions lie on long leaves."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 27
  );

  -- Lesson 5: Fluffy Frogs Flip
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Fluffy Frogs Flip', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/44.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Fluffy frogs flip and fly forward. Fluffy frogs flip and fly forward. Fluffy frogs flip and fly forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fluffy Frogs Flip',
    '{"lesson_name": "Fluffy Frogs Flip", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Fluffy frogs flip and fly forward. Fluffy frogs flip and fly forward. Fluffy frogs flip and fly forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 35
  );

  -- Lesson 6: Dandy Ducks Dive
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Dandy Ducks Dive', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Dandy ducks dive deep down. Dandy ducks dive deep down. Dandy ducks dive deep down.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Dandy Ducks Dive',
    '{"lesson_name": "Dandy Ducks Dive", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Dandy ducks dive deep down. Dandy ducks dive deep down. Dandy ducks dive deep down."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 43
  );

  -- Lesson 7: Giggling Geese Gather
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Giggling Geese Gather', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Giggling geese gather golden grain in green grassy fields. Giggling geese gather golden grain in green grassy fields. Giggling geese gather golden grain in green grassy fields.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Giggling Geese Gather',
    '{"lesson_name": "Giggling Geese Gather", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Giggling geese gather golden grain in green grassy fields. Giggling geese gather golden grain in green grassy fields. Giggling geese gather golden grain in green grassy fields."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 51
  );

  -- Lesson 8: Clever Cats Climb
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Clever Cats Climb', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/38.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Clever cats climb curvy cliffs to cross the creek. Clever cats climb curvy cliffs to cross the creek. Clever cats climb curvy cliffs to cross the creek.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clever Cats Climb',
    '{"lesson_name": "Clever Cats Climb", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Clever cats climb curvy cliffs to cross the creek. Clever cats climb curvy cliffs to cross the creek. Clever cats climb curvy cliffs to cross the creek."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 59
  );

  -- Lesson 9: Merry Mice Move
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Merry Mice Move', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/69.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Merry mice march through misty meadows at midday. Merry mice march through misty meadows at midday. Merry mice march through misty meadows at midday.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Merry Mice Move',
    '{"lesson_name": "Merry Mice Move", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Merry mice march through misty meadows at midday. Merry mice march through misty meadows at midday. Merry mice march through misty meadows at midday."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 67
  );

  -- Lesson 10: Peaceful Puppies Play
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Peaceful Puppies Play', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/69.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Peaceful puppies play in pretty purple parks near the pond. Peaceful puppies play in pretty purple parks near the pond. Peaceful puppies play in pretty purple parks near the pond.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Peaceful Puppies Play',
    '{"lesson_name": "Peaceful Puppies Play", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Peaceful puppies play in pretty purple parks near the pond. Peaceful puppies play in pretty purple parks near the pond. Peaceful puppies play in pretty purple parks near the pond."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 75
  );

  -- Lesson 11: Seven Snug Squirrels
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Seven Snug Squirrels', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Seven snug squirrels snuck snacks from the snow-covered shelf. Seven snug squirrels snuck snacks from the snow-covered shelf. Seven snug squirrels snuck snacks from the snow-covered shelf.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Seven Snug Squirrels',
    '{"lesson_name": "Seven Snug Squirrels", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Seven snug squirrels snuck snacks from the snow-covered shelf. Seven snug squirrels snuck snacks from the snow-covered shelf. Seven snug squirrels snuck snacks from the snow-covered shelf."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 83
  );

  -- Lesson 12: Brave Bluebirds Bounce
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Brave Bluebirds Bounce', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Brave bluebirds boldly bounce between breezy branches at breakfast. Brave bluebirds boldly bounce between breezy branches at breakfast. Brave bluebirds boldly bounce between breezy branches at breakfast.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Brave Bluebirds Bounce',
    '{"lesson_name": "Brave Bluebirds Bounce", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Brave bluebirds boldly bounce between breezy branches at breakfast. Brave bluebirds boldly bounce between breezy branches at breakfast. Brave bluebirds boldly bounce between breezy branches at breakfast."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 91
  );

  -- Lesson 13: Friendly Frogs Flip
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Friendly Frogs Flip', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Friendly frogs flip forward on fresh flat flowers near the stream. Friendly frogs flip forward on fresh flat flowers near the stream. Friendly frogs flip forward on fresh flat flowers near the stream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendly Frogs Flip',
    '{"lesson_name": "Friendly Frogs Flip", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Friendly frogs flip forward on fresh flat flowers near the stream. Friendly frogs flip forward on fresh flat flowers near the stream. Friendly frogs flip forward on fresh flat flowers near the stream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 99
  );

  -- Lesson 14: Tall Tulips Twist
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Tall Tulips Twist', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/53.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Tall tulips twist toward the twinkly sky at twilight. Tall tulips twist toward the twinkly sky at twilight. Tall tulips twist toward the twinkly sky at twilight.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tall Tulips Twist',
    '{"lesson_name": "Tall Tulips Twist", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Tall tulips twist toward the twinkly sky at twilight. Tall tulips twist toward the twinkly sky at twilight. Tall tulips twist toward the twinkly sky at twilight."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 107
  );

  -- Lesson 15: Lucky Lanterns Light
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Lucky Lanterns Light', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/79.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Lucky lanterns lightly light the long, lonely lane in the sleepy village. Lucky lanterns lightly light the long, lonely lane in the sleepy village. Lucky lanterns lightly light the long, lonely lane in the sleepy village.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Lucky Lanterns Light',
    '{"lesson_name": "Lucky Lanterns Light", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Lucky lanterns lightly light the long, lonely lane in the sleepy village. Lucky lanterns lightly light the long, lonely lane in the sleepy village. Lucky lanterns lightly light the long, lonely lane in the sleepy village."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 115
  );

  -- Lesson 16: Crispy Crackers Crunch
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Crispy Crackers Crunch', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/52.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Crispy crackers crunch and crackle when cheerful children chew them by the creek. Crispy crackers crunch and crackle when cheerful children chew them by the creek. Crispy crackers crunch and crackle when cheerful children chew them by the creek.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Crispy Crackers Crunch',
    '{"lesson_name": "Crispy Crackers Crunch", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Crispy crackers crunch and crackle when cheerful children chew them by the creek. Crispy crackers crunch and crackle when cheerful children chew them by the creek. Crispy crackers crunch and crackle when cheerful children chew them by the creek."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 123
  );

  -- Lesson 17: Shrieking Shrimp Shuffle
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Shrieking Shrimp Shuffle', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/76.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Shrieking shrimp shuffle sideways on the shiny shore at the edge of the shallow sea. Shrieking shrimp shuffle sideways on the shiny shore at the edge of the shallow sea. Shrieking shrimp shuffle sideways on the shiny shore at the edge of the shallow sea.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Shrieking Shrimp Shuffle',
    '{"lesson_name": "Shrieking Shrimp Shuffle", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Shrieking shrimp shuffle sideways on the shiny shore at the edge of the shallow sea. Shrieking shrimp shuffle sideways on the shiny shore at the edge of the shallow sea. Shrieking shrimp shuffle sideways on the shiny shore at the edge of the shallow sea."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 131
  );

  -- Lesson 18: Slippery Snakes Slither
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Slippery Snakes Slither', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/69.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Slippery snakes slither slowly through the slick, snowy slope near the sleeping village. Slippery snakes slither slowly through the slick, snowy slope near the sleeping village. Slippery snakes slither slowly through the slick, snowy slope near the sleeping village.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Slippery Snakes Slither',
    '{"lesson_name": "Slippery Snakes Slither", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Slippery snakes slither slowly through the slick, snowy slope near the sleeping village. Slippery snakes slither slowly through the slick, snowy slope near the sleeping village. Slippery snakes slither slowly through the slick, snowy slope near the sleeping village."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 139
  );

  -- Lesson 19: Glowing Glowworms Glow
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Glowing Glowworms Glow', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Glowing glowworms gleam and glisten along the gloomy, glassy riverbank at night. Glowing glowworms gleam and glisten along the gloomy, glassy riverbank at night. Glowing glowworms gleam and glisten along the gloomy, glassy riverbank at night.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Glowing Glowworms Glow',
    '{"lesson_name": "Glowing Glowworms Glow", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Glowing glowworms gleam and glisten along the gloomy, glassy riverbank at night. Glowing glowworms gleam and glisten along the gloomy, glassy riverbank at night. Glowing glowworms gleam and glisten along the gloomy, glassy riverbank at night."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 147
  );

  -- Lesson 20: Three Thin Threads
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Three Thin Threads', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Three thin threads threaded through the throat of a thrush sitting on a thorn. Three thin threads threaded through the throat of a thrush sitting on a thorn. Three thin threads threaded through the throat of a thrush sitting on a thorn.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Three Thin Threads',
    '{"lesson_name": "Three Thin Threads", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Three thin threads threaded through the throat of a thrush sitting on a thorn. Three thin threads threaded through the throat of a thrush sitting on a thorn. Three thin threads threaded through the throat of a thrush sitting on a thorn."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 155
  );

  -- Lesson 21: Sprinting Sprouts Spring
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sprinting Sprouts Spring', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Sprinting sprouts spring up from the spread of soil after every splash of spring rain. Sprinting sprouts spring up from the spread of soil after every splash of spring rain. Sprinting sprouts spring up from the spread of soil after every splash of spring rain.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sprinting Sprouts Spring',
    '{"lesson_name": "Sprinting Sprouts Spring", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Sprinting sprouts spring up from the spread of soil after every splash of spring rain. Sprinting sprouts spring up from the spread of soil after every splash of spring rain. Sprinting sprouts spring up from the spread of soil after every splash of spring rain."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 163
  );

  -- Lesson 22: Scrubbing Crabs Scrabble
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Scrubbing Crabs Scrabble', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/96.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Scrubbing crabs scrabble and scratch across the scratchy, crinkled creek bed in the cove. Scrubbing crabs scrabble and scratch across the scratchy, crinkled creek bed in the cove. Scrubbing crabs scrabble and scratch across the scratchy, crinkled creek bed in the cove.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Scrubbing Crabs Scrabble',
    '{"lesson_name": "Scrubbing Crabs Scrabble", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Scrubbing crabs scrabble and scratch across the scratchy, crinkled creek bed in the cove. Scrubbing crabs scrabble and scratch across the scratchy, crinkled creek bed in the cove. Scrubbing crabs scrabble and scratch across the scratchy, crinkled creek bed in the cove."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 171
  );

  -- Lesson 23: Twitching Twigs Twist
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Twitching Twigs Twist', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/43.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Twitching twigs twist and tremble in the strong, travelling breeze across the treetops. Twitching twigs twist and tremble in the strong, travelling breeze across the treetops. Twitching twigs twist and tremble in the strong, travelling breeze across the treetops.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Twitching Twigs Twist',
    '{"lesson_name": "Twitching Twigs Twist", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Twitching twigs twist and tremble in the strong, travelling breeze across the treetops. Twitching twigs twist and tremble in the strong, travelling breeze across the treetops. Twitching twigs twist and tremble in the strong, travelling breeze across the treetops."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 179
  );

  -- Lesson 24: Splitting Splinters Splashed
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Splitting Splinters Splashed', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/71.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Splitting splinters splashed and sprang from the strong, strange tree struck by the storm. Splitting splinters splashed and sprang from the strong, strange tree struck by the storm. Splitting splinters splashed and sprang from the strong, strange tree struck by the storm.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Splitting Splinters Splashed',
    '{"lesson_name": "Splitting Splinters Splashed", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Splitting splinters splashed and sprang from the strong, strange tree struck by the storm. Splitting splinters splashed and sprang from the strong, strange tree struck by the storm. Splitting splinters splashed and sprang from the strong, strange tree struck by the storm."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 187
  );

  -- Lesson 25: Striking Streams Stream
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Striking Streams Stream', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/59.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Striking streams stream swiftly through the steep, straight stretch of the stony valley. Striking streams stream swiftly through the steep, straight stretch of the stony valley. Striking streams stream swiftly through the steep, straight stretch of the stony valley.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Striking Streams Stream',
    '{"lesson_name": "Striking Streams Stream", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Striking streams stream swiftly through the steep, straight stretch of the stony valley. Striking streams stream swiftly through the steep, straight stretch of the stony valley. Striking streams stream swiftly through the steep, straight stretch of the stony valley."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 195
  );

  -- Lesson 26: Thrashing Thrushes Threw
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Thrashing Thrushes Threw', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Thrashing thrushes threw three thick chunks of chocolate through the thornbush near the bridge. Thrashing thrushes threw three thick chunks of chocolate through the thornbush near the bridge. Thrashing thrushes threw three thick chunks of chocolate through the thornbush near the bridge.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Thrashing Thrushes Threw',
    '{"lesson_name": "Thrashing Thrushes Threw", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Thrashing thrushes threw three thick chunks of chocolate through the thornbush near the bridge. Thrashing thrushes threw three thick chunks of chocolate through the thornbush near the bridge. Thrashing thrushes threw three thick chunks of chocolate through the thornbush near the bridge."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 203
  );

  -- Lesson 27: Clinking Clocks Click
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Clinking Clocks Click', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Clinking clocks click and creak as clever crows cling to the crown of the crumbling clock tower. Clinking clocks click and creak as clever crows cling to the crown of the crumbling clock tower. Clinking clocks click and creak as clever crows cling to the crown of the crumbling clock tower.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clinking Clocks Click',
    '{"lesson_name": "Clinking Clocks Click", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Clinking clocks click and creak as clever crows cling to the crown of the crumbling clock tower. Clinking clocks click and creak as clever crows cling to the crown of the crumbling clock tower. Clinking clocks click and creak as clever crows cling to the crown of the crumbling clock tower."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 211
  );

  -- Lesson 28: Sparkling Sprats Sprang
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sparkling Sprats Sprang', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Sparkling sprats sprang and splashed through the spreading spray at the edge of the splitting reef. Sparkling sprats sprang and splashed through the spreading spray at the edge of the splitting reef. Sparkling sprats sprang and splashed through the spreading spray at the edge of the splitting reef.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sparkling Sprats Sprang',
    '{"lesson_name": "Sparkling Sprats Sprang", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Sparkling sprats sprang and splashed through the spreading spray at the edge of the splitting reef. Sparkling sprats sprang and splashed through the spreading spray at the edge of the splitting reef. Sparkling sprats sprang and splashed through the spreading spray at the edge of the splitting reef."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 219
  );

  -- Lesson 29: Gripping Grizzlies Growl
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Gripping Grizzlies Growl', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/38.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Gripping grizzlies growl and groan as they graze across the great, grey, granite gravel slope. Gripping grizzlies growl and groan as they graze across the great, grey, granite gravel slope. Gripping grizzlies growl and groan as they graze across the great, grey, granite gravel slope.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Gripping Grizzlies Growl',
    '{"lesson_name": "Gripping Grizzlies Growl", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Gripping grizzlies growl and groan as they graze across the great, grey, granite gravel slope. Gripping grizzlies growl and groan as they graze across the great, grey, granite gravel slope. Gripping grizzlies growl and groan as they graze across the great, grey, granite gravel slope."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 227
  );

  -- Lesson 30: Scratchy Scrub Brushes Scrub
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Scratchy Scrub Brushes Scrub', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/36.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Scratchy scrub brushes bravely scrub and scrape the brown, brittle brick bridge in the brisk breeze. Scratchy scrub brushes bravely scrub and scrape the brown, brittle brick bridge in the brisk breeze. Scratchy scrub brushes bravely scrub and scrape the brown, brittle brick bridge in the brisk breeze.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Scratchy Scrub Brushes Scrub',
    '{"lesson_name": "Scratchy Scrub Brushes Scrub", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Scratchy scrub brushes bravely scrub and scrape the brown, brittle brick bridge in the brisk breeze. Scratchy scrub brushes bravely scrub and scrape the brown, brittle brick bridge in the brisk breeze. Scratchy scrub brushes bravely scrub and scrape the brown, brittle brick bridge in the brisk breeze."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Pronunciation Diction', 3, NULL, 'EASY', 235
  );

END $$;
