-- =====================================================
-- Module 1: Reading a Paragraph - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: 1c83484e-7cf1-4e26-8503-62cff6d07789
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

  -- Lesson 1: A New Seat
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A New Seat', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'On the first day of school, Marcus had to sit in a new seat far from his best friend. He felt nervous and kept looking across the room. By the end of the day, the girl next to him had shared her eraser and told him a funny joke. Marcus smiled and realized that new seats could lead to new friends.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A New Seat',
    '{"lesson_name": "A New Seat", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "On the first day of school, Marcus had to sit in a new seat far from his best friend. He felt nervous and kept looking across the room. By the end of the day, the girl next to him had shared her eraser and told him a funny joke. Marcus smiled and realized that new seats could lead to new friends."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 1
  );

  -- Lesson 2: The Missing Pencil
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Missing Pencil', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Kezia reached into her pencil case and her favorite pencil was gone. She felt a flutter of worry in her chest. Then she remembered — she had lent it to her neighbor before lunch. She walked over quietly, asked for it back, and her neighbor returned it with a smile. Kezia felt relieved and glad she had just asked.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Missing Pencil',
    '{"lesson_name": "The Missing Pencil", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Kezia reached into her pencil case and her favorite pencil was gone. She felt a flutter of worry in her chest. Then she remembered — she had lent it to her neighbor before lunch. She walked over quietly, asked for it back, and her neighbor returned it with a smile. Kezia felt relieved and glad she had just asked."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 9
  );

  -- Lesson 3: Too Loud
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Too Loud', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During silent reading, Jordan accidentally knocked over his chair and it made a huge CRASH. Everyone looked up. His face turned red. He took a slow breath, picked up the chair, and said, ''Sorry about that.'' His teacher nodded. Jordan went back to his book and felt calmer after a moment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Too Loud',
    '{"lesson_name": "Too Loud", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During silent reading, Jordan accidentally knocked over his chair and it made a huge CRASH. Everyone looked up. His face turned red. He took a slow breath, picked up the chair, and said, ''Sorry about that.'' His teacher nodded. Jordan went back to his book and felt calmer after a moment."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 17
  );

  -- Lesson 4: Sharing the Crayons
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sharing the Crayons', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/95.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At art time, Priya had the only red crayon and three other students needed it. She wanted to use it herself, but she saw her classmates waiting. She decided to share by passing it around and waiting for her turn. When she finally colored her picture, it felt even better than if she had kept it the whole time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing the Crayons',
    '{"lesson_name": "Sharing the Crayons", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "At art time, Priya had the only red crayon and three other students needed it. She wanted to use it herself, but she saw her classmates waiting. She decided to share by passing it around and waiting for her turn. When she finally colored her picture, it felt even better than if she had kept it the whole time."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 25
  );

  -- Lesson 5: A Rainy Day
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Rainy Day', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/36.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The whole class had been excited for outdoor recess, but it started raining right before lunch. Many students groaned. Amara felt disappointed too, but then she had an idea — she asked her teacher if the class could play a quiet game inside. They played a guessing game and laughed the whole time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Rainy Day',
    '{"lesson_name": "A Rainy Day", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The whole class had been excited for outdoor recess, but it started raining right before lunch. Many students groaned. Amara felt disappointed too, but then she had an idea — she asked her teacher if the class could play a quiet game inside. They played a guessing game and laughed the whole time."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 33
  );

  -- Lesson 6: First Day Jitters
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'First Day Jitters', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Tomás had butterflies in his stomach on the first day of third grade. He walked through the door slowly and found a seat near the window. The teacher welcomed everyone by name, and a boy named Felix waved at him. Tomás waved back. By the time they started their first lesson, he felt brave enough to raise his hand.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'First Day Jitters',
    '{"lesson_name": "First Day Jitters", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Tomás had butterflies in his stomach on the first day of third grade. He walked through the door slowly and found a seat near the window. The teacher welcomed everyone by name, and a boy named Felix waved at him. Tomás waved back. By the time they started their first lesson, he felt brave enough to raise his hand."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 41
  );

  -- Lesson 7: The Fair Turn
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Fair Turn', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/29.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Layla had been waiting a long time to use the classroom computer, but when it was finally her turn, she saw that her friend Demi hadn''t had a chance yet. Layla felt a little jealous of Demi''s shorter wait yesterday, but she also knew how much Demi wanted to finish her project. She decided to offer Demi five minutes of her time. Demi was grateful, and Layla felt proud of herself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Fair Turn',
    '{"lesson_name": "The Fair Turn", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Layla had been waiting a long time to use the classroom computer, but when it was finally her turn, she saw that her friend Demi hadn''t had a chance yet. Layla felt a little jealous of Demi''s shorter wait yesterday, but she also knew how much Demi wanted to finish her project. She decided to offer Demi five minutes of her time. Demi was grateful, and Layla felt proud of herself."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 49
  );

  -- Lesson 8: Speaking Up
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Speaking Up', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During group work, Imani noticed that her idea was being ignored. She felt scared to repeat herself but also frustrated that no one had listened. She took a breath and said, ''I have an idea I didn''t get to share yet.'' Everyone paused and listened. Her idea turned out to be the one the group used. Imani learned that speaking up, even when it felt hard, was worth it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Speaking Up',
    '{"lesson_name": "Speaking Up", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During group work, Imani noticed that her idea was being ignored. She felt scared to repeat herself but also frustrated that no one had listened. She took a breath and said, ''I have an idea I didn''t get to share yet.'' Everyone paused and listened. Her idea turned out to be the one the group used. Imani learned that speaking up, even when it felt hard, was worth it."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 57
  );

  -- Lesson 9: When Friends Disagree
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Friends Disagree', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/95.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Omar and his friend Kai both wanted to play different games at recess. Omar felt frustrated, but he could also tell that Kai really meant it. Instead of arguing, Omar suggested they each play one game for five minutes, then switch. Kai agreed right away. They ended up having fun at both games, and neither of them had to give up the whole recess.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Friends Disagree',
    '{"lesson_name": "When Friends Disagree", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Omar and his friend Kai both wanted to play different games at recess. Omar felt frustrated, but he could also tell that Kai really meant it. Instead of arguing, Omar suggested they each play one game for five minutes, then switch. Kai agreed right away. They ended up having fun at both games, and neither of them had to give up the whole recess."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 65
  );

  -- Lesson 10: The Group Project
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Group Project', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The class was making a poster together, and Nadia felt annoyed because one student kept changing ideas at the last minute. She wanted to say something sharp, but she paused and remembered that everyone was trying their best. She suggested they vote on the final idea so everyone felt heard. The group agreed, picked a design, and finished the poster on time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Group Project',
    '{"lesson_name": "The Group Project", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The class was making a poster together, and Nadia felt annoyed because one student kept changing ideas at the last minute. She wanted to say something sharp, but she paused and remembered that everyone was trying their best. She suggested they vote on the final idea so everyone felt heard. The group agreed, picked a design, and finished the poster on time."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 73
  );

  -- Lesson 11: Left Out at Lunch
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Left Out at Lunch', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Chloe walked into the lunchroom and saw that her usual table was full. She felt a wave of sadness and stood by the door for a moment. Then she noticed a girl named Sofia sitting alone. Chloe walked over and asked if she could sit down. Sofia''s face lit up. By the end of lunch, they had found out they both loved the same book series.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Left Out at Lunch',
    '{"lesson_name": "Left Out at Lunch", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Chloe walked into the lunchroom and saw that her usual table was full. She felt a wave of sadness and stood by the door for a moment. Then she noticed a girl named Sofia sitting alone. Chloe walked over and asked if she could sit down. Sofia''s face lit up. By the end of lunch, they had found out they both loved the same book series."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 81
  );

  -- Lesson 12: Keeping a Promise
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Keeping a Promise', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/95.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Dev had promised his friend he wouldn''t tell anyone about a surprise birthday party. Then another classmate asked him directly if anything special was happening. Dev felt tempted to hint at it — he liked being the one who knew things — but he remembered his promise. He just smiled and said, ''I can''t say.'' His friend trusted him more after that.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Keeping a Promise',
    '{"lesson_name": "Keeping a Promise", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Dev had promised his friend he wouldn''t tell anyone about a surprise birthday party. Then another classmate asked him directly if anything special was happening. Dev felt tempted to hint at it — he liked being the one who knew things — but he remembered his promise. He just smiled and said, ''I can''t say.'' His friend trusted him more after that."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 89
  );

  -- Lesson 13: The Too-Fast Game
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Too-Fast Game', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/70.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The class was playing a math relay and everyone was racing to answer first. Zara got so excited she blurted out an answer before finishing the problem and got it wrong. She felt embarrassed and slowed herself down for the next round. This time she checked her work before calling out. She got it right, and her team cheered.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Too-Fast Game',
    '{"lesson_name": "The Too-Fast Game", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The class was playing a math relay and everyone was racing to answer first. Zara got so excited she blurted out an answer before finishing the problem and got it wrong. She felt embarrassed and slowed herself down for the next round. This time she checked her work before calling out. She got it right, and her team cheered."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 97
  );

  -- Lesson 14: Different Ways to Learn
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Different Ways to Learn', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Marcus had trouble remembering spelling words when he read them, but he noticed that when he said them out loud while walking, they stuck in his brain. He felt confused at first — why didn''t reading work for him the way it worked for others? But then he realized he had found his own learning style, and that felt like a real discovery.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Different Ways to Learn',
    '{"lesson_name": "Different Ways to Learn", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Marcus had trouble remembering spelling words when he read them, but he noticed that when he said them out loud while walking, they stuck in his brain. He felt confused at first — why didn''t reading work for him the way it worked for others? But then he realized he had found his own learning style, and that felt like a real discovery."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 105
  );

  -- Lesson 15: A Mistake in Class
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Mistake in Class', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/76.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Lily raised her hand and gave a wrong answer in front of everyone. She felt her cheeks go hot and wanted to disappear. But her teacher said, ''Good try — let''s look at it together.'' Later, Lily raised her hand again and got the next question right. She realized that making a mistake had not been the end of the world — it had been part of learning.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Mistake in Class',
    '{"lesson_name": "A Mistake in Class", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Lily raised her hand and gave a wrong answer in front of everyone. She felt her cheeks go hot and wanted to disappear. But her teacher said, ''Good try — let''s look at it together.'' Later, Lily raised her hand again and got the next question right. She realized that making a mistake had not been the end of the world — it had been part of learning."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 113
  );

  -- Lesson 16: Making Things Right
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Making Things Right', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/55.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During lunch, Aiden had accidentally knocked Mia''s drawing off the table and it had gotten stepped on. He saw her face fall but pretended he hadn''t noticed. That night, he kept thinking about it. The next day at school, he found Mia and said, ''I''m sorry about your drawing. I should have said something right away.'' Mia thanked him, and Aiden felt the tightness in his chest finally let go. He learned that making things right, even late, was still worth doing.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Things Right',
    '{"lesson_name": "Making Things Right", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During lunch, Aiden had accidentally knocked Mia''s drawing off the table and it had gotten stepped on. He saw her face fall but pretended he hadn''t noticed. That night, he kept thinking about it. The next day at school, he found Mia and said, ''I''m sorry about your drawing. I should have said something right away.'' Mia thanked him, and Aiden felt the tightness in his chest finally let go. He learned that making things right, even late, was still worth doing."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 121
  );

  -- Lesson 17: The New Student
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The New Student', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'A new student named Jin arrived in the middle of October. Everyone already had their friends and routines, and Jin sat quietly at the edge of every activity. Soraya watched him for a few days and noticed how he always looked down at his desk during lunch. She decided to ask him what music he liked. His eyes lit up, and they talked for the whole lunch period. Soraya realized that just asking one question could change how someone felt about their whole day.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The New Student',
    '{"lesson_name": "The New Student", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "A new student named Jin arrived in the middle of October. Everyone already had their friends and routines, and Jin sat quietly at the edge of every activity. Soraya watched him for a few days and noticed how he always looked down at his desk during lunch. She decided to ask him what music he liked. His eyes lit up, and they talked for the whole lunch period. Soraya realized that just asking one question could change how someone felt about their whole day."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 129
  );

  -- Lesson 18: When It''s Hard to Focus
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When It''s Hard to Focus', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Evan had a lot of energy and found it hard to sit still during long reading blocks. He would tap his pencil, wiggle in his seat, and sometimes lose track of the page. One day, his teacher showed him how to rest his finger on each line as he read. He also started taking a slow breath before he turned each page. Slowly, he noticed he could follow the story better. He figured out that focus wasn''t about forcing his body to stop — it was about giving his brain a small anchor.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When It''s Hard to Focus',
    '{"lesson_name": "When It''s Hard to Focus", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Evan had a lot of energy and found it hard to sit still during long reading blocks. He would tap his pencil, wiggle in his seat, and sometimes lose track of the page. One day, his teacher showed him how to rest his finger on each line as he read. He also started taking a slow breath before he turned each page. Slowly, he noticed he could follow the story better. He figured out that focus wasn''t about forcing his body to stop — it was about giving his brain a small anchor."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 137
  );

  -- Lesson 19: Two Friends, One Ball
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Two Friends, One Ball', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At recess, both Caden and Rory wanted to use the class''s only basketball. Neither wanted to wait. They stood facing each other for a moment, each gripping one side. Then Rory said, ''What if we play together instead of one of us watching?'' They invented a two-player game where they had to pass before shooting. It was harder and more fun than either of them had expected. They both agreed it was the best recess in weeks.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Two Friends, One Ball',
    '{"lesson_name": "Two Friends, One Ball", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "At recess, both Caden and Rory wanted to use the class''s only basketball. Neither wanted to wait. They stood facing each other for a moment, each gripping one side. Then Rory said, ''What if we play together instead of one of us watching?'' They invented a two-player game where they had to pass before shooting. It was harder and more fun than either of them had expected. They both agreed it was the best recess in weeks."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 145
  );

  -- Lesson 20: The Big Test Worry
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Big Test Worry', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The night before the reading test, Elena could not sleep. Her stomach felt tight and her mind kept cycling through all the things she might forget. She told her mom, who helped her make a short list of what she already knew. Her mom reminded her that worrying tonight would not help her brain tomorrow — sleeping would. Elena put the list on her desk, took a few slow breaths, and closed her eyes. In the morning, she remembered more than she had expected.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Big Test Worry',
    '{"lesson_name": "The Big Test Worry", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The night before the reading test, Elena could not sleep. Her stomach felt tight and her mind kept cycling through all the things she might forget. She told her mom, who helped her make a short list of what she already knew. Her mom reminded her that worrying tonight would not help her brain tomorrow — sleeping would. Elena put the list on her desk, took a few slow breaths, and closed her eyes. In the morning, she remembered more than she had expected."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 153
  );

  -- Lesson 21: Noticing When Someone Is Sad
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Noticing When Someone Is Sad', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/30.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Mabel noticed that her classmate James had been quiet for three days. He wasn''t playing at recess, and he didn''t laugh at the teacher''s jokes like he usually did. Mabel didn''t know what was wrong, and she didn''t want to pry. She simply put a folded note on his desk that said, ''I noticed you seem tired. Hope things get easier.'' James looked at the note and gave her the smallest nod. Mabel learned that noticing and doing something small could matter more than doing something big.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noticing When Someone Is Sad',
    '{"lesson_name": "Noticing When Someone Is Sad", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Mabel noticed that her classmate James had been quiet for three days. He wasn''t playing at recess, and he didn''t laugh at the teacher''s jokes like he usually did. Mabel didn''t know what was wrong, and she didn''t want to pry. She simply put a folded note on his desk that said, ''I noticed you seem tired. Hope things get easier.'' James looked at the note and gave her the smallest nod. Mabel learned that noticing and doing something small could matter more than doing something big."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 161
  );

  -- Lesson 22: Changing the Plan
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Changing the Plan', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/65.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The class was supposed to visit the science museum, but the bus broke down at the last minute and the trip was cancelled. Some students cried. Others were angry. Priya was disappointed too, but she tried to think about what they could still do. When her teacher asked for ideas, she suggested they build the exhibits in class using cardboard and tape. The class ended up making a whole mini-museum by the end of the day, and even the teacher seemed surprised at how good it was.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Changing the Plan',
    '{"lesson_name": "Changing the Plan", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The class was supposed to visit the science museum, but the bus broke down at the last minute and the trip was cancelled. Some students cried. Others were angry. Priya was disappointed too, but she tried to think about what they could still do. When her teacher asked for ideas, she suggested they build the exhibits in class using cardboard and tape. The class ended up making a whole mini-museum by the end of the day, and even the teacher seemed surprised at how good it was."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 169
  );

  -- Lesson 23: Standing Up for a Friend
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Standing Up for a Friend', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/78.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'A group of kids was making fun of how Theo ran during gym class. Theo laughed along, but Nia could see it wasn''t a real laugh — his eyes were flat. After gym, Nia walked up to the group and said, ''I don''t think it was that funny.'' A few kids shrugged and walked away. Later, Theo found Nia and said quietly, ''Thanks for saying something.'' Nia had felt nervous, but she had done it anyway — and that was what mattered.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Standing Up for a Friend',
    '{"lesson_name": "Standing Up for a Friend", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "A group of kids was making fun of how Theo ran during gym class. Theo laughed along, but Nia could see it wasn''t a real laugh — his eyes were flat. After gym, Nia walked up to the group and said, ''I don''t think it was that funny.'' A few kids shrugged and walked away. Later, Theo found Nia and said quietly, ''Thanks for saying something.'' Nia had felt nervous, but she had done it anyway — and that was what mattered."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 177
  );

  -- Lesson 24: A Pattern I Noticed in Myself
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Pattern I Noticed in Myself', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Rosa started writing in a journal every night before bed. After a few weeks, she noticed something: every time she had a hard day at school, she had also skipped lunch or not drunk enough water. She had never connected those things before. She showed the journal to her mom, who said, ''You''re learning how your own body works.'' Rosa realized that paying attention to yourself — not just to your homework or your friends — was its own kind of learning.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Pattern I Noticed in Myself',
    '{"lesson_name": "A Pattern I Noticed in Myself", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Rosa started writing in a journal every night before bed. After a few weeks, she noticed something: every time she had a hard day at school, she had also skipped lunch or not drunk enough water. She had never connected those things before. She showed the journal to her mom, who said, ''You''re learning how your own body works.'' Rosa realized that paying attention to yourself — not just to your homework or your friends — was its own kind of learning."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 185
  );

  -- Lesson 25: Saying No Kindly
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Saying No Kindly', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Bianca''s friend asked her to share her answers on an independent worksheet. Bianca felt pulled in two directions — she didn''t want to get her friend in trouble, but she also knew sharing wouldn''t be right. She said, ''I can''t share mine, but I can help you think it through after.'' Her friend looked frustrated for a moment, then nodded. Later, her friend told her she had figured it out on her own and was glad she had tried. Bianca learned that a kind ''no'' could still protect a friendship.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Saying No Kindly',
    '{"lesson_name": "Saying No Kindly", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Bianca''s friend asked her to share her answers on an independent worksheet. Bianca felt pulled in two directions — she didn''t want to get her friend in trouble, but she also knew sharing wouldn''t be right. She said, ''I can''t share mine, but I can help you think it through after.'' Her friend looked frustrated for a moment, then nodded. Later, her friend told her she had figured it out on her own and was glad she had tried. Bianca learned that a kind ''no'' could still protect a friendship."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 193
  );

  -- Lesson 26: When the Rules Don''t Seem Fair
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When the Rules Don''t Seem Fair', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/26.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The whole class had to miss recess because two students had been talking during a test. Jake thought this was unfair — he hadn''t done anything wrong. He raised his hand calmly and asked the teacher why the whole class had been affected. His teacher explained that she wanted everyone to remember the rule together. Jake still thought the punishment didn''t fit, but he asked respectfully, and his teacher listened respectfully back. That felt like something.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When the Rules Don''t Seem Fair',
    '{"lesson_name": "When the Rules Don''t Seem Fair", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The whole class had to miss recess because two students had been talking during a test. Jake thought this was unfair — he hadn''t done anything wrong. He raised his hand calmly and asked the teacher why the whole class had been affected. His teacher explained that she wanted everyone to remember the rule together. Jake still thought the punishment didn''t fit, but he asked respectfully, and his teacher listened respectfully back. That felt like something."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 201
  );

  -- Lesson 27: Taking Care of Someone Else''s Feelings
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Taking Care of Someone Else''s Feelings', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/92.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Nora''s little brother had just lost his hamster, and he wouldn''t stop crying. Nora felt a little impatient at first — she wanted to play outside — but she sat down next to him anyway. She didn''t say ''it''ll be okay'' because she wasn''t sure it would feel okay for a while. Instead, she said, ''I know you really loved him.'' Her brother leaned against her. Nora realized that sometimes the most caring thing you can do is just stay, without trying to fix anything.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Taking Care of Someone Else''s Feelings',
    '{"lesson_name": "Taking Care of Someone Else''s Feelings", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Nora''s little brother had just lost his hamster, and he wouldn''t stop crying. Nora felt a little impatient at first — she wanted to play outside — but she sat down next to him anyway. She didn''t say ''it''ll be okay'' because she wasn''t sure it would feel okay for a while. Instead, she said, ''I know you really loved him.'' Her brother leaned against her. Nora realized that sometimes the most caring thing you can do is just stay, without trying to fix anything."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 209
  );

  -- Lesson 28: A Long Wait
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Long Wait', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Theo''s class was saving up to buy a new aquarium for the classroom. Each week, they put in a little bit of the money they earned from their school store job. Some kids wanted to buy it right away using the school''s budget, but the teacher explained that saving together was part of the lesson. Week by week, the jar filled up. On the day they finally bought the aquarium, it felt different than it would have if it had just appeared. Theo thought about how many things in life would feel like that jar.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Long Wait',
    '{"lesson_name": "A Long Wait", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Theo''s class was saving up to buy a new aquarium for the classroom. Each week, they put in a little bit of the money they earned from their school store job. Some kids wanted to buy it right away using the school''s budget, but the teacher explained that saving together was part of the lesson. Week by week, the jar filled up. On the day they finally bought the aquarium, it felt different than it would have if it had just appeared. Theo thought about how many things in life would feel like that jar."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 217
  );

  -- Lesson 29: Changing How I Think About Mistakes
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Changing How I Think About Mistakes', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Every time Adriana made a mistake on her math work, she felt her stomach sink. She had always thought mistakes meant she wasn''t smart. But one day her teacher showed the class two papers: one that was perfect on the first try, and one that had crossed-out work and corrections everywhere. She asked which student had learned more. The class was quiet. Then Adriana slowly raised her hand toward the second paper. She started to see her own crossed-out work differently after that.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Changing How I Think About Mistakes',
    '{"lesson_name": "Changing How I Think About Mistakes", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Every time Adriana made a mistake on her math work, she felt her stomach sink. She had always thought mistakes meant she wasn''t smart. But one day her teacher showed the class two papers: one that was perfect on the first try, and one that had crossed-out work and corrections everywhere. She asked which student had learned more. The class was quiet. Then Adriana slowly raised her hand toward the second paper. She started to see her own crossed-out work differently after that."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 225
  );

  -- Lesson 30: The Group Decides Together
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Group Decides Together', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/70.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The class needed to choose one book to read aloud for the month. Everyone had a different favorite. Instead of the teacher picking, she asked the class to each make a short case for their book and then vote. Milo argued for his book by telling them the best part without spoiling it. Others did the same. When the vote was over, Milo''s book didn''t win — but he felt good anyway. He had said his piece, everyone had been heard, and the class had made the choice together. That, he thought, was how decisions should be made.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Group Decides Together',
    '{"lesson_name": "The Group Decides Together", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The class needed to choose one book to read aloud for the month. Everyone had a different favorite. Instead of the teacher picking, she asked the class to each make a short case for their book and then vote. Milo argued for his book by telling them the best part without spoiling it. Others did the same. When the vote was over, Milo''s book didn''t win — but he felt good anyway. He had said his piece, everyone had been heard, and the class had made the choice together. That, he thought, was how decisions should be made."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'EASY', 233
  );

END $$;
