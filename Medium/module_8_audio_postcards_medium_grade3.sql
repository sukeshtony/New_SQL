-- =====================================================
-- Module 8: Audio Postcards - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: e39352c6-f890-464f-be63-557fe374362a
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

  -- Lesson 1: Something Beautiful in an Unexpected Place
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something Beautiful in an Unexpected Place', '3SL4 (92%) PRIMARY | 3SL6 (88%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something beautiful or interesting you noticed somewhere you wouldn''t normally expect it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say exactly where you were and what you noticed. Describe it using at least two senses. Explain why it surprised you or why it stood out.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something Beautiful in an Unexpected Place',
    '{"lesson_name": "Something Beautiful in an Unexpected Place", "lesson_description": "3SL4 (92%) PRIMARY | 3SL6 (88%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something beautiful or interesting you noticed somewhere you wouldn''t normally expect it."}, {"content_key": "instructions", "content_value": "Say exactly where you were and what you noticed. Describe it using at least two senses. Explain why it surprised you or why it stood out."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 8
  );

  -- Lesson 2: Something I Made From Scratch
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Made From Scratch', '3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you made recently -- a drawing, a meal, a model, a story, anything -- and what the process was like.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name what you made and explain why you decided to make it. Describe one moment where it got difficult or didn''t go as planned. Say how it turned out and whether you''re satisfied with it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Made From Scratch',
    '{"lesson_name": "Something I Made From Scratch", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you made recently \u2014 a drawing, a meal, a model, a story, anything \u2014 and what the process was like."}, {"content_key": "instructions", "content_value": "Name what you made and explain why you decided to make it. Describe one moment where it got difficult or didn''t go as planned. Say how it turned out and whether you''re satisfied with it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 16
  );

  -- Lesson 3: My Favorite Kind of Weather
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Favorite Kind of Weather', '3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe your favorite type of weather in detail and share a specific memory connected to it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what the weather looks, feels, and smells like using specific details. Explain what you love most about it and what it makes you want to do. Share one specific memory you have from a day with that weather.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Favorite Kind of Weather',
    '{"lesson_name": "My Favorite Kind of Weather", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe your favorite type of weather in detail and share a specific memory connected to it."}, {"content_key": "instructions", "content_value": "Describe what the weather looks, feels, and smells like using specific details. Explain what you love most about it and what it makes you want to do. Share one specific memory you have from a day with that weather."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 24
  );

  -- Lesson 4: A Time I Had to Start Over
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Time I Had to Start Over', '3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time when you had to start something over from scratch and what that experience was like.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say what you were working on and what went wrong that made starting over necessary. Describe how it felt to begin again. Explain what you did differently the second time and how it turned out.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Time I Had to Start Over',
    '{"lesson_name": "A Time I Had to Start Over", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time when you had to start something over from scratch and what that experience was like."}, {"content_key": "instructions", "content_value": "Say what you were working on and what went wrong that made starting over necessary. Describe how it felt to begin again. Explain what you did differently the second time and how it turned out."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 32
  );

  -- Lesson 5: My Neighborhood at Two Different Times of Day
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Neighborhood at Two Different Times of Day', '3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (80%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe the same street, park, or outdoor space near you at two different times of day and how it changes.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the place and describe what it looks and sounds like at the first time of day. Then describe it at a different time of day. Explain what makes the biggest difference between the two versions of that place.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Neighborhood at Two Different Times of Day',
    '{"lesson_name": "My Neighborhood at Two Different Times of Day", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe the same street, park, or outdoor space near you at two different times of day and how it changes."}, {"content_key": "instructions", "content_value": "Name the place and describe what it looks and sounds like at the first time of day. Then describe it at a different time of day. Explain what makes the biggest difference between the two versions of that place."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 40
  );

  -- Lesson 6: A Time I Helped Cook or Prepare a Meal
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Time I Helped Cook or Prepare a Meal', '3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (80%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/68.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time you helped make a meal or snack and what your role was.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say what you were making and who you were making it with. Describe the specific thing you did to help. Say what you noticed or learned during the process that you didn''t expect.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Time I Helped Cook or Prepare a Meal',
    '{"lesson_name": "A Time I Helped Cook or Prepare a Meal", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time you helped make a meal or snack and what your role was."}, {"content_key": "instructions", "content_value": "Say what you were making and who you were making it with. Describe the specific thing you did to help. Say what you noticed or learned during the process that you didn''t expect."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 48
  );

  -- Lesson 7: A School Day That Surprised Me
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A School Day That Surprised Me', '3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/39.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a school day that turned out completely differently from what you expected.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say what you expected the day to be like. Describe what actually happened that surprised you. Explain how you adjusted to it. Say whether the surprise ended up being good, bad, or something in between.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A School Day That Surprised Me',
    '{"lesson_name": "A School Day That Surprised Me", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a school day that turned out completely differently from what you expected."}, {"content_key": "instructions", "content_value": "Say what you expected the day to be like. Describe what actually happened that surprised you. Explain how you adjusted to it. Say whether the surprise ended up being good, bad, or something in between."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 56
  );

  -- Lesson 8: Two Very Different Places I Know
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Two Very Different Places I Know', '3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Compare two places you know well that feel completely different from each other.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name both places and describe what makes each one feel distinct. Focus on what you notice with your senses in each place. Say what you go to each place for or what each one gives you. Explain which one you would choose if you could only visit one for the rest of the year.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Two Very Different Places I Know',
    '{"lesson_name": "Two Very Different Places I Know", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Compare two places you know well that feel completely different from each other."}, {"content_key": "instructions", "content_value": "Name both places and describe what makes each one feel distinct. Focus on what you notice with your senses in each place. Say what you go to each place for or what each one gives you. Explain which one you would choose if you could only visit one for the rest of the year."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 64
  );

  -- Lesson 9: A Conversation I Keep Thinking About
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Conversation I Keep Thinking About', '3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/97.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a conversation that has stayed with you and explain why you keep returning to it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe who you talked with and where the conversation happened. Say what was discussed -- you don''t need to share the full details, just enough for a listener to understand. Explain what made it stick. Say what question or idea it left you with.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Conversation I Keep Thinking About',
    '{"lesson_name": "A Conversation I Keep Thinking About", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a conversation that has stayed with you and explain why you keep returning to it."}, {"content_key": "instructions", "content_value": "Describe who you talked with and where the conversation happened. Say what was discussed \u2014 you don''t need to share the full details, just enough for a listener to understand. Explain what made it stick. Say what question or idea it left you with."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 72
  );

  -- Lesson 10: Something That Used to Scare Me
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something That Used to Scare Me', '3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you used to be afraid of and explain what changed.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what the fear was and what it felt like. Say when or how it started to change for you. Explain what you think actually helped -- was it experience, information, or just time? Say whether any trace of the fear is still there.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something That Used to Scare Me',
    '{"lesson_name": "Something That Used to Scare Me", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you used to be afraid of and explain what changed."}, {"content_key": "instructions", "content_value": "Describe what the fear was and what it felt like. Say when or how it started to change for you. Explain what you think actually helped \u2014 was it experience, information, or just time? Say whether any trace of the fear is still there."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 80
  );

  -- Lesson 11: How I Prepared for Something That Mattered
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How I Prepared for Something That Mattered', '3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe how you prepared for something important to you -- a test, a performance, a game, or a presentation -- and how the preparation actually went.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say what the event was and why it mattered to you. Describe specifically what you did to prepare. Explain whether your preparation helped the way you expected. Say one thing you would do differently to prepare next time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How I Prepared for Something That Mattered',
    '{"lesson_name": "How I Prepared for Something That Mattered", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe how you prepared for something important to you \u2014 a test, a performance, a game, or a presentation \u2014 and how the preparation actually went."}, {"content_key": "instructions", "content_value": "Say what the event was and why it mattered to you. Describe specifically what you did to prepare. Explain whether your preparation helped the way you expected. Say one thing you would do differently to prepare next time."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 88
  );

  -- Lesson 12: A Time I Noticed Someone Else Needed Help
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Time I Noticed Someone Else Needed Help', '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment when you noticed someone near you needed help -- and what you did or didn''t do.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you observed that told you something was wrong or difficult for that person. Say what you decided to do -- whether you stepped in or didn''t, and why. Describe what happened. Say what you think about it now.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Time I Noticed Someone Else Needed Help',
    '{"lesson_name": "A Time I Noticed Someone Else Needed Help", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment when you noticed someone near you needed help \u2014 and what you did or didn''t do."}, {"content_key": "instructions", "content_value": "Describe what you observed that told you something was wrong or difficult for that person. Say what you decided to do \u2014 whether you stepped in or didn''t, and why. Describe what happened. Say what you think about it now."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 96
  );

  -- Lesson 13: My Classroom at Two Very Different Moments
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Classroom at Two Very Different Moments', '3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (80%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe your classroom during two very different moments in the school day and how it changes.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Choose two moments -- like silent reading and group work, or first thing in the morning and the last five minutes. Describe what you see, hear, and feel during each one. Explain what makes each moment feel distinct. Say which version of the classroom you like best and why.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Classroom at Two Very Different Moments',
    '{"lesson_name": "My Classroom at Two Very Different Moments", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe your classroom during two very different moments in the school day and how it changes."}, {"content_key": "instructions", "content_value": "Choose two moments \u2014 like silent reading and group work, or first thing in the morning and the last five minutes. Describe what you see, hear, and feel during each one. Explain what makes each moment feel distinct. Say which version of the classroom you like best and why."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 104
  );

  -- Lesson 14: Something I Observed About an Animal
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Observed About an Animal', '3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (80%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/49.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share a detailed observation you''ve made about an animal -- a pet, a wild animal, or one you studied -- and what question it raised for you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the animal and where you observed it. Say specifically what you noticed -- a behavior, a habit, a reaction. Explain why that observation stood out to you. Share one question it made you want to answer.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Observed About an Animal',
    '{"lesson_name": "Something I Observed About an Animal", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share a detailed observation you''ve made about an animal \u2014 a pet, a wild animal, or one you studied \u2014 and what question it raised for you."}, {"content_key": "instructions", "content_value": "Describe the animal and where you observed it. Say specifically what you noticed \u2014 a behavior, a habit, a reaction. Explain why that observation stood out to you. Share one question it made you want to answer."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 112
  );

  -- Lesson 15: A Day That Started Badly and Turned Around
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Day That Started Badly and Turned Around', '3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (80%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/42.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a day that began poorly but improved -- and what made the difference.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what went wrong at the start of the day and how it affected your mood. Say when and how things started to shift. Explain what specifically helped -- was it something someone did, something you decided, or just time? Say what you took away from the experience.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Day That Started Badly and Turned Around',
    '{"lesson_name": "A Day That Started Badly and Turned Around", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (80%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a day that began poorly but improved \u2014 and what made the difference."}, {"content_key": "instructions", "content_value": "Describe what went wrong at the start of the day and how it affected your mood. Say when and how things started to shift. Explain what specifically helped \u2014 was it something someone did, something you decided, or just time? Say what you took away from the experience."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 120
  );

  -- Lesson 16: A Time I Disagreed With Someone and We Were Both Partly Right
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Time I Disagreed With Someone and We Were Both Partly Right', '3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/23.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a disagreement where you later realized both sides had something valid.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say what the disagreement was about. Describe your position and the other person''s clearly. Explain when and how you realized both sides had a point. Say what you think about the situation now that you''ve had some distance from it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Time I Disagreed With Someone and We Were Both Partly Right',
    '{"lesson_name": "A Time I Disagreed With Someone and We Were Both Partly Right", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a disagreement where you later realized both sides had something valid."}, {"content_key": "instructions", "content_value": "Say what the disagreement was about. Describe your position and the other person''s clearly. Explain when and how you realized both sides had a point. Say what you think about the situation now that you''ve had some distance from it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 128
  );

  -- Lesson 17: Two Things I Want That Pull in Different Directions
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Two Things I Want That Pull in Different Directions', '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/22.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a situation where you wanted two things that couldn''t both happen at the same time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say clearly what the two things were and why each one mattered to you. Describe what it felt like to want both at the same time. Explain what you decided and how you made that choice. Say whether you think you made the right call.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Two Things I Want That Pull in Different Directions',
    '{"lesson_name": "Two Things I Want That Pull in Different Directions", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a situation where you wanted two things that couldn''t both happen at the same time."}, {"content_key": "instructions", "content_value": "Say clearly what the two things were and why each one mattered to you. Describe what it felt like to want both at the same time. Explain what you decided and how you made that choice. Say whether you think you made the right call."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 136
  );

  -- Lesson 18: A Person Who Sees Something Differently From Me
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Person Who Sees Something Differently From Me', '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/74.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe someone in your life whose perspective on something is genuinely different from yours -- and what you''ve learned from that difference.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say who the person is and what they see or think differently from you. Give a specific example of the difference. Explain whether their view has changed yours at all, even a little. Say what you think is valuable about having someone around who sees things differently.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Person Who Sees Something Differently From Me',
    '{"lesson_name": "A Person Who Sees Something Differently From Me", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe someone in your life whose perspective on something is genuinely different from yours \u2014 and what you''ve learned from that difference."}, {"content_key": "instructions", "content_value": "Say who the person is and what they see or think differently from you. Give a specific example of the difference. Explain whether their view has changed yours at all, even a little. Say what you think is valuable about having someone around who sees things differently."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 144
  );

  -- Lesson 19: Something I Know That Most People My Age Don''t
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Know That Most People My Age Don''t', '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share a piece of knowledge or skill you have that not many people your age are likely to have -- and how you got it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the knowledge or skill. Explain where it came from -- who taught you, or how you learned it. Describe what it actually involves so a listener could understand it. Say why you''re glad you have it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Know That Most People My Age Don''t',
    '{"lesson_name": "Something I Know That Most People My Age Don''t", "lesson_description": "3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share a piece of knowledge or skill you have that not many people your age are likely to have \u2014 and how you got it."}, {"content_key": "instructions", "content_value": "Name the knowledge or skill. Explain where it came from \u2014 who taught you, or how you learned it. Describe what it actually involves so a listener could understand it. Say why you''re glad you have it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 152
  );

  -- Lesson 20: Something I Do When No One Is Watching
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Do When No One Is Watching', '3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you do when you''re alone -- a habit, a routine, a small ritual -- and what it tells you about yourself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you do and when or where you do it. Explain why you do it -- is it habit, comfort, curiosity, or something else? Say whether you think it would feel different if someone were watching. Share what you think it reveals about who you are.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Do When No One Is Watching',
    '{"lesson_name": "Something I Do When No One Is Watching", "lesson_description": "3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you do when you''re alone \u2014 a habit, a routine, a small ritual \u2014 and what it tells you about yourself."}, {"content_key": "instructions", "content_value": "Describe what you do and when or where you do it. Explain why you do it \u2014 is it habit, comfort, curiosity, or something else? Say whether you think it would feel different if someone were watching. Share what you think it reveals about who you are."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 160
  );

  -- Lesson 21: What I Notice About How I Learn Best
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Notice About How I Learn Best', '3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/31.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share what you''ve figured out about the conditions in which you actually learn and remember things best.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe one or two specific conditions that help you learn -- time of day, type of task, environment, or approach. Give a real example of a time those conditions helped. Say what makes it hard to learn, based on what you know about yourself. Explain what you''re still figuring out.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Notice About How I Learn Best',
    '{"lesson_name": "What I Notice About How I Learn Best", "lesson_description": "3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share what you''ve figured out about the conditions in which you actually learn and remember things best."}, {"content_key": "instructions", "content_value": "Describe one or two specific conditions that help you learn \u2014 time of day, type of task, environment, or approach. Give a real example of a time those conditions helped. Say what makes it hard to learn, based on what you know about yourself. Explain what you''re still figuring out."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 168
  );

  -- Lesson 22: A Moment When I Noticed My Own Reaction
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Moment When I Noticed My Own Reaction', '3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment when you caught yourself having a reaction -- to a situation, a person, or something you heard -- and what you did with it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the situation and your reaction. Say whether the reaction surprised you. Explain what you decided to do with it -- did you act on it, hold it back, or examine it? Say what you learned about yourself from noticing it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Moment When I Noticed My Own Reaction',
    '{"lesson_name": "A Moment When I Noticed My Own Reaction", "lesson_description": "3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment when you caught yourself having a reaction \u2014 to a situation, a person, or something you heard \u2014 and what you did with it."}, {"content_key": "instructions", "content_value": "Describe the situation and your reaction. Say whether the reaction surprised you. Explain what you decided to do with it \u2014 did you act on it, hold it back, or examine it? Say what you learned about yourself from noticing it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 176
  );

  -- Lesson 23: A Time I Was More Capable Than I Expected
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Time I Was More Capable Than I Expected', '3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (81%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment when you did something you weren''t sure you could do -- and what it showed you about yourself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what the task or situation was and why you weren''t sure you could handle it. Say what happened when you tried. Describe the moment you realized you were going to be okay. Explain what this experience changed or confirmed about how you see yourself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Time I Was More Capable Than I Expected',
    '{"lesson_name": "A Time I Was More Capable Than I Expected", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (81%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment when you did something you weren''t sure you could do \u2014 and what it showed you about yourself."}, {"content_key": "instructions", "content_value": "Describe what the task or situation was and why you weren''t sure you could handle it. Say what happened when you tried. Describe the moment you realized you were going to be okay. Explain what this experience changed or confirmed about how you see yourself."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 184
  );

  -- Lesson 24: What Patience Actually Felt Like
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Patience Actually Felt Like', '3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a real experience that required patience and what the waiting actually felt like from the inside.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the situation and how long it lasted. Describe honestly what the waiting felt like -- not just ''hard'' but specifically what was happening in your mind and body. Say what you did to get through it. Explain what you think patience actually is, based on that experience.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Patience Actually Felt Like',
    '{"lesson_name": "What Patience Actually Felt Like", "lesson_description": "3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a real experience that required patience and what the waiting actually felt like from the inside."}, {"content_key": "instructions", "content_value": "Name the situation and how long it lasted. Describe honestly what the waiting felt like \u2014 not just ''hard'' but specifically what was happening in your mind and body. Say what you did to get through it. Explain what you think patience actually is, based on that experience."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 192
  );

  -- Lesson 25: Something I Believed That Turned Out to Be More Complicated
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Believed That Turned Out to Be More Complicated', '3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you believed simply and clearly that you now understand is more layered than you thought.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'State what you believed. Describe when and how you started to see it was more complicated -- was it an experience, something you read, or something someone said? Explain what the more complicated version looks like. Say where you are now with it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Believed That Turned Out to Be More Complicated',
    '{"lesson_name": "Something I Believed That Turned Out to Be More Complicated", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you believed simply and clearly that you now understand is more layered than you thought."}, {"content_key": "instructions", "content_value": "State what you believed. Describe when and how you started to see it was more complicated \u2014 was it an experience, something you read, or something someone said? Explain what the more complicated version looks like. Say where you are now with it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 200
  );

  -- Lesson 26: What I Would Do Differently
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Would Do Differently', '3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/65.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a specific situation from this year that you''ve replayed in your mind -- and explain what you would do differently if it happened again.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the situation clearly enough for a listener to understand what happened. Say what you did at the time. Explain what you wish you had done instead and why. Say what this tells you about what you''ve learned since then.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Would Do Differently',
    '{"lesson_name": "What I Would Do Differently", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a specific situation from this year that you''ve replayed in your mind \u2014 and explain what you would do differently if it happened again."}, {"content_key": "instructions", "content_value": "Describe the situation clearly enough for a listener to understand what happened. Say what you did at the time. Explain what you wish you had done instead and why. Say what this tells you about what you''ve learned since then."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 208
  );

  -- Lesson 27: Something I''m Working on Changing About How I Respond
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I''m Working on Changing About How I Respond', '3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a habit in how you respond to situations that you''ve noticed and are actively trying to change.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the habit clearly. Say when you first noticed it about yourself. Explain why you want to change it -- what is it costing you or others? Describe what you are actively trying to do instead and how it''s going so far.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I''m Working on Changing About How I Respond',
    '{"lesson_name": "Something I''m Working on Changing About How I Respond", "lesson_description": "3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a habit in how you respond to situations that you''ve noticed and are actively trying to change."}, {"content_key": "instructions", "content_value": "Name the habit clearly. Say when you first noticed it about yourself. Explain why you want to change it \u2014 what is it costing you or others? Describe what you are actively trying to do instead and how it''s going so far."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 216
  );

  -- Lesson 28: What Makes My Classroom a Good or Hard Place to Learn
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes My Classroom a Good or Hard Place to Learn', '3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share specific observations about what helps and what gets in the way of learning in your classroom.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe one or two things that genuinely help you learn in your classroom -- be specific, not general. Describe one thing that makes it harder. Explain what you think would improve the learning environment. Say what you think your own role is in making the classroom better or worse.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes My Classroom a Good or Hard Place to Learn',
    '{"lesson_name": "What Makes My Classroom a Good or Hard Place to Learn", "lesson_description": "3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share specific observations about what helps and what gets in the way of learning in your classroom."}, {"content_key": "instructions", "content_value": "Describe one or two things that genuinely help you learn in your classroom \u2014 be specific, not general. Describe one thing that makes it harder. Explain what you think would improve the learning environment. Say what you think your own role is in making the classroom better or worse."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 224
  );

  -- Lesson 29: A Time Someone Surprised Me With Unexpected Kindness
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Time Someone Surprised Me With Unexpected Kindness', '3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/57.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time when someone did something kind for you that you didn''t expect -- and what it made you think.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the situation and what happened. Say who the person was -- you don''t need to use their name. Explain why the kindness surprised you. Say what it made you feel and what it made you want to do differently.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Time Someone Surprised Me With Unexpected Kindness',
    '{"lesson_name": "A Time Someone Surprised Me With Unexpected Kindness", "lesson_description": "3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L3 (82%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time when someone did something kind for you that you didn''t expect \u2014 and what it made you think."}, {"content_key": "instructions", "content_value": "Describe the situation and what happened. Say who the person was \u2014 you don''t need to use their name. Explain why the kindness surprised you. Say what it made you feel and what it made you want to do differently."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 232
  );

  -- Lesson 30: A Time I Said the Right Thing Without Planning To
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Time I Said the Right Thing Without Planning To', '3SL4 (84%) PRIMARY | 3SL6 (80%) PRIMARY | 3L2 (77%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'MEDIUM', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment when exactly the right words came out of your mouth without you thinking them through first -- and what that told you about yourself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the situation and what you said. Explain why it was the right thing -- what effect did it have? Say whether it surprised you that those words came. Reflect on what you think it shows about who you are, beneath the moments you plan carefully.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Time I Said the Right Thing Without Planning To',
    '{"lesson_name": "A Time I Said the Right Thing Without Planning To", "lesson_description": "3SL4 (84%) PRIMARY | 3SL6 (80%) PRIMARY | 3L2 (77%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment when exactly the right words came out of your mouth without you thinking them through first \u2014 and what that told you about yourself."}, {"content_key": "instructions", "content_value": "Describe the situation and what you said. Explain why it was the right thing \u2014 what effect did it have? Say whether it surprised you that those words came. Reflect on what you think it shows about who you are, beneath the moments you plan carefully."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'MEDIUM', 240
  );

END $$;
