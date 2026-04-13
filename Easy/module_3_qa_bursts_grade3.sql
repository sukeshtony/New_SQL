-- =====================================================
-- Module 3: Q&A Bursts (Quick Thinking) - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: be2bcdc0-3737-41a5-af5c-df6b61ed94c2
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

  -- Lesson 1: Morning Routine
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Morning Routine', '3SL1 (91%) PRIMARY | 3L1 (85%) SECONDARY | 3SL6 (82%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Daily habits & readiness ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the first thing you do after you wake up?.What helps you get ready faster in the morning?.What do you eat or drink before school?.What do you put in your backpack each morning?.What helps you feel calm before the school day starts?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Morning Routine',
    '{"lesson_name": "Morning Routine", "lesson_description": "3SL1 (91%) PRIMARY | 3L1 (85%) SECONDARY | 3SL6 (82%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Daily habits & readiness "}, {"content_key": "rapid_questions", "content_value": "What is the first thing you do after you wake up?.What helps you get ready faster in the morning?.What do you eat or drink before school?.What do you put in your backpack each morning?.What helps you feel calm before the school day starts?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 4
  );

  -- Lesson 2: School Day Basics
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'School Day Basics', '3SL1 (90%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (81%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/31.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Classroom routines & belonging ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the first thing you do when you arrive at school?.What subject do you look forward to most each day?.What do you do if you forget a pencil or supply?.What is one rule in your classroom that you think is important?.What do you do when you finish your work early?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Day Basics',
    '{"lesson_name": "School Day Basics", "lesson_description": "3SL1 (90%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (81%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Classroom routines & belonging "}, {"content_key": "rapid_questions", "content_value": "What is the first thing you do when you arrive at school?.What subject do you look forward to most each day?.What do you do if you forget a pencil or supply?.What is one rule in your classroom that you think is important?.What do you do when you finish your work early?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 12
  );

  -- Lesson 3: Recess Fun
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Recess Fun', '3SL1 (90%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (81%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/95.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Play & physical activity ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite game or activity at recess?.Who do you usually play with outside?.What do you do when it rains and recess is inside?.What new game would you like to teach your class?.How do you feel after running around at recess?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Recess Fun',
    '{"lesson_name": "Recess Fun", "lesson_description": "3SL1 (90%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (81%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Play & physical activity "}, {"content_key": "rapid_questions", "content_value": "What is your favorite game or activity at recess?.Who do you usually play with outside?.What do you do when it rains and recess is inside?.What new game would you like to teach your class?.How do you feel after running around at recess?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 20
  );

  -- Lesson 4: Favorite Foods
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Favorite Foods', '3SL1 (89%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (80%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/25.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Food preferences & choices ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite thing to eat for lunch?.What is a food you have never tried but want to?.What snack gives you the most energy?.What food do you always choose on special days?.What is something your family makes that you really love?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Favorite Foods',
    '{"lesson_name": "Favorite Foods", "lesson_description": "3SL1 (89%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Food preferences & choices "}, {"content_key": "rapid_questions", "content_value": "What is your favorite thing to eat for lunch?.What is a food you have never tried but want to?.What snack gives you the most energy?.What food do you always choose on special days?.What is something your family makes that you really love?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 28
  );

  -- Lesson 5: Weekend Activities
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Weekend Activities', '3SL1 (89%) PRIMARY | 3L1 (83%) SECONDARY | 3SL6 (80%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Free time & interests ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite thing to do on a weekend?.Do you prefer staying home or going somewhere on weekends?.What outdoor activity do you enjoy when the weather is nice?.What do you like to do that you don''t have time for during the week?.Who do you love spending time with on weekends?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Weekend Activities',
    '{"lesson_name": "Weekend Activities", "lesson_description": "3SL1 (89%) PRIMARY | 3L1 (83%) SECONDARY | 3SL6 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Free time & interests"}, {"content_key": "rapid_questions", "content_value": "What is your favorite thing to do on a weekend?.Do you prefer staying home or going somewhere on weekends?.What outdoor activity do you enjoy when the weather is nice?.What do you like to do that you don't have time for during the week?.Who do you love spending time with on weekends?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 36
  );

  -- Lesson 6: My Family
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Family', '3SL1 (89%) PRIMARY | 3L1 (83%) SECONDARY | 3SL6 (80%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/73.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Family relationships & connection ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Who is in your family at home?.What is something you like to do with your family?.What is a rule in your family that you think makes sense?.What does your family do to celebrate special days?.Who in your family do you go to when you need help?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Family',
    '{"lesson_name": "My Family", "lesson_description": "3SL1 (89%) PRIMARY | 3L1 (83%) SECONDARY | 3SL6 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Family relationships & connection "}, {"content_key": "rapid_questions", "content_value": "Who is in your family at home?.What is something you like to do with your family?.What is a rule in your family that you think makes sense?.What does your family do to celebrate special days?.Who in your family do you go to when you need help?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 44
  );

  -- Lesson 7: Being a Good Friend
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Being a Good Friend', '3SL1 (89%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (80%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/80.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friendship & loyalty ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does a good friend do when you are having a bad day?.How do you show a friend that you care about them?.What would you do if a friend said something unkind to you?.What is one thing a friend has done that you really appreciated?.How do you make a new friend when you don''t know someone yet?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Being a Good Friend',
    '{"lesson_name": "Being a Good Friend", "lesson_description": "3SL1 (89%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friendship & loyalty "}, {"content_key": "rapid_questions", "content_value": "What does a good friend do when you are having a bad day?.How do you show a friend that you care about them?.What would you do if a friend said something unkind to you?.What is one thing a friend has done that you really appreciated?.How do you make a new friend when you don't know someone yet?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 52
  );

  -- Lesson 8: Feelings Check-In
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Feelings Check-In', '3SL1 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/34.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotional awareness ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one feeling you had today and what caused it?.What do you do when you feel frustrated?.What helps you calm down when you are really upset?.Is it easy or hard for you to talk about your feelings? Why?.What feeling do you wish you had more often?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Feelings Check-In',
    '{"lesson_name": "Feelings Check-In", "lesson_description": "3SL1 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotional awareness "}, {"content_key": "rapid_questions", "content_value": "What is one feeling you had today and what caused it?.What do you do when you feel frustrated?.What helps you calm down when you are really upset?.Is it easy or hard for you to talk about your feelings? Why?.What feeling do you wish you had more often?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 60
  );

  -- Lesson 9: Learning Something New
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Learning Something New', '3SL1 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/73.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Growth mindset & curiosity ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you learned this year that surprised you?.What subject or skill would you love to learn more about?.What do you do when learning something is hard and you feel like giving up?.Who helps you the most when you are trying to learn something new?.How do you know when you have really learned something?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning Something New',
    '{"lesson_name": "Learning Something New", "lesson_description": "3SL1 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Growth mindset & curiosity "}, {"content_key": "rapid_questions", "content_value": "What is something you learned this year that surprised you?.What subject or skill would you love to learn more about?.What do you do when learning something is hard and you feel like giving up?.Who helps you the most when you are trying to learn something new?.How do you know when you have really learned something?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 68
  );

  -- Lesson 10: When I Need Help
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When I Need Help', '3SL1 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Asking for help & support ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Who do you ask for help when you are stuck on schoolwork?.Is it easy or hard to ask for help? What makes it that way?.What do you do first when you don''t understand something?.Has asking for help ever made something better? What happened?.What could your teacher do to make it easier to ask for help?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When I Need Help',
    '{"lesson_name": "When I Need Help", "lesson_description": "3SL1 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Asking for help & support "}, {"content_key": "rapid_questions", "content_value": "Who do you ask for help when you are stuck on schoolwork?.Is it easy or hard to ask for help? What makes it that way?.What do you do first when you don't understand something?.Has asking for help ever made something better? What happened?.What could your teacher do to make it easier to ask for help?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 76
  );

  -- Lesson 11: My Community
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Community', '3SL1 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Neighborhood & belonging', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you like most about the neighborhood you live in?.Who in your community helps people every day?.What is something in your community that you would like to change?.Have you ever done something to help your neighborhood? What was it?.What is one place in your community where people come together?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Community',
    '{"lesson_name": "My Community", "lesson_description": "3SL1 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Neighborhood & belonging "}, {"content_key": "rapid_questions", "content_value": "What do you like most about the neighborhood you live in?.Who in your community helps people every day?.What is something in your community that you would like to change?.Have you ever done something to help your neighborhood? What was it?.What is one place in your community where people come together?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 84
  );

  -- Lesson 12: Favorite Animals
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Favorite Animals', '3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Nature & curiosity ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite animal and why?.What animal would you want as a pet if you could choose any?.What is something surprising you know about an animal?.If you could ask an animal one question, what would it be?.What animal do you think has the hardest life and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Favorite Animals',
    '{"lesson_name": "Favorite Animals", "lesson_description": "3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Nature & curiosity "}, {"content_key": "rapid_questions", "content_value": "What is your favorite animal and why?.What animal would you want as a pet if you could choose any?.What is something surprising you know about an animal?.If you could ask an animal one question, what would it be?.What animal do you think has the hardest life and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 92
  );

  -- Lesson 13: Book Talk
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Book Talk', '3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/53.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Reading preferences & meaning ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What kind of books do you like most — funny, scary, or adventurous?.Who is a character from a book that you would want to be friends with?.Has a book ever changed the way you thought about something? Which one?.What is the best book you have read this year?.What would you want the main character of your own story to be like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Book Talk',
    '{"lesson_name": "Book Talk", "lesson_description": "3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Reading preferences & meaning "}, {"content_key": "rapid_questions", "content_value": "What kind of books do you like most — funny, scary, or adventurous?.Who is a character from a book that you would want to be friends with?.Has a book ever changed the way you thought about something? Which one?.What is the best book you have read this year?.What would you want the main character of your own story to be like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 100
  );

  -- Lesson 14: Problem-Solving
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Problem-Solving', '3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Critical thinking & decision-making ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do first when you have a problem to solve?.Can you think of a time you solved a problem in a creative way?.What is the hardest kind of problem for you to solve? Why?.Do you prefer solving problems by yourself or with help from others?.What is one problem in your classroom that you would like to solve?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Problem-Solving',
    '{"lesson_name": "Problem-Solving", "lesson_description": "3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Critical thinking & decision-making"}, {"content_key": "rapid_questions", "content_value": "What do you do first when you have a problem to solve?.Can you think of a time you solved a problem in a creative way?.What is the hardest kind of problem for you to solve? Why?.Do you prefer solving problems by yourself or with help from others?.What is one problem in your classroom that you would like to solve?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 108
  );

  -- Lesson 15: Kindness in Action
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Kindness in Action', '3SL1 (86%) PRIMARY | 3R9 (82%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Acts of kindness & social connection', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the kindest thing someone has ever done for you?.What is a small act of kindness you can do for someone today?.Why do you think kindness matters even when no one is watching?.Has being kind to someone ever been hard? What happened?.What would school be like if everyone was kind all the time?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Kindness in Action',
    '{"lesson_name": "Kindness in Action", "lesson_description": "3SL1 (86%) PRIMARY | 3R9 (82%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Acts of kindness & social connection"}, {"content_key": "rapid_questions", "content_value": "What is the kindest thing someone has ever done for you?.What is a small act of kindness you can do for someone today?.Why do you think kindness matters even when no one is watching?.Has being kind to someone ever been hard? What happened?.What would school be like if everyone was kind all the time?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 116
  );

  -- Lesson 16: Why Rules Matter
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Rules Matter', '3SL1 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (82%) SECONDARY | 3R3 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Civic responsibility & fairness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why do you think classrooms and schools have rules?.What would happen if there were no rules at recess?.Is there a rule at school that you think is fair? Why?.What would you do if you saw someone break an important rule?.If you could make one new rule for your school, what would it be and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Rules Matter',
    '{"lesson_name": "Why Rules Matter", "lesson_description": "3SL1 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (82%) SECONDARY | 3R3 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Civic responsibility & fairness"}, {"content_key": "rapid_questions", "content_value": "Why do you think classrooms and schools have rules?.What would happen if there were no rules at recess?.Is there a rule at school that you think is fair? Why?.What would you do if you saw someone break an important rule?.If you could make one new rule for your school, what would it be and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 124
  );

  -- Lesson 17: Being Responsible
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Being Responsible', '3SL1 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (82%) SECONDARY | 3R3 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Accountability & follow-through', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you are responsible for at home or school?.What happens when you forget to do something you are responsible for?.How do you remind yourself to follow through on your promises?.What does it feel like to let someone down? What do you do about it?.What is the hardest part of being responsible?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Being Responsible',
    '{"lesson_name": "Being Responsible", "lesson_description": "3SL1 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (82%) SECONDARY | 3R3 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Accountability & follow-through"}, {"content_key": "rapid_questions", "content_value": "What is something you are responsible for at home or school?.What happens when you forget to do something you are responsible for?.How do you remind yourself to follow through on your promises?.What does it feel like to let someone down? What do you do about it?.What is the hardest part of being responsible?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 132
  );

  -- Lesson 18: Different Kinds of Smart
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Different Kinds of Smart', '3SL1 (87%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/68.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Multiple intelligences & self-worth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Do you think there is only one way to be smart? Why or why not?.What is something you are really good at that doesn''t involve school subjects?.Have you ever felt smart doing something that surprised you?.What kind of smart do you admire most in other people?.How do you find out what you are good at?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Different Kinds of Smart',
    '{"lesson_name": "Different Kinds of Smart", "lesson_description": "3SL1 (87%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Multiple intelligences & self-worth"}, {"content_key": "rapid_questions", "content_value": "Do you think there is only one way to be smart? Why or why not?.What is something you are really good at that doesn't involve school subjects?.Have you ever felt smart doing something that surprised you?.What kind of smart do you admire most in other people?.How do you find out what you are good at?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 140
  );

  -- Lesson 19: Taking Care of Our Earth
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Taking Care of Our Earth', '3SL1 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/70.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Environmental responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one thing you do to help take care of the environment?.Why do you think people sometimes throw trash on the ground?.What would happen to animals if we stopped taking care of nature?.What is something your school could do to help the Earth?.If you could change one habit to help the planet, what would it be?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Taking Care of Our Earth',
    '{"lesson_name": "Taking Care of Our Earth", "lesson_description": "3SL1 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Environmental responsibility "}, {"content_key": "rapid_questions", "content_value": "What is one thing you do to help take care of the environment?.Why do you think people sometimes throw trash on the ground?.What would happen to animals if we stopped taking care of nature?.What is something your school could do to help the Earth?.If you could change one habit to help the planet, what would it be?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 148
  );

  -- Lesson 20: Teamwork Stories
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Teamwork Stories', '3SL1 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaboration & shared success', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes a team work really well together?.What do you do when someone on your team isn''t doing their part?.What is harder about working in a group than working alone?.What is your favorite role in a team? Leader, helper, problem-solver?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork Stories',
    '{"lesson_name": "Teamwork Stories", "lesson_description": "3SL1 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Collaboration & shared success "}, {"content_key": "rapid_questions", "content_value": "What makes a team work really well together?.What do you do when someone on your team isn't doing their part?.What is harder about working in a group than working alone?.What is your favorite role in a team? Leader, helper, problem-solver?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 156
  );

  -- Lesson 21: Standing Up for What''s Right
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Standing Up for What''s Right', '3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Ethics & courage', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does it mean to stand up for what is right?.Has there ever been a time you saw something unfair? What did you do?.What makes it hard to speak up when something is wrong?.Who is someone you know that stands up for others? What do they do?.What would you do if a friend asked you to do something you knew was wrong?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Standing Up for What''s Right',
    '{"lesson_name": "Standing Up for What''s Right", "lesson_description": "3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Ethics & courage "}, {"content_key": "rapid_questions", "content_value": "What does it mean to stand up for what is right?.Has there ever been a time you saw something unfair? What did you do?.What makes it hard to speak up when something is wrong?.Who is someone you know that stands up for others? What do they do?.What would you do if a friend asked you to do something you knew was wrong?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 164
  );

  -- Lesson 22: Habits That Help Me Learn
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Habits That Help Me Learn', '3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Metacognition & study strategies ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What habit helps you focus when you have to do something difficult?.Do you work better in quiet or with some noise around you? Why?.What do you do to remember something important?.What is a learning habit you want to build but haven''t yet?.How do you know when you actually understand something versus just memorizing it?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Habits That Help Me Learn',
    '{"lesson_name": "Habits That Help Me Learn", "lesson_description": "3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Metacognition & study strategies"}, {"content_key": "rapid_questions", "content_value": "What habit helps you focus when you have to do something difficult?.Do you work better in quiet or with some noise around you? Why?.What do you do to remember something important?.What is a learning habit you want to build but haven't yet?.How do you know when you actually understand something versus just memorizing it?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 172
  );

  -- Lesson 23: What Leaders Do
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Leaders Do', '3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/77.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Leadership & responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you think makes someone a good leader?.Can a quiet person be a good leader? Why or why not?.What is the difference between a leader and a boss?.What is one thing a leader does that you want to get better at?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Leaders Do',
    '{"lesson_name": "What Leaders Do", "lesson_description": "3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Leadership & responsibility"}, {"content_key": "rapid_questions", "content_value": "What do you think makes someone a good leader?.Can a quiet person be a good leader? Why or why not?.What is the difference between a leader and a boss?.What is one thing a leader does that you want to get better at?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 180
  );

  -- Lesson 24: Making Hard Choices
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Making Hard Choices', '3SL1 (87%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Decision-making & values', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a time you had to make a hard choice. How did you decide?.When two choices are both good, how do you pick one?.What do you do when you make a choice and it turns out to be the wrong one?.Is it harder to make a decision alone or with input from others? Why?.What values or beliefs help you make decisions?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Hard Choices',
    '{"lesson_name": "Making Hard Choices", "lesson_description": "3SL1 (87%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Decision-making & values "}, {"content_key": "rapid_questions", "content_value": "Describe a time you had to make a hard choice. How did you decide?.When two choices are both good, how do you pick one?.What do you do when you make a choice and it turns out to be the wrong one?.Is it harder to make a decision alone or with input from others? Why?.What values or beliefs help you make decisions?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 188
  );

  -- Lesson 25: How My Actions Affect Others
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How My Actions Affect Others', '3SL1 (86%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/89.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Cause and effect in relationships ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Can you think of something you did that had an effect on someone else — good or bad?.Why is it important to think about how your choices might affect other people?.What do you do when you realize your actions hurt someone without meaning to?.How do your actions at school affect the people around you?.What is one small thing you do regularly that you think makes someone else''s day better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How My Actions Affect Others',
    '{"lesson_name": "How My Actions Affect Others", "lesson_description": "3SL1 (86%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Cause and effect in relationships"}, {"content_key": "rapid_questions", "content_value": "Can you think of something you did that had an effect on someone else — good or bad?.Why is it important to think about how your choices might affect other people?.What do you do when you realize your actions hurt someone without meaning to?.How do your actions at school affect the people around you?.What is one small thing you do regularly that you think makes someone else's day better?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 196
  );

  -- Lesson 26: Learning from Mistakes
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Learning from Mistakes', '3SL1 (86%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Growth & self-compassion ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a mistake you made that taught you something important?.How do you feel right after making a mistake, and how do you get past that feeling?.Do you think mistakes are always bad? Why or why not?.What is harder — forgiving yourself or forgiving someone else for a mistake?.What would school feel like if everyone was afraid to make mistakes?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning from Mistakes',
    '{"lesson_name": "Learning from Mistakes", "lesson_description": "3SL1 (86%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Growth & self-compassion "}, {"content_key": "rapid_questions", "content_value": "What is a mistake you made that taught you something important?.How do you feel right after making a mistake, and how do you get past that feeling?.Do you think mistakes are always bad? Why or why not?.What is harder — forgiving yourself or forgiving someone else for a mistake?.What would school feel like if everyone was afraid to make mistakes?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 204
  );

  -- Lesson 27: What It Means to Be Fair
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What It Means to Be Fair', '3SL1 (85%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Justice & equity ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the difference between fair and equal?.Can you think of a time something seemed unfair to you? What happened?.Is giving everyone the same thing always fair? Why or why not?.What do you do when something feels unfair in your classroom?.If you were in charge of making things fair at school, what would you change?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What It Means to Be Fair',
    '{"lesson_name": "What It Means to Be Fair", "lesson_description": "3SL1 (85%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Justice & equity"}, {"content_key": "rapid_questions", "content_value": "What is the difference between fair and equal?.Can you think of a time something seemed unfair to you? What happened?.Is giving everyone the same thing always fair? Why or why not?.What do you do when something feels unfair in your classroom?.If you were in charge of making things fair at school, what would you change?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 212
  );

  -- Lesson 28: What I Want to Be
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Want to Be', '3SL1 (85%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/64.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Purpose & aspiration ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What kind of work do you think you would love to do when you grow up?.What is a skill or interest you have now that might connect to that goal?.Who in your life do you admire for the work they do? What do they do?.What is one thing you can do now to get closer to what you want to be?.If you could be known for one thing when you grow up, what would it be?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Want to Be',
    '{"lesson_name": "What I Want to Be", "lesson_description": "3SL1 (85%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Purpose & aspiration "}, {"content_key": "rapid_questions", "content_value": "What kind of work do you think you would love to do when you grow up?.What is a skill or interest you have now that might connect to that goal?.Who in your life do you admire for the work they do? What do they do?.What is one thing you can do now to get closer to what you want to be?.If you could be known for one thing when you grow up, what would it be?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 220
  );

  -- Lesson 29: Noticing Change Over Time
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Noticing Change Over Time', '3SL1 (85%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/38.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Observation & critical thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something that has changed in your life since first grade that you are glad about?.What is one thing in nature that changes with the seasons that you notice?.How do you know when you have grown — not just taller, but as a person?.What change at school this year surprised you the most?.If you could freeze one thing so it never changed, what would it be and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noticing Change Over Time',
    '{"lesson_name": "Noticing Change Over Time", "lesson_description": "3SL1 (85%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Observation & critical thinking"}, {"content_key": "rapid_questions", "content_value": "What is something that has changed in your life since first grade that you are glad about?.What is one thing in nature that changes with the seasons that you notice?.How do you know when you have grown — not just taller, but as a person?.What change at school this year surprised you the most?.If you could freeze one thing so it never changed, what would it be and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 228
  );

  -- Lesson 30: My Strengths and Challenges
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'My Strengths and Challenges', '3SL1 (84%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Self-assessment & growth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one thing you are really good at that you feel proud of?.What is something you find hard that you are still working on?.Is it easier for you to see your strengths or your challenges? Why?.What would you tell a friend who felt like they had no strengths?.How do your challenges help you grow, even when they''re frustrating?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Strengths and Challenges',
    '{"lesson_name": "My Strengths and Challenges", "lesson_description": "3SL1 (84%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Self-assessment & growth "}, {"content_key": "rapid_questions", "content_value": "What is one thing you are really good at that you feel proud of?.What is something you find hard that you are still working on?.Is it easier for you to see your strengths or your challenges? Why?.What would you tell a friend who felt like they had no strengths?.How do your challenges help you grow, even when they're frustrating?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'EASY', 236
  );

END $$;
