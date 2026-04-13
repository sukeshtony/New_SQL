-- =====================================================
-- Module 3: Q&A Bursts - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: be2bcdc0-3737-41a5-af5c-df6b61ed94c2
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

  -- Lesson 1: Your Learning Style
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Your Learning Style', '3SL1 [3SL1b] (89%) PRIMARY | 3-5L1 (83%) SECONDARY | 3R9 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Self-awareness & learning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Do you learn better by hearing, seeing, or doing something yourself?.What helps you remember something after you first learn it?.What is one school activity that makes you feel most focused?.If you could change one thing about how your class learns, what would it be?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Your Learning Style',
    '{"lesson_name": "Your Learning Style", "lesson_description": "3SL1 [3SL1b] (89%) PRIMARY | 3-5L1 (83%) SECONDARY | 3R9 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Self-awareness & learning"}, {"content_key": "rapid_questions", "content_value": "Do you learn better by hearing, seeing, or doing something yourself?.What helps you remember something after you first learn it?.What is one school activity that makes you feel most focused?.If you could change one thing about how your class learns, what would it be?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 3
  );

  -- Lesson 2: Handling a Hard Day
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Handling a Hard Day', '3SL1 [3SL1b] (89%) PRIMARY | 3-5L1 (82%) SECONDARY | 3R3 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/81.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotional regulation & coping', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What usually makes a school day feel hard for you?.When something goes wrong at school, what do you usually do first?.Does talking about a hard thing make it better or worse for you?.What is one thing someone could say that would actually help when you''re upset?.How do you know when you''ve moved on from something that bothered you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Handling a Hard Day',
    '{"lesson_name": "Handling a Hard Day", "lesson_description": "3SL1 [3SL1b] (89%) PRIMARY | 3-5L1 (82%) SECONDARY | 3R3 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotional regulation & coping"}, {"content_key": "rapid_questions", "content_value": "What usually makes a school day feel hard for you?.When something goes wrong at school, what do you usually do first?.Does talking about a hard thing make it better or worse for you?.What is one thing someone could say that would actually help when you''re upset?.How do you know when you''ve moved on from something that bothered you?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 11
  );

  -- Lesson 3: Disagreeing Respectfully
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Disagreeing Respectfully', '3SL1 [3SL1d] (90%) PRIMARY | 3-5L1 (83%) SECONDARY | 3R9 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/66.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Discourse & social skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the difference between arguing and disagreeing?.How can you tell when a disagreement has stopped being respectful?.What do you do when someone disagrees with you about a fact -- not an opinion?.Describe a time you changed your mind because of what someone said. What made it work?.What is the hardest part about staying calm when someone says something you strongly disagree with?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Disagreeing Respectfully',
    '{"lesson_name": "Disagreeing Respectfully", "lesson_description": "3SL1 [3SL1d] (90%) PRIMARY | 3-5L1 (83%) SECONDARY | 3R9 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Discourse & social skills"}, {"content_key": "rapid_questions", "content_value": "What is the difference between arguing and disagreeing?.How can you tell when a disagreement has stopped being respectful?.What do you do when someone disagrees with you about a fact \u2014 not an opinion?.Describe a time you changed your mind because of what someone said. What made it work?.What is the hardest part about staying calm when someone says something you strongly disagree with?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 19
  );

  -- Lesson 4: Risks Worth Taking
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Risks Worth Taking', '3SL1 [3SL1b] (88%) PRIMARY | 3-5L1 (82%) SECONDARY | 3R3 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/35.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Decision-making & growth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the difference between a risk that is worth taking and one that isn''t?.When is it smart to play it safe instead of taking a risk?.What helps you decide whether to try something that might not work?.What is one risk you want to take this year that you haven''t yet?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Risks Worth Taking',
    '{"lesson_name": "Risks Worth Taking", "lesson_description": "3SL1 [3SL1b] (88%) PRIMARY | 3-5L1 (82%) SECONDARY | 3R3 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Decision-making & growth"}, {"content_key": "rapid_questions", "content_value": "What is the difference between a risk that is worth taking and one that isn''t?.When is it smart to play it safe instead of taking a risk?.What helps you decide whether to try something that might not work?.What is one risk you want to take this year that you haven''t yet?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 27
  );

  -- Lesson 5: What Fairness Really Means
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Fairness Really Means', '3SL1 [3SL1d] (89%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/80.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Equity & justice', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Is treating everyone the same always fair? Give an example that supports your answer..Can you think of a rule at school that is the same for everyone but affects students differently?.What is one thing a teacher could do to make the classroom feel more fair for all students?.If you were in charge of making one rule fairer at school, what would you change?.How do you feel when something is fair to you but not to someone else?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Fairness Really Means',
    '{"lesson_name": "What Fairness Really Means", "lesson_description": "3SL1 [3SL1d] (89%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Equity & justice"}, {"content_key": "rapid_questions", "content_value": "Is treating everyone the same always fair? Give an example that supports your answer..Can you think of a rule at school that is the same for everyone but affects students differently?.What is one thing a teacher could do to make the classroom feel more fair for all students?.If you were in charge of making one rule fairer at school, what would you change?.How do you feel when something is fair to you but not to someone else?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 35
  );

  -- Lesson 6: The Value of Patience
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Value of Patience', '3SL1 [3SL1b] (88%) PRIMARY | 3-5L1 (82%) SECONDARY | 3R9 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Delayed gratification & perseverance', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you waited a long time for -- and was it worth the wait?.What do you do with yourself when you have to wait for something important?.Is patience easier in some situations than others? What makes the difference?.Do you think patience is something you''re born with or something you can practice?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Value of Patience',
    '{"lesson_name": "The Value of Patience", "lesson_description": "3SL1 [3SL1b] (88%) PRIMARY | 3-5L1 (82%) SECONDARY | 3R9 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Delayed gratification & perseverance"}, {"content_key": "rapid_questions", "content_value": "What is something you waited a long time for \u2014 and was it worth the wait?.What do you do with yourself when you have to wait for something important?.Is patience easier in some situations than others? What makes the difference?.Do you think patience is something you''re born with or something you can practice?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 43
  );

  -- Lesson 7: What I Notice About Myself
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Notice About Myself', '3SL1 [3SL1b] (88%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (81%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/95.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Metacognition & self-awareness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one habit you have that you didn''t notice until someone pointed it out?.What is something you do differently from most people in your class, and why do you think that is?.When you make a mistake, what is usually going on -- were you rushing, distracted, or something else?.How do you know when your body is telling you something your brain hasn''t figured out yet?.What is something true about yourself that you find hard to say out loud?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Notice About Myself',
    '{"lesson_name": "What I Notice About Myself", "lesson_description": "3SL1 [3SL1b] (88%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (81%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Metacognition & self-awareness"}, {"content_key": "rapid_questions", "content_value": "What is one habit you have that you didn''t notice until someone pointed it out?.What is something you do differently from most people in your class, and why do you think that is?.When you make a mistake, what is usually going on \u2014 were you rushing, distracted, or something else?.How do you know when your body is telling you something your brain hasn''t figured out yet?.What is something true about yourself that you find hard to say out loud?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 51
  );

  -- Lesson 8: Reading Between the Lines
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Reading Between the Lines', '3SL1 [3SL1d] (89%) PRIMARY | 3R1 (84%) SECONDARY | 3R3 (81%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/10.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Inference & comprehension', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What clues in a story help you understand how a character is feeling, even if they don''t say it?.When you read a story, how do you figure out something the author didn''t explain directly?.What is the difference between a guess and an inference?.Give an example of a time you were wrong about what someone meant. What had you missed?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reading Between the Lines',
    '{"lesson_name": "Reading Between the Lines", "lesson_description": "3SL1 [3SL1d] (89%) PRIMARY | 3R1 (84%) SECONDARY | 3R3 (81%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Inference & comprehension"}, {"content_key": "rapid_questions", "content_value": "What clues in a story help you understand how a character is feeling, even if they don''t say it?.When you read a story, how do you figure out something the author didn''t explain directly?.What is the difference between a guess and an inference?.Give an example of a time you were wrong about what someone meant. What had you missed?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 59
  );

  -- Lesson 9: When Things Don''t Go as Planned
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Things Don''t Go as Planned', '3SL1 [3SL1b] (88%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/42.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Flexibility & problem-solving', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is harder -- changing a plan you made alone or changing one you made with a group?.How do you feel at the start of something not going as planned, and how does that feeling usually change?.What is one thing you always do that helps when things go wrong?.When something goes wrong, do you usually look for someone to blame, look for a solution, or both?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Things Don''t Go as Planned',
    '{"lesson_name": "When Things Don''t Go as Planned", "lesson_description": "3SL1 [3SL1b] (88%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Flexibility & problem-solving"}, {"content_key": "rapid_questions", "content_value": "What is harder \u2014 changing a plan you made alone or changing one you made with a group?.How do you feel at the start of something not going as planned, and how does that feeling usually change?.What is one thing you always do that helps when things go wrong?.When something goes wrong, do you usually look for someone to blame, look for a solution, or both?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 67
  );

  -- Lesson 10: Audience and Speaker
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Audience and Speaker', '3SL1 [3SL1a] (90%) PRIMARY | 3SL4 (83%) SECONDARY | 3-5L1 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Communication & empathy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does a speaker need from an audience to do their best?.What is one thing you notice about someone when they are not really listening?.What is one thing you can do as a listener that helps the speaker feel heard?.When is silence from an audience a good thing for the speaker?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Audience and Speaker',
    '{"lesson_name": "Audience and Speaker", "lesson_description": "3SL1 [3SL1a] (90%) PRIMARY | 3SL4 (83%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Communication & empathy"}, {"content_key": "rapid_questions", "content_value": "What does a speaker need from an audience to do their best?.What is one thing you notice about someone when they are not really listening?.What is one thing you can do as a listener that helps the speaker feel heard?.When is silence from an audience a good thing for the speaker?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 75
  );

  -- Lesson 11: Comparing Two Things
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Comparing Two Things', '3SL1 [3SL1d] (88%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/47.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Analytical thinking & perspective', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you can learn from comparing two books that you couldn''t learn from reading just one?.Pick two characters from any story -- what do their differences reveal about each of them?.What makes comparing things useful, and what can go wrong when you compare too fast?.What is something you have changed your opinion about after comparing it to something else?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Comparing Two Things',
    '{"lesson_name": "Comparing Two Things", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Analytical thinking & perspective"}, {"content_key": "rapid_questions", "content_value": "What is something you can learn from comparing two books that you couldn''t learn from reading just one?.Pick two characters from any story \u2014 what do their differences reveal about each of them?.What makes comparing things useful, and what can go wrong when you compare too fast?.What is something you have changed your opinion about after comparing it to something else?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 83
  );

  -- Lesson 12: Problem-Solving Under Pressure
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Problem-Solving Under Pressure', '3SL1 [3SL1b] (88%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/53.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Stress & critical thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How does your thinking change when you''re under pressure compared to when you have plenty of time?.Describe a time you solved a problem quickly and it worked -- what helped you?.What do you do first when you''re stuck on something and feeling stressed about it?.Is it easier to think creatively when you''re calm or under pressure? Why?.What is one thing you could do before a stressful task to make your thinking clearer?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Problem-Solving Under Pressure',
    '{"lesson_name": "Problem-Solving Under Pressure", "lesson_description": "3SL1 [3SL1b] (88%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Stress & critical thinking"}, {"content_key": "rapid_questions", "content_value": "How does your thinking change when you''re under pressure compared to when you have plenty of time?.Describe a time you solved a problem quickly and it worked \u2014 what helped you?.What do you do first when you''re stuck on something and feeling stressed about it?.Is it easier to think creatively when you''re calm or under pressure? Why?.What is one thing you could do before a stressful task to make your thinking clearer?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 91
  );

  -- Lesson 13: Choosing Your Words
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Choosing Your Words', '3SL1 [3SL1b] (87%) PRIMARY | 3-5L3 (84%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Language precision & communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the difference between being honest and being unkind?.When you give feedback, what words do you choose to make it easy to hear?.Why do you think some words feel more powerful than others?.What is one word or phrase you wish people used more often -- and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Your Words',
    '{"lesson_name": "Choosing Your Words", "lesson_description": "3SL1 [3SL1b] (87%) PRIMARY | 3-5L3 (84%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Language precision & communication"}, {"content_key": "rapid_questions", "content_value": "What is the difference between being honest and being unkind?.When you give feedback, what words do you choose to make it easy to hear?.Why do you think some words feel more powerful than others?.What is one word or phrase you wish people used more often \u2014 and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 99
  );

  -- Lesson 14: Seeing the Same Thing Differently
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Seeing the Same Thing Differently', '3SL1 [3SL1d] (88%) PRIMARY | 3R6 (84%) SECONDARY | 3R9 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/48.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Multiple perspectives', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why do you think two people can look at the same thing and come to different conclusions?.When someone sees things differently from you, what is the most useful thing to do?.How does your mood or your position affect what you notice and what you miss?.What is something you see differently now than you did a year ago -- and what changed?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Seeing the Same Thing Differently',
    '{"lesson_name": "Seeing the Same Thing Differently", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R6 (84%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Multiple perspectives"}, {"content_key": "rapid_questions", "content_value": "Why do you think two people can look at the same thing and come to different conclusions?.When someone sees things differently from you, what is the most useful thing to do?.How does your mood or your position affect what you notice and what you miss?.What is something you see differently now than you did a year ago \u2014 and what changed?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 107
  );

  -- Lesson 15: What Makes a Strong Argument
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes a Strong Argument', '3SL1 [3SL1d] (89%) PRIMARY | 3R8 (84%) SECONDARY | 3-5L1 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/78.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Reasoning & persuasion', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes an argument stronger -- more reasons or better reasons?.How can you tell the difference between an opinion and a reason that supports it?.Describe an argument you heard or read that changed what you thought. What made it convincing?.What is the most important thing to do before you try to convince someone of something?.If someone disagrees with your argument, what should you do next?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes a Strong Argument',
    '{"lesson_name": "What Makes a Strong Argument", "lesson_description": "3SL1 [3SL1d] (89%) PRIMARY | 3R8 (84%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Reasoning & persuasion"}, {"content_key": "rapid_questions", "content_value": "What makes an argument stronger \u2014 more reasons or better reasons?.How can you tell the difference between an opinion and a reason that supports it?.Describe an argument you heard or read that changed what you thought. What made it convincing?.What is the most important thing to do before you try to convince someone of something?.If someone disagrees with your argument, what should you do next?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 115
  );

  -- Lesson 16: What Questions Reveal
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Questions Reveal', '3SL1 [3SL1b] (87%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Inquiry & intellectual humility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does the kind of question someone asks tell you about how they''re thinking?.When is asking a question braver than giving an answer?.What is the difference between a question that opens up a conversation and one that shuts it down?.What would school feel like if questions were valued more than right answers?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Questions Reveal',
    '{"lesson_name": "What Questions Reveal", "lesson_description": "3SL1 [3SL1b] (87%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Inquiry & intellectual humility"}, {"content_key": "rapid_questions", "content_value": "What does the kind of question someone asks tell you about how they''re thinking?.When is asking a question braver than giving an answer?.What is the difference between a question that opens up a conversation and one that shuts it down?.What would school feel like if questions were valued more than right answers?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 123
  );

  -- Lesson 17: Noticing Unfairness
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Noticing Unfairness', '3SL1 [3SL1d] (88%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Equity & civic awareness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the difference between a rule that is unfair and a situation that is just hard?.When you notice something unfair that doesn''t affect you directly, what do you do?.What would you need to feel confident enough to point out an unfair situation to an adult?.What is the difference between complaining about unfairness and doing something about it?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noticing Unfairness',
    '{"lesson_name": "Noticing Unfairness", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Equity & civic awareness"}, {"content_key": "rapid_questions", "content_value": "What is the difference between a rule that is unfair and a situation that is just hard?.When you notice something unfair that doesn''t affect you directly, what do you do?.What would you need to feel confident enough to point out an unfair situation to an adult?.What is the difference between complaining about unfairness and doing something about it?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 131
  );

  -- Lesson 18: How I Think About Thinking
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How I Think About Thinking', '3SL1 [3SL1b] (87%) PRIMARY | 3R2 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Metacognition & learning strategies', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you know when you actually understand something versus when you just think you do?.What kind of thinking do you find the hardest -- memorizing, analyzing, or coming up with new ideas?.When your brain refuses to focus, what do you do that actually helps?.What would you tell a younger student about how to get better at learning things?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How I Think About Thinking',
    '{"lesson_name": "How I Think About Thinking", "lesson_description": "3SL1 [3SL1b] (87%) PRIMARY | 3R2 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Metacognition & learning strategies"}, {"content_key": "rapid_questions", "content_value": "How do you know when you actually understand something versus when you just think you do?.What kind of thinking do you find the hardest \u2014 memorizing, analyzing, or coming up with new ideas?.When your brain refuses to focus, what do you do that actually helps?.What would you tell a younger student about how to get better at learning things?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 139
  );

  -- Lesson 19: The Words We Don''t Say
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Words We Don''t Say', '3SL1 [3SL1a] (88%) PRIMARY | 3R3 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/57.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Nonverbal communication & emotional intelligence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What can you learn about how someone is feeling without them saying a single word?.What nonverbal signal do you give off when you''re nervous or uncomfortable?.When is it important to say something out loud even if someone''s body language already says it?.How can you make someone feel heard without using any words?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Words We Don''t Say',
    '{"lesson_name": "The Words We Don''t Say", "lesson_description": "3SL1 [3SL1a] (88%) PRIMARY | 3R3 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Nonverbal communication & emotional intelligence"}, {"content_key": "rapid_questions", "content_value": "What can you learn about how someone is feeling without them saying a single word?.What nonverbal signal do you give off when you''re nervous or uncomfortable?.When is it important to say something out loud even if someone''s body language already says it?.How can you make someone feel heard without using any words?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 147
  );

  -- Lesson 20: What History Teaches
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What History Teaches', '3SL1 [3SL1d] (87%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/66.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Historical thinking & learning from the past', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why do you think learning about the past matters for how people live today?.Can you think of a mistake from history that people are still repeating today?.What is one story from history that you think every student your age should know?.If you could ask one question to someone who lived 100 years ago, what would it be?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What History Teaches',
    '{"lesson_name": "What History Teaches", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Historical thinking & learning from the past"}, {"content_key": "rapid_questions", "content_value": "Why do you think learning about the past matters for how people live today?.Can you think of a mistake from history that people are still repeating today?.What is one story from history that you think every student your age should know?.If you could ask one question to someone who lived 100 years ago, what would it be?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 155
  );

  -- Lesson 21: The Power of Small Actions
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Power of Small Actions', '3SL1 [3SL1b] (87%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/2.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Agency & civic responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Do you think one person''s small action can actually change a group? Give an example..What is something small you do consistently that you think might matter to someone else?.Why do you think people often underestimate small actions?.If everyone in your school did one small positive thing each day, what do you think would change?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Power of Small Actions',
    '{"lesson_name": "The Power of Small Actions", "lesson_description": "3SL1 [3SL1b] (87%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Agency & civic responsibility"}, {"content_key": "rapid_questions", "content_value": "Do you think one person''s small action can actually change a group? Give an example..What is something small you do consistently that you think might matter to someone else?.Why do you think people often underestimate small actions?.If everyone in your school did one small positive thing each day, what do you think would change?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 163
  );

  -- Lesson 22: Who Gets to Tell the Story
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Who Gets to Tell the Story', '3SL1 [3SL1d] (88%) PRIMARY | 3R6 (85%) SECONDARY | 3R9 (81%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Perspective, narrative, and voice', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When you read a story, whose point of view are you seeing the world from?.How might the same event feel completely different depending on who is telling it?.Can you think of a story you know well where you wonder what the story would be like from a different character''s point of view?.Why does it matter which character or person gets to be the narrator?.Whose voice is missing from a story you''ve read -- and how might that change what you understand?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Who Gets to Tell the Story',
    '{"lesson_name": "Who Gets to Tell the Story", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R6 (85%) SECONDARY | 3R9 (81%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Perspective, narrative, and voice"}, {"content_key": "rapid_questions", "content_value": "When you read a story, whose point of view are you seeing the world from?.How might the same event feel completely different depending on who is telling it?.Can you think of a story you know well where you wonder what the story would be like from a different character''s point of view?.Why does it matter which character or person gets to be the narrator?.Whose voice is missing from a story you''ve read \u2014 and how might that change what you understand?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 171
  );

  -- Lesson 23: What Experts Get Wrong
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Experts Get Wrong', '3SL1 [3SL1d] (88%) PRIMARY | 3R8 (85%) SECONDARY | 3R9 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/89.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Evidence, authority, and critical thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Can an expert ever be wrong? Give an example you know of..What is the difference between trusting an expert and accepting everything they say without question?.Why is it important that experts disagree with each other sometimes?.What would you ask to evaluate whether a source of information is trustworthy?.What is one thing you believe to be true that you have not personally verified?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Experts Get Wrong',
    '{"lesson_name": "What Experts Get Wrong", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R8 (85%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Evidence, authority, and critical thinking"}, {"content_key": "rapid_questions", "content_value": "Can an expert ever be wrong? Give an example you know of..What is the difference between trusting an expert and accepting everything they say without question?.Why is it important that experts disagree with each other sometimes?.What would you ask to evaluate whether a source of information is trustworthy?.What is one thing you believe to be true that you have not personally verified?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 179
  );

  -- Lesson 24: Belonging and Fitting In
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Belonging and Fitting In', '3SL1 [3SL1b] (87%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Identity & social dynamics', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the difference between feeling like you belong somewhere and just fitting in?.Describe a group where you feel you truly belong -- what makes it feel that way?.Have you ever changed how you acted to fit in somewhere? What did you notice about that?.Can belonging to one group make you feel less like you belong in another?.What would it feel like to find a group that accepted exactly the version of you that you already are?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Belonging and Fitting In',
    '{"lesson_name": "Belonging and Fitting In", "lesson_description": "3SL1 [3SL1b] (87%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Identity & social dynamics"}, {"content_key": "rapid_questions", "content_value": "What is the difference between feeling like you belong somewhere and just fitting in?.Describe a group where you feel you truly belong \u2014 what makes it feel that way?.Have you ever changed how you acted to fit in somewhere? What did you notice about that?.Can belonging to one group make you feel less like you belong in another?.What would it feel like to find a group that accepted exactly the version of you that you already are?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 187
  );

  -- Lesson 25: What Makes Something True
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes Something True', '3SL1 [3SL1d] (88%) PRIMARY | 3R8 (86%) SECONDARY | 3R9 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/35.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Epistemology & evidence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you know when something you read or hear is actually true?.What is the difference between something being true and something feeling true?.Is there anything you believe to be true that you cannot prove? How comfortable are you with that?.What is the most important question to ask before accepting new information?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes Something True',
    '{"lesson_name": "What Makes Something True", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R8 (86%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Epistemology & evidence"}, {"content_key": "rapid_questions", "content_value": "How do you know when something you read or hear is actually true?.What is the difference between something being true and something feeling true?.Is there anything you believe to be true that you cannot prove? How comfortable are you with that?.What is the most important question to ask before accepting new information?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 195
  );

  -- Lesson 26: Responsibility and Choice
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Responsibility and Choice', '3SL1 [3SL1d] (87%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Ethics & moral reasoning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When is something your fault, and when is it just something that happened?.Is there a difference between being responsible for an outcome and being to blame for it?.What does it mean to take responsibility for something you did not mean to do?.What would a person who takes responsibility well do differently from someone who doesn''t?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Responsibility and Choice',
    '{"lesson_name": "Responsibility and Choice", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Ethics & moral reasoning"}, {"content_key": "rapid_questions", "content_value": "When is something your fault, and when is it just something that happened?.Is there a difference between being responsible for an outcome and being to blame for it?.What does it mean to take responsibility for something you did not mean to do?.What would a person who takes responsibility well do differently from someone who doesn''t?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 203
  );

  -- Lesson 27: Why People Follow Leaders
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why People Follow Leaders', '3SL1 [3SL1d] (87%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Leadership & social influence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes someone worth following, in your opinion?.Is there a difference between a leader people follow because they want to and one they follow because they have to?.Describe a time you followed someone else''s lead -- what made you trust them?.Can you be a leader without a title or an official role?.What is the most important quality a good leader needs when things go wrong?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why People Follow Leaders',
    '{"lesson_name": "Why People Follow Leaders", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R9 (84%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Leadership & social influence"}, {"content_key": "rapid_questions", "content_value": "What makes someone worth following, in your opinion?.Is there a difference between a leader people follow because they want to and one they follow because they have to?.Describe a time you followed someone else''s lead \u2014 what made you trust them?.Can you be a leader without a title or an official role?.What is the most important quality a good leader needs when things go wrong?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 211
  );

  -- Lesson 28: Systems Around Us
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Systems Around Us', '3SL1 [3SL1d] (87%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Systems thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a system you are part of every day without usually thinking about it?.If one part of a system stops working, what happens to the rest of it?.What would happen to your school if one key part of it -- like the schedule or the cafeteria -- suddenly stopped working?.What is one system in your life that you would redesign if you could, and what would you change?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Systems Around Us',
    '{"lesson_name": "Systems Around Us", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Systems thinking"}, {"content_key": "rapid_questions", "content_value": "What is a system you are part of every day without usually thinking about it?.If one part of a system stops working, what happens to the rest of it?.What would happen to your school if one key part of it \u2014 like the schedule or the cafeteria \u2014 suddenly stopped working?.What is one system in your life that you would redesign if you could, and what would you change?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 219
  );

  -- Lesson 29: Assumptions and Surprises
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Assumptions and Surprises', '3SL1 [3SL1d] (87%) PRIMARY | 3R6 (84%) SECONDARY | 3R9 (80%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Cognitive bias & open-mindedness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is an assumption you made about a person that turned out to be wrong?.How did finding out you were wrong about someone change how you see people in general?.Why do you think our brains make assumptions without us realizing it?.What is one assumption that most people your age make that you think is often wrong?.What habit could you build to catch yourself making an assumption before it causes a problem?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Assumptions and Surprises',
    '{"lesson_name": "Assumptions and Surprises", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R6 (84%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Cognitive bias & open-mindedness"}, {"content_key": "rapid_questions", "content_value": "What is an assumption you made about a person that turned out to be wrong?.How did finding out you were wrong about someone change how you see people in general?.Why do you think our brains make assumptions without us realizing it?.What is one assumption that most people your age make that you think is often wrong?.What habit could you build to catch yourself making an assumption before it causes a problem?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 227
  );

  -- Lesson 30: What We Owe Each Other
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What We Owe Each Other', '3SL1 [3SL1d] (87%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'MEDIUM', 'Quick Thinking', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Ethics & community responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you think people in a community owe each other?.Is there a difference between what you are required to do and what is right to do?.What would it look like if everyone in your school took seriously what they owed each other?.Is there something you could do for your community that you haven''t done yet? What''s stopping you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What We Owe Each Other',
    '{"lesson_name": "What We Owe Each Other", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Ethics & community responsibility"}, {"content_key": "rapid_questions", "content_value": "What do you think people in a community owe each other?.Is there a difference between what you are required to do and what is right to do?.What would it look like if everyone in your school took seriously what they owed each other?.Is there something you could do for your community that you haven''t done yet? What''s stopping you?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Quick Thinking', 3, NULL, 'MEDIUM', 235
  );

END $$;
