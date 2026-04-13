-- =====================================================
-- Module 2: Story Building with Keywords - Grade 3 (30 Lessons) [HARD]
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: ccff362e-8ca9-4b2c-ad37-faba8542543b
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

  -- [ALL 30 LESSONS]

  -- Lesson 1: Standing Up for Yourself
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Standing Up for Yourself', '3L6 (92%) PRIMARY | 3R3 (86%) SECONDARY | 3-5L1 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'assert, confident, boundary, response, deserve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Standing Up for Yourself',
    '{"lesson_name": "Standing Up for Yourself", "lesson_description": "3L6 (92%) PRIMARY | 3R3 (86%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "assert, confident, boundary, response, deserve"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 2
  );

  -- Lesson 2: A Theory and the Evidence
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Theory and the Evidence', '3L6 (92%) PRIMARY | 3R7 (85%) SECONDARY | 3R2 (80%) SECONDARY | 3L4 (78%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/2.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'theory, evidence, observe, conclude, revise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Theory and the Evidence',
    '{"lesson_name": "A Theory and the Evidence", "lesson_description": "3L6 (92%) PRIMARY | 3R7 (85%) SECONDARY | 3R2 (80%) SECONDARY | 3L4 (78%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "theory, evidence, observe, conclude, revise"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 10
  );

  -- Lesson 3: The Narrator''s Choices
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Narrator''s Choices', '3L6 (92%) PRIMARY | 3R6 (88%) SECONDARY | 3R3 (83%) SECONDARY | 3L5 (79%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'narrator, perspective, reveal, withhold, unreliable', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Narrator''s Choices',
    '{"lesson_name": "The Narrator''s Choices", "lesson_description": "3L6 (92%) PRIMARY | 3R6 (88%) SECONDARY | 3R3 (83%) SECONDARY | 3L5 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "narrator, perspective, reveal, withhold, unreliable"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 18
  );

  -- Lesson 4: Citizens and Community
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Citizens and Community', '3L6 (91%) PRIMARY | 3R2 (85%) SECONDARY | 3R8 (80%) SECONDARY | 3-5L1 (77%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'citizen, responsibility, contribute, represent, participate', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Citizens and Community',
    '{"lesson_name": "Citizens and Community", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (85%) SECONDARY | 3R8 (80%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "citizen, responsibility, contribute, represent, participate"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 26
  );

  -- Lesson 5: Perseverance in Practice
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Perseverance in Practice', '3L6 (91%) PRIMARY | 3R3 (84%) SECONDARY | 3R2 (80%) SECONDARY | 3-5L1 (77%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'persevere, setback, strategy, persistence, progress', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perseverance in Practice',
    '{"lesson_name": "Perseverance in Practice", "lesson_description": "3L6 (91%) PRIMARY | 3R3 (84%) SECONDARY | 3R2 (80%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "persevere, setback, strategy, persistence, progress"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 34
  );

  -- Lesson 6: The Power of Asking Why
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Power of Asking Why', '3L6 (92%) PRIMARY | 3R6 (88%) SECONDARY | 3R2 (83%) SECONDARY | 3R8 (79%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'question, assumption, curiosity, challenge, discover', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Power of Asking Why',
    '{"lesson_name": "The Power of Asking Why", "lesson_description": "3L6 (92%) PRIMARY | 3R6 (88%) SECONDARY | 3R2 (83%) SECONDARY | 3R8 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "question, assumption, curiosity, challenge, discover"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 42
  );

  -- Lesson 7: How Light Bends
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Light Bends', '3L6 (92%) PRIMARY | 3R7 (85%) SECONDARY | 3R2 (81%) SECONDARY | 3L4 (77%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'refraction, wavelength, spectrum, transparent, angle', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Light Bends',
    '{"lesson_name": "How Light Bends", "lesson_description": "3L6 (92%) PRIMARY | 3R7 (85%) SECONDARY | 3R2 (81%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "refraction, wavelength, spectrum, transparent, angle"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 50
  );

  -- Lesson 8: How Maps Carry Perspective
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Maps Carry Perspective', '3L6 (92%) PRIMARY | 3R6 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3R2 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'projection, distort, scale, represent, perspective', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Maps Carry Perspective',
    '{"lesson_name": "How Maps Carry Perspective", "lesson_description": "3L6 (92%) PRIMARY | 3R6 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3R2 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "projection, distort, scale, represent, perspective"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 58
  );

  -- Lesson 9: What Habits Do to the Brain
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Habits Do to the Brain', '3L6 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L4 (77%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/9.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'habit, automatic, strengthen, pathway, intentional', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Habits Do to the Brain',
    '{"lesson_name": "What Habits Do to the Brain", "lesson_description": "3L6 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L4 (77%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "habit, automatic, strengthen, pathway, intentional"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 66
  );

  -- Lesson 10: How Authors Persuade
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Authors Persuade', '3L6 (91%) PRIMARY | 3R8 (89%) SECONDARY | 3R6 (85%) SECONDARY | 3R2 (81%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/10.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'persuade, appeal, claim, evidence, tone', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Authors Persuade',
    '{"lesson_name": "How Authors Persuade", "lesson_description": "3L6 (91%) PRIMARY | 3R8 (89%) SECONDARY | 3R6 (85%) SECONDARY | 3R2 (81%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "persuade, appeal, claim, evidence, tone"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 74
  );

  -- Lesson 11: How Ecosystems Balance
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Ecosystems Balance', '3L6 (93%) PRIMARY | 3R2 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3L4 (79%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'population, competition, collapse, restore, keystone', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Ecosystems Balance',
    '{"lesson_name": "How Ecosystems Balance", "lesson_description": "3L6 (93%) PRIMARY | 3R2 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3L4 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "population, competition, collapse, restore, keystone"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 82
  );

  -- Lesson 12: The History in a Name
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The History in a Name', '3L6 (91%) PRIMARY | 3R2 (85%) SECONDARY | 3R9 (82%) SECONDARY | 3L5 (78%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'origin, etymology, influence, borrow, evolve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The History in a Name',
    '{"lesson_name": "The History in a Name", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (85%) SECONDARY | 3R9 (82%) SECONDARY | 3L5 (78%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "origin, etymology, influence, borrow, evolve"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 90
  );

  -- Lesson 13: What Primary Sources Show
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Primary Sources Show', '3L6 (91%) PRIMARY | 3R6 (89%) SECONDARY | 3R7 (85%) SECONDARY | 3R9 (81%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'primary source, secondary source, interpret, context, bias', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Primary Sources Show',
    '{"lesson_name": "What Primary Sources Show", "lesson_description": "3L6 (91%) PRIMARY | 3R6 (89%) SECONDARY | 3R7 (85%) SECONDARY | 3R9 (81%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "primary source, secondary source, interpret, context, bias"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 98
  );

  -- Lesson 14: How Communities Change
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Communities Change', '3L6 (91%) PRIMARY | 3R2 (86%) SECONDARY | 3R9 (83%) SECONDARY | 3R8 (79%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'transform, influence, resist, adapt, generation', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Communities Change',
    '{"lesson_name": "How Communities Change", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (86%) SECONDARY | 3R9 (83%) SECONDARY | 3R8 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "transform, influence, resist, adapt, generation"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 106
  );

  -- Lesson 15: The Difference Between Knowing and Understanding
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Difference Between Knowing and Understanding', '3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3L4 (79%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'comprehension, transfer, retrieve, construct, insight', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Difference Between Knowing and Understanding',
    '{"lesson_name": "The Difference Between Knowing and Understanding", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3L4 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "comprehension, transfer, retrieve, construct, insight"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 114
  );

  -- Lesson 16: How Figurative Language Works
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Figurative Language Works', '3L6 (91%) PRIMARY | 3L5 (90%) SECONDARY | 3R2 (83%) SECONDARY | 3L3 (79%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'metaphor, simile, connotation, literal, imagery', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Figurative Language Works',
    '{"lesson_name": "How Figurative Language Works", "lesson_description": "3L6 (91%) PRIMARY | 3L5 (90%) SECONDARY | 3R2 (83%) SECONDARY | 3L3 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "metaphor, simile, connotation, literal, imagery"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 122
  );

  -- Lesson 17: Supply, Demand, and Scarcity
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Supply, Demand, and Scarcity', '3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (83%) SECONDARY | 3R7 (79%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'scarcity, demand, supply, trade-off, value', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Supply, Demand, and Scarcity',
    '{"lesson_name": "Supply, Demand, and Scarcity", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (83%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "scarcity, demand, supply, trade-off, value"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 130
  );

  -- Lesson 18: How Perspective Shapes Understanding
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Perspective Shapes Understanding', '3L6 (91%) PRIMARY | 3R6 (89%) SECONDARY | 3R2 (84%) SECONDARY | 3R9 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'vantage point, interpret, empathy, partial, context', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Perspective Shapes Understanding',
    '{"lesson_name": "How Perspective Shapes Understanding", "lesson_description": "3L6 (91%) PRIMARY | 3R6 (89%) SECONDARY | 3R2 (84%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "vantage point, interpret, empathy, partial, context"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 138
  );

  -- Lesson 19: How Arguments Are Structured
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Arguments Are Structured', '3L6 (91%) PRIMARY | 3R8 (90%) SECONDARY | 3R6 (85%) SECONDARY | 3R2 (81%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'claim, reasoning, counterargument, concede, refute', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Arguments Are Structured',
    '{"lesson_name": "How Arguments Are Structured", "lesson_description": "3L6 (91%) PRIMARY | 3R8 (90%) SECONDARY | 3R6 (85%) SECONDARY | 3R2 (81%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "claim, reasoning, counterargument, concede, refute"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 146
  );

  -- Lesson 20: What Makes a Theme Universal
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes a Theme Universal', '3L6 (91%) PRIMARY | 3R2 (88%) SECONDARY | 3R9 (86%) SECONDARY | 3L5 (81%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'theme, universal, convey, recurring, symbol', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes a Theme Universal',
    '{"lesson_name": "What Makes a Theme Universal", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (88%) SECONDARY | 3R9 (86%) SECONDARY | 3L5 (81%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "theme, universal, convey, recurring, symbol"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 154
  );

  -- Lesson 21: How Technology Connects and Separates
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Technology Connects and Separates', '3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (83%) SECONDARY | 3R6 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'access, connect, distract, deliberate, balance', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Technology Connects and Separates',
    '{"lesson_name": "How Technology Connects and Separates", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (83%) SECONDARY | 3R6 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "access, connect, distract, deliberate, balance"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 162
  );

  -- Lesson 22: What Makes Evidence Reliable
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes Evidence Reliable', '3L6 (91%) PRIMARY | 3R8 (90%) SECONDARY | 3R7 (85%) SECONDARY | 3R2 (81%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/22.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'reliable, verify, replicate, bias, conclusion', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes Evidence Reliable',
    '{"lesson_name": "What Makes Evidence Reliable", "lesson_description": "3L6 (91%) PRIMARY | 3R8 (90%) SECONDARY | 3R7 (85%) SECONDARY | 3R2 (81%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "reliable, verify, replicate, bias, conclusion"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 170
  );

  -- Lesson 23: How Advocacy Drives Change
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Advocacy Drives Change', '3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (85%) SECONDARY | 3R9 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/23.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'advocate, persistence, movement, impact, visible', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Advocacy Drives Change',
    '{"lesson_name": "How Advocacy Drives Change", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (85%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "advocate, persistence, movement, impact, visible"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 178
  );

  -- Lesson 24: How Ecosystems Recover
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Ecosystems Recover', '3L6 (92%) PRIMARY | 3R2 (88%) SECONDARY | 3R7 (84%) SECONDARY | 3L4 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'succession, pioneer, resilience, disturbance, stability', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Ecosystems Recover',
    '{"lesson_name": "How Ecosystems Recover", "lesson_description": "3L6 (92%) PRIMARY | 3R2 (88%) SECONDARY | 3R7 (84%) SECONDARY | 3L4 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "succession, pioneer, resilience, disturbance, stability"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 186
  );

  -- Lesson 25: Language and Identity
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Language and Identity', '3L6 (91%) PRIMARY | 3R6 (90%) SECONDARY | 3R2 (85%) SECONDARY | 3R9 (81%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/25.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'dialect, standard, code-switch, stigma, identity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Language and Identity',
    '{"lesson_name": "Language and Identity", "lesson_description": "3L6 (91%) PRIMARY | 3R6 (90%) SECONDARY | 3R2 (85%) SECONDARY | 3R9 (81%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "dialect, standard, code-switch, stigma, identity"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 194
  );

  -- Lesson 26: Cause, Effect, and Complexity
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Cause, Effect, and Complexity', '3L6 (91%) PRIMARY | 3R2 (88%) SECONDARY | 3R7 (84%) SECONDARY | 3R8 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/26.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cause, multiple causation, consequence, unintended, trace', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Cause, Effect, and Complexity',
    '{"lesson_name": "Cause, Effect, and Complexity", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (88%) SECONDARY | 3R7 (84%) SECONDARY | 3R8 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cause, multiple causation, consequence, unintended, trace"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 202
  );

  -- Lesson 27: What Democracy Requires of Citizens
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Democracy Requires of Citizens', '3L6 (91%) PRIMARY | 3R2 (88%) SECONDARY | 3R8 (86%) SECONDARY | 3R6 (82%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/27.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'deliberate, informed, dissent, accountability, compromise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Democracy Requires of Citizens',
    '{"lesson_name": "What Democracy Requires of Citizens", "lesson_description": "3L6 (91%) PRIMARY | 3R2 (88%) SECONDARY | 3R8 (86%) SECONDARY | 3R6 (82%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "deliberate, informed, dissent, accountability, compromise"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 210
  );

  -- Lesson 28: How Individuals Shape Culture
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Individuals Shape Culture', '3L6 (90%) PRIMARY | 3R2 (86%) SECONDARY | 3R9 (83%) SECONDARY | 3R6 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'culture, influence, norm, shift, contribute', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Individuals Shape Culture',
    '{"lesson_name": "How Individuals Shape Culture", "lesson_description": "3L6 (90%) PRIMARY | 3R2 (86%) SECONDARY | 3R9 (83%) SECONDARY | 3R6 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "culture, influence, norm, shift, contribute"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 218
  );

  -- Lesson 29: How Power and Responsibility Are Connected
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Power and Responsibility Are Connected', '3L6 (90%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (84%) SECONDARY | 3R6 (81%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/29.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'power, responsibility, accountable, trust, consequence', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Power and Responsibility Are Connected',
    '{"lesson_name": "How Power and Responsibility Are Connected", "lesson_description": "3L6 (90%) PRIMARY | 3R2 (87%) SECONDARY | 3R8 (84%) SECONDARY | 3R6 (81%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "power, responsibility, accountable, trust, consequence"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 226
  );

  -- Lesson 30: What the Stories We Tell About Ourselves Do
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What the Stories We Tell About Ourselves Do', '3L6 (90%) PRIMARY | 3R2 (87%) SECONDARY | 3R3 (83%) SECONDARY | 3R6 (80%) SECONDARY',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/30.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'narrative, identity, limit, revise, possible', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What the Stories We Tell About Ourselves Do',
    '{"lesson_name": "What the Stories We Tell About Ourselves Do", "lesson_description": "3L6 (90%) PRIMARY | 3R2 (87%) SECONDARY | 3R3 (83%) SECONDARY | 3R6 (80%) SECONDARY", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "narrative, identity, limit, revise, possible"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Story Building with Keywords', 3, NULL, 'HARD', 234
  );

END $$;
