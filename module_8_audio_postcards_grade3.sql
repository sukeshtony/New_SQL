-- =====================================================
-- Module 8: Audio Postcards - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: e39352c6-f890-464f-be63-557fe374362a
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

  -- Lesson 1: A Morning Stretch
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Morning Stretch', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/47.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe how a morning stretch made you feel ready for the day.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say where you were, describe the stretch, and explain how your body felt after.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Morning Stretch',
    '{"lesson_name": "A Morning Stretch", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe how a morning stretch made you feel ready for the day."}, {"content_key": "instructions", "content_value": "Say where you were, describe the stretch, and explain how your body felt after."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 8
  );

  -- Lesson 2: My Favorite Snack
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Favorite Snack', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/58.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a snack you love and what it feels like to eat it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the snack, describe how it tastes and feels, and say when you usually have it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Favorite Snack',
    '{"lesson_name": "My Favorite Snack", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a snack you love and what it feels like to eat it."}, {"content_key": "instructions", "content_value": "Name the snack, describe how it tastes and feels, and say when you usually have it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 16
  );

  -- Lesson 3: A Sound I Like
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Sound I Like', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a sound in your daily life that you enjoy hearing.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the sound, describe what it sounds like, and say why it makes you feel good.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Sound I Like',
    '{"lesson_name": "A Sound I Like", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a sound in your daily life that you enjoy hearing."}, {"content_key": "instructions", "content_value": "Name the sound, describe what it sounds like, and say why it makes you feel good."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 24
  );

  -- Lesson 4: Outside After School
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Outside After School', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/37.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe what you notice when you go outside after school.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe two or three things you see, hear, or feel when you step outside after school.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Outside After School',
    '{"lesson_name": "Outside After School", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe what you notice when you go outside after school."}, {"content_key": "instructions", "content_value": "Describe two or three things you see, hear, or feel when you step outside after school."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 32
  );

  -- Lesson 5: Something That Made Me Laugh
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something That Made Me Laugh', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share something funny that happened recently and why it made you laugh.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what happened, where you were, and why it was funny to you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something That Made Me Laugh',
    '{"lesson_name": "Something That Made Me Laugh", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share something funny that happened recently and why it made you laugh."}, {"content_key": "instructions", "content_value": "Describe what happened, where you were, and why it was funny to you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 40
  );

  -- Lesson 6: My Favorite Spot at Home
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Favorite Spot at Home', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe your favorite spot at home and why you like being there.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Tell where the spot is, what you do there, and what it feels like when you''re in it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Favorite Spot at Home',
    '{"lesson_name": "My Favorite Spot at Home", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe your favorite spot at home and why you like being there."}, {"content_key": "instructions", "content_value": "Tell where the spot is, what you do there, and what it feels like when you''re in it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 48
  );

  -- Lesson 7: Something I Learned This Week
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Learned This Week', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/57.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share one thing you learned this week and what made it interesting.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name what you learned, explain it in your own words, and say what made it stick with you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Learned This Week',
    '{"lesson_name": "Something I Learned This Week", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share one thing you learned this week and what made it interesting."}, {"content_key": "instructions", "content_value": "Name what you learned, explain it in your own words, and say what made it stick with you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 56
  );

  -- Lesson 8: A Small Problem I Solved
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Small Problem I Solved', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/98.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a small problem you solved recently and how you figured it out.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the problem, explain what you tried, and say how it turned out.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Small Problem I Solved',
    '{"lesson_name": "A Small Problem I Solved", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a small problem you solved recently and how you figured it out."}, {"content_key": "instructions", "content_value": "Name the problem, explain what you tried, and say how it turned out."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 64
  );

  -- Lesson 9: A Place I Visited
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Place I Visited', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/98.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a place you visited recently — even somewhere nearby like a store or park.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say where you went, two or three details about what it was like, and how you felt while you were there.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Place I Visited',
    '{"lesson_name": "A Place I Visited", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a place you visited recently — even somewhere nearby like a store or park."}, {"content_key": "instructions", "content_value": "Say where you went, two or three details about what it was like, and how you felt while you were there."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 72
  );

  -- Lesson 10: A Feeling I Had Today
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Feeling I Had Today', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/31.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe one clear feeling you had today and what caused it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the feeling, explain what made you feel that way, and say what you did with that feeling.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Feeling I Had Today',
    '{"lesson_name": "A Feeling I Had Today", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe one clear feeling you had today and what caused it."}, {"content_key": "instructions", "content_value": "Name the feeling, explain what made you feel that way, and say what you did with that feeling."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 80
  );

  -- Lesson 11: What Teamwork Looked Like Today
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Teamwork Looked Like Today', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment today when you worked with someone else and what happened.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say what you were doing, how you worked together, and what the result was.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Teamwork Looked Like Today',
    '{"lesson_name": "What Teamwork Looked Like Today", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment today when you worked with someone else and what happened."}, {"content_key": "instructions", "content_value": "Say what you were doing, how you worked together, and what the result was."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 88
  );

  -- Lesson 12: Something in Nature I Noticed
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something in Nature I Noticed', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/50.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share something you noticed in nature recently — even something small.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you saw or heard, where you were, and what you thought or wondered about it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something in Nature I Noticed',
    '{"lesson_name": "Something in Nature I Noticed", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share something you noticed in nature recently — even something small."}, {"content_key": "instructions", "content_value": "Describe what you saw or heard, where you were, and what you thought or wondered about it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 96
  );

  -- Lesson 13: Someone I Appreciate
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Someone I Appreciate', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe someone in your life you appreciate and why.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Say who the person is, what they do or say that you appreciate, and how they make you feel.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Someone I Appreciate',
    '{"lesson_name": "Someone I Appreciate", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe someone in your life you appreciate and why."}, {"content_key": "instructions", "content_value": "Say who the person is, what they do or say that you appreciate, and how they make you feel."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 104
  );

  -- Lesson 14: A Question I Can''t Stop Thinking About
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Question I Can''t Stop Thinking About', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/100.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share a question that has been on your mind and why you can''t let it go.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'State the question, explain why it''s been on your mind, and share any ideas you have about the answer.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Question I Can''t Stop Thinking About',
    '{"lesson_name": "A Question I Can''t Stop Thinking About", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share a question that has been on your mind and why you can''t let it go."}, {"content_key": "instructions", "content_value": "State the question, explain why it''s been on your mind, and share any ideas you have about the answer."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 112
  );

  -- Lesson 15: Something I Got Better At
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Got Better At', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you have improved at and how you know you improved.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the skill, describe what it was like at the start, and explain what is different now.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Got Better At',
    '{"lesson_name": "Something I Got Better At", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you have improved at and how you know you improved."}, {"content_key": "instructions", "content_value": "Name the skill, describe what it was like at the start, and explain what is different now."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 120
  );

  -- Lesson 16: A Change I Noticed Over Time
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Change I Noticed Over Time', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/69.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something that has changed — in nature, in your school, or in yourself — over time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what it was like before, what it is like now, and what you think caused the change.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Change I Noticed Over Time',
    '{"lesson_name": "A Change I Noticed Over Time", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something that has changed — in nature, in your school, or in yourself — over time."}, {"content_key": "instructions", "content_value": "Describe what it was like before, what it is like now, and what you think caused the change."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 128
  );

  -- Lesson 17: A Moment When I Felt Proud
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Moment When I Felt Proud', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/81.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a specific moment when you felt proud of yourself and why.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe exactly what happened, why it mattered to you, and what the pride felt like.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Moment When I Felt Proud',
    '{"lesson_name": "A Moment When I Felt Proud", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a specific moment when you felt proud of yourself and why."}, {"content_key": "instructions", "content_value": "Describe exactly what happened, why it mattered to you, and what the pride felt like."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 136
  );

  -- Lesson 18: Something That Confused Me (and Then Clicked)
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something That Confused Me (and Then Clicked)', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something that confused you until it finally made sense.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you were confused about, how long it lasted, and what helped it click.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something That Confused Me (and Then Clicked)',
    '{"lesson_name": "Something That Confused Me (and Then Clicked)", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something that confused you until it finally made sense."}, {"content_key": "instructions", "content_value": "Explain what you were confused about, how long it lasted, and what helped it click."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 144
  );

  -- Lesson 19: How I Help at Home
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How I Help at Home', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/2.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you do to help at home and why it matters.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the task, explain how you do it, and say what it contributes to the people around you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How I Help at Home',
    '{"lesson_name": "How I Help at Home", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you do to help at home and why it matters."}, {"content_key": "instructions", "content_value": "Name the task, explain how you do it, and say what it contributes to the people around you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 152
  );

  -- Lesson 20: What I Notice About My Community
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Notice About My Community', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/35.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share one thing you have noticed about your neighborhood or school community.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you observed, when you noticed it, and what you think it says about your community.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Notice About My Community',
    '{"lesson_name": "What I Notice About My Community", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share one thing you have noticed about your neighborhood or school community."}, {"content_key": "instructions", "content_value": "Describe what you observed, when you noticed it, and what you think it says about your community."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 160
  );

  -- Lesson 21: A Memory That Stuck
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Memory That Stuck', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/9.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a specific memory that you keep coming back to and why it stays with you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Share the memory with enough detail that a listener can picture it, and explain why it matters to you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Memory That Stuck',
    '{"lesson_name": "A Memory That Stuck", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a specific memory that you keep coming back to and why it stays with you."}, {"content_key": "instructions", "content_value": "Share the memory with enough detail that a listener can picture it, and explain why it matters to you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 168
  );

  -- Lesson 22: What Learning Feels Like From the Inside
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Learning Feels Like From the Inside', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe what it actually feels like, in your body and your mind, when you are learning something.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Don''t describe a specific subject — describe the feeling and process of learning itself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Learning Feels Like From the Inside',
    '{"lesson_name": "What Learning Feels Like From the Inside", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe what it actually feels like, in your body and your mind, when you are learning something."}, {"content_key": "instructions", "content_value": "Don''t describe a specific subject — describe the feeling and process of learning itself."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 176
  );

  -- Lesson 23: Something I Changed My Mind About
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Changed My Mind About', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/98.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you used to think or believe that you now think about differently.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you believed before, what changed your thinking, and what you think now.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Changed My Mind About',
    '{"lesson_name": "Something I Changed My Mind About", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you used to think or believe that you now think about differently."}, {"content_key": "instructions", "content_value": "Explain what you believed before, what changed your thinking, and what you think now."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 184
  );

  -- Lesson 24: What I Would Tell My Younger Self
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Would Tell My Younger Self', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/46.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Speak as if you were sending advice back to yourself in first or second grade.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Choose two or three pieces of specific, honest advice you would actually want your younger self to hear.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Would Tell My Younger Self',
    '{"lesson_name": "What I Would Tell My Younger Self", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Speak as if you were sending advice back to yourself in first or second grade."}, {"content_key": "instructions", "content_value": "Choose two or three pieces of specific, honest advice you would actually want your younger self to hear."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 192
  );

  -- Lesson 25: A Question I''m Still Sitting With
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Question I''m Still Sitting With', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share a big question about yourself, people, or the world that you haven''t answered yet.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'State the question clearly, explain where it came from, and share where you are with it — even if you''re nowhere near an answer.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Question I''m Still Sitting With',
    '{"lesson_name": "A Question I''m Still Sitting With", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share a big question about yourself, people, or the world that you haven''t answered yet."}, {"content_key": "instructions", "content_value": "State the question clearly, explain where it came from, and share where you are with it — even if you''re nowhere near an answer."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 200
  );

  -- Lesson 26: What I Want to Be Known For
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Want to Be Known For', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on the kind of person you are working on becoming and what you want people to remember about you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Be specific — not ''kind'' but what kind of kind; not ''smart'' but what kind of thinking or action.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Want to Be Known For',
    '{"lesson_name": "What I Want to Be Known For", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on the kind of person you are working on becoming and what you want people to remember about you."}, {"content_key": "instructions", "content_value": "Be specific — not ''kind'' but what kind of kind; not ''smart'' but what kind of thinking or action."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 208
  );

  -- Lesson 27: How a Small Moment Taught Me Something Big
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How a Small Moment Taught Me Something Big', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a small, specific moment — not a big event — that taught you something meaningful.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the moment in detail, then explain what it quietly taught you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How a Small Moment Taught Me Something Big',
    '{"lesson_name": "How a Small Moment Taught Me Something Big", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a small, specific moment — not a big event — that taught you something meaningful."}, {"content_key": "instructions", "content_value": "Describe the moment in detail, then explain what it quietly taught you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 216
  );

  -- Lesson 28: What I''m Still Learning About Myself
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I''m Still Learning About Myself', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/77.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share something about yourself — a habit, a tendency, a feeling — that you are still figuring out.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Be honest and specific. Describe what you notice, what confuses you, and what you''re still working out.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I''m Still Learning About Myself',
    '{"lesson_name": "What I''m Still Learning About Myself", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share something about yourself — a habit, a tendency, a feeling — that you are still figuring out."}, {"content_key": "instructions", "content_value": "Be honest and specific. Describe what you notice, what confuses you, and what you''re still working out."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 224
  );

  -- Lesson 29: A Sound That Tells a Story
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Sound That Tells a Story', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/27.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a sound from your daily life that carries a memory or meaning beyond just the noise itself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the sound and say where or when you hear it. Explain what it means to you — does it signal something, remind you of something, or make you feel a certain way? Say what your life would feel like without that sound.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Sound That Tells a Story',
    '{"lesson_name": "A Sound That Tells a Story", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a sound from your daily life that carries a memory or meaning beyond just the noise itself."}, {"content_key": "instructions", "content_value": "Name the sound and say where or when you hear it. Explain what it means to you — does it signal something, remind you of something, or make you feel a certain way? Say what your life would feel like without that sound."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 232
  );

  -- Lesson 30: Something I Keep Coming Back To
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something I Keep Coming Back To', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something — a question, a place, a memory, or an idea — that you return to again and again without fully knowing why.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name what it is and describe it clearly. Say how long you have been returning to it and what usually brings you back. Explain what you think it is about that thing that holds your attention. Say whether you think you will ever fully figure it out.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Keep Coming Back To',
    '{"lesson_name": "Something I Keep Coming Back To", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something — a question, a place, a memory, or an idea — that you return to again and again without fully knowing why."}, {"content_key": "instructions", "content_value": "Name what it is and describe it clearly. Say how long you have been returning to it and what usually brings you back. Explain what you think it is about that thing that holds your attention. Say whether you think you will ever fully figure it out."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'EASY', 240
  );

END $$;
