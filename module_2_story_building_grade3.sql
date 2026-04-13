-- =====================================================
-- Module 2: Story Building with Keywords - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: ccff362e-8ca9-4b2c-ad37-faba8542543b
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

  -- Lesson 1: The Garden Helper
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Garden Helper', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'plant, soil, water, grow, roots', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Garden Helper',
    '{"lesson_name": "The Garden Helper", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "plant, soil, water, grow, roots"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 2
  );

  -- Lesson 2: A Trip to the Library
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Trip to the Library', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'borrow, return, shelf, choose, quiet', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Trip to the Library',
    '{"lesson_name": "A Trip to the Library", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "borrow, return, shelf, choose, quiet"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 10
  );

  -- Lesson 3: Learning to Ride
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Learning to Ride', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/44.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'balance, practice, fall, try, success', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning to Ride',
    '{"lesson_name": "Learning to Ride", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "balance, practice, fall, try, success"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 18
  );

  -- Lesson 4: The Baking Day
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Baking Day', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mix, pour, bake, taste, warm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Baking Day',
    '{"lesson_name": "The Baking Day", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mix, pour, bake, taste, warm"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 26
  );

  -- Lesson 5: A Sunny Walk
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Sunny Walk', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'path, shadow, notice, listen, explore', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Sunny Walk',
    '{"lesson_name": "A Sunny Walk", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "path, shadow, notice, listen, explore"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 34
  );

  -- Lesson 6: The Classroom Pet
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Classroom Pet', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/91.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'care, feed, gentle, responsible, observe', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Classroom Pet',
    '{"lesson_name": "The Classroom Pet", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "care, feed, gentle, responsible, observe"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 42
  );

  -- Lesson 7: Storm at Sea
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Storm at Sea', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/29.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'fierce, wave, captain, brave, anchor', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Storm at Sea',
    '{"lesson_name": "Storm at Sea", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "fierce, wave, captain, brave, anchor"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 50
  );

  -- Lesson 8: The Ant Colony
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Ant Colony', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'colony, tunnel, carry, teamwork, gather', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Ant Colony',
    '{"lesson_name": "The Ant Colony", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "colony, tunnel, carry, teamwork, gather"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 58
  );

  -- Lesson 9: A New Pet Fish
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A New Pet Fish', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'habitat, tank, breathe, feed, peaceful', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A New Pet Fish',
    '{"lesson_name": "A New Pet Fish", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "habitat, tank, breathe, feed, peaceful"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 66
  );

  -- Lesson 10: Desert Animals
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Desert Animals', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'survive, shade, nocturnal, burrow, adapt', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Desert Animals',
    '{"lesson_name": "Desert Animals", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "survive, shade, nocturnal, burrow, adapt"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 74
  );

  -- Lesson 11: Mail Carriers
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Mail Carriers', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/39.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'deliver, route, package, careful, important', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mail Carriers',
    '{"lesson_name": "Mail Carriers", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "deliver, route, package, careful, important"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 82
  );

  -- Lesson 12: The Frozen Pond
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Frozen Pond', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'reflect, frozen, glide, patient, slippery', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Frozen Pond',
    '{"lesson_name": "The Frozen Pond", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "reflect, frozen, glide, patient, slippery"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 90
  );

  -- Lesson 13: A Busy Market
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Busy Market', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/96.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'vendor, trade, fresh, exchange, bargain', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Busy Market',
    '{"lesson_name": "A Busy Market", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "vendor, trade, fresh, exchange, bargain"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 98
  );

  -- Lesson 14: The Old Oak Tree
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Old Oak Tree', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'ancient, shelter, hollow, sturdy, rings', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Old Oak Tree',
    '{"lesson_name": "The Old Oak Tree", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "ancient, shelter, hollow, sturdy, rings"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 106
  );

  -- Lesson 15: The Rainy Season
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Rainy Season', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/70.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'flood, collect, puddle, overflow, drain', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Rainy Season',
    '{"lesson_name": "The Rainy Season", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "flood, collect, puddle, overflow, drain"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 114
  );

  -- Lesson 16: Bees and Flowers
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Bees and Flowers', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/48.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'pollinate, nectar, hive, transfer, bloom', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Bees and Flowers',
    '{"lesson_name": "Bees and Flowers", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "pollinate, nectar, hive, transfer, bloom"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 122
  );

  -- Lesson 17: Mountain Hikers
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Mountain Hikers', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/62.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'summit, trail, altitude, endurance, descent', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mountain Hikers',
    '{"lesson_name": "Mountain Hikers", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "summit, trail, altitude, endurance, descent"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 130
  );

  -- Lesson 18: The Robot Helper
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Robot Helper', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'program, command, function, error, update', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Robot Helper',
    '{"lesson_name": "The Robot Helper", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "program, command, function, error, update"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 138
  );

  -- Lesson 19: A Long Migration
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Long Migration', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/55.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'migrate, journey, navigate, instinct, flock', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Long Migration',
    '{"lesson_name": "A Long Migration", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "migrate, journey, navigate, instinct, flock"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 146
  );

  -- Lesson 20: The School Play
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The School Play', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/100.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearse, perform, audience, confident, applause', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The School Play',
    '{"lesson_name": "The School Play", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearse, perform, audience, confident, applause"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 154
  );

  -- Lesson 21: Wind Energy
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Wind Energy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'turbine, generate, renewable, resource, efficient', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Wind Energy',
    '{"lesson_name": "Wind Energy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "turbine, generate, renewable, resource, efficient"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 162
  );

  -- Lesson 22: Ocean Explorers
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Ocean Explorers', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/74.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'current, depth, pressure, submarine, discover', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ocean Explorers',
    '{"lesson_name": "Ocean Explorers", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "current, depth, pressure, submarine, discover"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 170
  );

  -- Lesson 23: A Fire Station Visit
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Fire Station Visit', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'emergency, equipment, protect, rescue, prevention', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Fire Station Visit',
    '{"lesson_name": "A Fire Station Visit", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "emergency, equipment, protect, rescue, prevention"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 178
  );

  -- Lesson 24: The Democracy Vote
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Democracy Vote', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'vote, debate, decision, represent, majority', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Democracy Vote',
    '{"lesson_name": "The Democracy Vote", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "vote, debate, decision, represent, majority"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 186
  );

  -- Lesson 25: Saving Water
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Saving Water', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conserve, scarce, precious, reduce, waste', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Saving Water',
    '{"lesson_name": "Saving Water", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conserve, scarce, precious, reduce, waste"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 194
  );

  -- Lesson 26: The Inventor''s Workshop
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Inventor''s Workshop', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/50.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'invent, design, test, failure, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Inventor''s Workshop',
    '{"lesson_name": "The Inventor''s Workshop", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "invent, design, test, failure, improve"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 202
  );

  -- Lesson 27: Wild Horses
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Wild Horses', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'herd, territory, roam, instinct, dominant', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Wild Horses',
    '{"lesson_name": "Wild Horses", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "herd, territory, roam, instinct, dominant"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 210
  );

  -- Lesson 28: Bridges and Engineers
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Bridges and Engineers', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/26.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'structure, support, tension, design, construct', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Bridges and Engineers',
    '{"lesson_name": "Bridges and Engineers", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "structure, support, tension, design, construct"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 218
  );

  -- Lesson 29: A Comet Passes By
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Comet Passes By', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/68.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'orbit, telescope, atmosphere, streak, astronomer', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Comet Passes By',
    '{"lesson_name": "A Comet Passes By", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "orbit, telescope, atmosphere, streak, astronomer"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 226
  );

  -- Lesson 30: The Rainforest Layers
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Rainforest Layers', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/42.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'canopy, species, diverse, layer, ecosystem', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Rainforest Layers',
    '{"lesson_name": "The Rainforest Layers", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "canopy, species, diverse, layer, ecosystem"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'EASY', 234
  );

END $$;
