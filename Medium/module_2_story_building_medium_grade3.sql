-- =====================================================
-- Module 2: Story Building with Keywords - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: ccff362e-8ca9-4b2c-ad37-faba8542543b
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

  -- Lesson 1: The Weather Forecast
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Weather Forecast', '3L6 (93%) PRIMARY | 3R3 (83%) SECONDARY | 3-5L1 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/27.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'forecast, temperature, predict, storm, measure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Weather Forecast',
    '{"lesson_name": "The Weather Forecast", "lesson_description": "3L6 (93%) PRIMARY | 3R3 (83%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "forecast, temperature, predict, storm, measure"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 2
  );

  -- Lesson 2: A Map of Our Neighborhood
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Map of Our Neighborhood', '3L6 (92%) PRIMARY | 3R7 (84%) SECONDARY | 3R1 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/29.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'landmark, symbol, distance, represent, legend', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Map of Our Neighborhood',
    '{"lesson_name": "A Map of Our Neighborhood", "lesson_description": "3L6 (92%) PRIMARY | 3R7 (84%) SECONDARY | 3R1 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "landmark, symbol, distance, represent, legend"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 10
  );

  -- Lesson 3: How Animals Stay Safe
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Animals Stay Safe', '3L6 (93%) PRIMARY | 3R2 (84%) SECONDARY | 3R3 (80%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/42.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'camouflage, predator, prey, shelter, adapt', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Animals Stay Safe',
    '{"lesson_name": "How Animals Stay Safe", "lesson_description": "3L6 (93%) PRIMARY | 3R2 (84%) SECONDARY | 3R3 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "camouflage, predator, prey, shelter, adapt"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 18
  );

  -- Lesson 4: Reducing Waste at School
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Reducing Waste at School', '3L6 (92%) PRIMARY | 3R2 (83%) SECONDARY | 3R3 (80%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'waste, reduce, reuse, recycle, landfill', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reducing Waste at School',
    '{"lesson_name": "Reducing Waste at School", "lesson_description": "3L6 (92%) PRIMARY | 3R2 (83%) SECONDARY | 3R3 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "waste, reduce, reuse, recycle, landfill"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 26
  );

  -- Lesson 5: How Seeds Travel
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Seeds Travel', '3L6 (92%) PRIMARY | 3R3 (83%) SECONDARY | 3R2 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/92.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'scatter, float, attach, sprout, disperse', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Seeds Travel',
    '{"lesson_name": "How Seeds Travel", "lesson_description": "3L6 (92%) PRIMARY | 3R3 (83%) SECONDARY | 3R2 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "scatter, float, attach, sprout, disperse"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 34
  );

  -- Lesson 6: Making Choices with Money
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Making Choices with Money', '3L6 (91%) PRIMARY | 3R3 (84%) SECONDARY | 3R2 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/40.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'budget, cost, save, spend, choice', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Choices with Money',
    '{"lesson_name": "Making Choices with Money", "lesson_description": "3L6 (91%) PRIMARY | 3R3 (84%) SECONDARY | 3R2 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "budget, cost, save, spend, choice"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 42
  );

  -- Lesson 7: The Food Web
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Food Web', '3L6 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L4 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/89.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'producer, consumer, energy, habitat, depend', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Food Web',
    '{"lesson_name": "The Food Web", "lesson_description": "3L6 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "producer, consumer, energy, habitat, depend"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 50
  );

  -- Lesson 8: Push, Pull, and Gravity
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Push, Pull, and Gravity', '3L6 (92%) PRIMARY | 3R7 (84%) SECONDARY | 3R2 (80%) SECONDARY | 3L4 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'force, gravity, motion, surface, friction', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Push, Pull, and Gravity',
    '{"lesson_name": "Push, Pull, and Gravity", "lesson_description": "3L6 (92%) PRIMARY | 3R7 (84%) SECONDARY | 3R2 (80%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "force, gravity, motion, surface, friction"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 58
  );

  -- Lesson 9: The Water Cycle
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Water Cycle', '3L6 (93%) PRIMARY | 3R2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L4 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/55.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'evaporate, vapor, condense, precipitation, cycle', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Water Cycle',
    '{"lesson_name": "The Water Cycle", "lesson_description": "3L6 (93%) PRIMARY | 3R2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "evaporate, vapor, condense, precipitation, cycle"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 66
  );

  -- Lesson 10: How Communities Make Decisions
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Communities Make Decisions', '3L6 (91%) PRIMARY | 3R2 (83%) SECONDARY | 3R8 (79%) SECONDARY | 3-5L1 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/94.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'vote, represent, propose, majority, council', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Communities Make Decisions',
    '{"lesson_name": "How Communities Make Decisions", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (83%) SECONDARY | 3R8 (79%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "vote, represent, propose, majority, council"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 74
  );

  -- Lesson 11: Animal Migration
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Animal Migration', '3L6 (92%) PRIMARY | 3R2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L4 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/37.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'migrate, route, instinct, flock, distance', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Animal Migration',
    '{"lesson_name": "Animal Migration", "lesson_description": "3L6 (92%) PRIMARY | 3R2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "migrate, route, instinct, flock, distance"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 82
  );

  -- Lesson 12: Rocks and How They Form
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Rocks and How They Form', '3L6 (92%) PRIMARY | 3R7 (84%) SECONDARY | 3R2 (80%) SECONDARY | 3L4 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/31.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mineral, layer, fossil, texture, identify', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Rocks and How They Form',
    '{"lesson_name": "Rocks and How They Form", "lesson_description": "3L6 (92%) PRIMARY | 3R7 (84%) SECONDARY | 3R2 (80%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "mineral, layer, fossil, texture, identify"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 90
  );

  -- Lesson 13: Reading for Clues
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Reading for Clues', '3R1 (94%) PRIMARY | 3R3 (86%) SECONDARY | 3L4 (80%) SECONDARY | 3-5L1 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'infer, evidence, clue, conclude, suggest', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reading for Clues',
    '{"lesson_name": "Reading for Clues", "lesson_description": "3R1 (94%) PRIMARY | 3R3 (86%) SECONDARY | 3L4 (80%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "infer, evidence, clue, conclude, suggest"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 98
  );

  -- Lesson 14: Different Kinds of Energy
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Different Kinds of Energy', '3L6 (92%) PRIMARY | 3R2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L4 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/59.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'solar, renewable, generate, conserve, source', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Different Kinds of Energy',
    '{"lesson_name": "Different Kinds of Energy", "lesson_description": "3L6 (92%) PRIMARY | 3R2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "solar, renewable, generate, conserve, source"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 106
  );

  -- Lesson 15: The Life Cycle of a Butterfly
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Life Cycle of a Butterfly', '3L6 (93%) PRIMARY | 3R2 (84%) SECONDARY | 3R3 (80%) SECONDARY | 3L4 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'larva, chrysalis, transform, emerge, stage', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Life Cycle of a Butterfly',
    '{"lesson_name": "The Life Cycle of a Butterfly", "lesson_description": "3L6 (93%) PRIMARY | 3R2 (84%) SECONDARY | 3R3 (80%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "larva, chrysalis, transform, emerge, stage"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 114
  );

  -- Lesson 16: Cause and Effect
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Cause and Effect', '3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R1 (82%) SECONDARY | 3-5L1 (78%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cause, effect, impact, relationship, chain', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Cause and Effect',
    '{"lesson_name": "Cause and Effect", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R1 (82%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "cause, effect, impact, relationship, chain"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 122
  );

  -- Lesson 17: Point of View in Stories
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Point of View in Stories', '3L6 (91%) PRIMARY | 3R6 (88%) SECONDARY | 3R9 (84%) SECONDARY | 3R2 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'narrator, perspective, version, compare, bias', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Point of View in Stories',
    '{"lesson_name": "Point of View in Stories", "lesson_description": "3L6 (91%) PRIMARY | 3R6 (88%) SECONDARY | 3R9 (84%) SECONDARY | 3R2 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "narrator, perspective, version, compare, bias"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 130
  );

  -- Lesson 18: Ancient Artifacts
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Ancient Artifacts', '3L6 (92%) PRIMARY | 3R7 (86%) SECONDARY | 3R2 (82%) SECONDARY | 3R3 (78%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'artifact, ancient, preserve, discover, archaeologist', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ancient Artifacts',
    '{"lesson_name": "Ancient Artifacts", "lesson_description": "3L6 (92%) PRIMARY | 3R7 (86%) SECONDARY | 3R2 (82%) SECONDARY | 3R3 (78%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "artifact, ancient, preserve, discover, archaeologist"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 138
  );

  -- Lesson 19: How Laws Protect People
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Laws Protect People', '3L6 (91%) PRIMARY | 3R2 (85%) SECONDARY | 3R8 (81%) SECONDARY | 3-5L1 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/77.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'law, protect, enforce, community, consequence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Laws Protect People',
    '{"lesson_name": "How Laws Protect People", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (85%) SECONDARY | 3R8 (81%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "law, protect, enforce, community, consequence"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 146
  );

  -- Lesson 20: Plant and Animal Partnerships
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Plant and Animal Partnerships', '3L6 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R9 (81%) SECONDARY | 3L4 (77%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/69.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partnership, pollinate, benefit, host, mutualism', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Plant and Animal Partnerships',
    '{"lesson_name": "Plant and Animal Partnerships", "lesson_description": "3L6 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R9 (81%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "partnership, pollinate, benefit, host, mutualism"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 154
  );

  -- Lesson 21: How Inventors Solve Problems
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Inventors Solve Problems', '3L6 (91%) PRIMARY | 3R3 (85%) SECONDARY | 3R2 (82%) SECONDARY | 3R9 (78%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/64.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'inventor, design, test, improve, failure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Inventors Solve Problems',
    '{"lesson_name": "How Inventors Solve Problems", "lesson_description": "3L6 (91%) PRIMARY | 3R3 (85%) SECONDARY | 3R2 (82%) SECONDARY | 3R9 (78%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "inventor, design, test, improve, failure"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 162
  );

  -- Lesson 22: Traditions Across Cultures
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Traditions Across Cultures', '3L6 (91%) PRIMARY | 3R9 (86%) SECONDARY | 3R2 (82%) SECONDARY | 3R6 (78%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'tradition, culture, celebrate, generation, heritage', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Traditions Across Cultures',
    '{"lesson_name": "Traditions Across Cultures", "lesson_description": "3L6 (91%) PRIMARY | 3R9 (86%) SECONDARY | 3R2 (82%) SECONDARY | 3R6 (78%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "tradition, culture, celebrate, generation, heritage"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 170
  );

  -- Lesson 23: Choices and Their Consequences
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Choices and Their Consequences', '3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (83%) SECONDARY | 3R9 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/40.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'consequence, consider, affect, impact, responsible', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choices and Their Consequences',
    '{"lesson_name": "Choices and Their Consequences", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (83%) SECONDARY | 3R9 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "consequence, consider, affect, impact, responsible"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 178
  );

  -- Lesson 24: What Makes Something Fair
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes Something Fair', '3L6 (90%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (84%) SECONDARY | 3R6 (80%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'fair, equal, need, share, majority', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes Something Fair',
    '{"lesson_name": "What Makes Something Fair", "lesson_description": "3L6 (90%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (84%) SECONDARY | 3R6 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "fair, equal, need, share, majority"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 186
  );

  -- Lesson 25: Trade and Barter
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Trade and Barter', '3L6 (90%) PRIMARY | 3R2 (86%) SECONDARY | 3R9 (83%) SECONDARY | 3R3 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'trade, barter, value, goods, exchange', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trade and Barter',
    '{"lesson_name": "Trade and Barter", "lesson_description": "3L6 (90%) PRIMARY | 3R2 (86%) SECONDARY | 3R9 (83%) SECONDARY | 3R3 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "trade, barter, value, goods, exchange"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 194
  );

  -- Lesson 26: How Stories Get Passed Down
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Stories Get Passed Down', '3L6 (91%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (83%) SECONDARY | 3R6 (80%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/2.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'oral, retell, version, detail, memory', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Stories Get Passed Down',
    '{"lesson_name": "How Stories Get Passed Down", "lesson_description": "3L6 (91%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (83%) SECONDARY | 3R6 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "oral, retell, version, detail, memory"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 202
  );

  -- Lesson 27: Taking Care of the Environment
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Taking Care of the Environment', '3L6 (91%) PRIMARY | 3R2 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3R9 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/71.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'stewardship, pollution, natural resource, restore, habitat', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Taking Care of the Environment',
    '{"lesson_name": "Taking Care of the Environment", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3R9 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "stewardship, pollution, natural resource, restore, habitat"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 210
  );

  -- Lesson 28: Cooperation Makes Things Possible
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Cooperation Makes Things Possible', '3L6 (90%) PRIMARY | 3R2 (86%) SECONDARY | 3R3 (83%) SECONDARY | 3R9 (79%) SECONDARY', 'ccff362e-8ca9-4b2c-ad37-faba8542543b',
    'MEDIUM', 'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/10.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cooperate, contribute, achieve, obstacle, strength', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Cooperation Makes Things Possible',
    '{"lesson_name": "Cooperation Makes Things Possible", "lesson_description": "3L6 (90%) PRIMARY | 3R2 (86%) SECONDARY | 3R3 (83%) SECONDARY | 3R9 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "keywords", "content_value": "cooperate, contribute, achieve, obstacle, strength"}, {"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'MEDIUM', 218
  );

END $$;
