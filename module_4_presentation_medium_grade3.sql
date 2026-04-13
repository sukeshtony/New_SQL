-- =====================================================
-- Module 4: Informative Presentation - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: e9f70a86-834f-4f3c-aa92-7bbd98e9ad72
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

  -- Lesson 1: Why We Have Rules at School
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why We Have Rules at School', '3SL4 (93%) PRIMARY | 3-5L1 (83%) SECONDARY | 3-5L3 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the purpose of school rules and why following them helps everyone.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what rules help a classroom do.Explain how one rule protects more than one person.Describe what happens when a rule is broken.End with why rules work best when everyone understands them', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why We Have Rules at School',
    '{"lesson_name": "Why We Have Rules at School", "lesson_description": "3SL4 (93%) PRIMARY | 3-5L1 (83%) SECONDARY | 3-5L3 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the purpose of school rules and why following them helps everyone."}, {"content_key": "preparation_guidelines", "content_value": "Say what rules help a classroom do.Explain how one rule protects more than one person.Describe what happens when a rule is broken.End with why rules work best when everyone understands them"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 4
  );

  -- Lesson 2: How Your Brain Learns
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Your Brain Learns', '3SL4 (93%) PRIMARY | 3W2 (83%) SECONDARY | 3-5L1 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/39.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what happens inside the brain when you learn something new and practice it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what neurons are.Explain how practice changes the brain over time.Describe one thing that makes learning harder.End with one strategy to help the brain hold onto new information', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Your Brain Learns',
    '{"lesson_name": "How Your Brain Learns", "lesson_description": "3SL4 (93%) PRIMARY | 3W2 (83%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what happens inside the brain when you learn something new and practice it."}, {"content_key": "preparation_guidelines", "content_value": "Say what neurons are.Explain how practice changes the brain over time.Describe one thing that makes learning harder.End with one strategy to help the brain hold onto new information"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 12
  );

  -- Lesson 3: What Makes a Good Apology
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes a Good Apology', '3SL4 (92%) PRIMARY | 3-5L1 (84%) SECONDARY | 3-5L3 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the difference between a real apology and one that doesn''t actually make things better.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what most people get wrong about apologies.Describe the three parts of an apology that actually works.Explain what should come after the words.End with why a good apology also helps the person giving it', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes a Good Apology',
    '{"lesson_name": "What Makes a Good Apology", "lesson_description": "3SL4 (92%) PRIMARY | 3-5L1 (84%) SECONDARY | 3-5L3 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the difference between a real apology and one that doesn''t actually make things better."}, {"content_key": "preparation_guidelines", "content_value": "Say what most people get wrong about apologies.Describe the three parts of an apology that actually works.Explain what should come after the words.End with why a good apology also helps the person giving it"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 20
  );

  -- Lesson 4: How Tides Work
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Tides Work', '3SL4 (92%) PRIMARY | 3W2 (83%) SECONDARY | 3-5L1 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/50.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what causes ocean tides and why they follow a predictable pattern.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what a tide is.Explain the moon’s role in pulling ocean water.Describe the difference between high tide and low tide.End with one way tides matter to people or animals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Tides Work',
    '{"lesson_name": "How Tides Work", "lesson_description": "3SL4 (92%) PRIMARY | 3W2 (83%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what causes ocean tides and why they follow a predictable pattern."}, {"content_key": "preparation_guidelines", "content_value": "Say what a tide is.Explain the moon\u2019s role in pulling ocean water.Describe the difference between high tide and low tide.End with one way tides matter to people or animals"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 28
  );

  -- Lesson 5: Why Sleep Matters More Than You Think
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Sleep Matters More Than You Think', '3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3-5L1 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/49.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what happens in the brain and body during sleep and why it cannot be replaced.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what the brain does while you sleep.Explain how sleep affects memory and learning.Describe what happens when sleep is regularly cut short.End with one change a student could make to sleep better tonight', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Sleep Matters More Than You Think',
    '{"lesson_name": "Why Sleep Matters More Than You Think", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what happens in the brain and body during sleep and why it cannot be replaced."}, {"content_key": "preparation_guidelines", "content_value": "Say what the brain does while you sleep.Explain how sleep affects memory and learning.Describe what happens when sleep is regularly cut short.End with one change a student could make to sleep better tonight"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 36
  );

  -- Lesson 6: How Birds Find Their Way
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Birds Find Their Way', '3SL4 (91%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how migrating birds navigate across thousands of miles without a map or GPS.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say how far some birds actually travel during migration.Explain one tool birds use to navigate.Describe how young birds find the route for the first time.End with what scientists are still trying to understand', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Birds Find Their Way',
    '{"lesson_name": "How Birds Find Their Way", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how migrating birds navigate across thousands of miles without a map or GPS."}, {"content_key": "preparation_guidelines", "content_value": "Say how far some birds actually travel during migration.Explain one tool birds use to navigate.Describe how young birds find the route for the first time.End with what scientists are still trying to understand"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 44
  );

  -- Lesson 7: How Recycling Really Works
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Recycling Really Works', '3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the full recycling process and clear up common misconceptions about what happens to recycled materials.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what people assume happens when they recycle something.Explain what contamination is and why it causes problems.Describe which materials are most valuable to recycle.End with one action that makes recycling more effective', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Recycling Really Works',
    '{"lesson_name": "How Recycling Really Works", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the full recycling process and clear up common misconceptions about what happens to recycled materials."}, {"content_key": "preparation_guidelines", "content_value": "Say what people assume happens when they recycle something.Explain what contamination is and why it causes problems.Describe which materials are most valuable to recycle.End with one action that makes recycling more effective"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 52
  );

  -- Lesson 8: What the Water Cycle Does for Us
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What the Water Cycle Does for Us', '3SL4 (90%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/86.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the water cycle and describe why it is essential to all life on Earth.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Name the main stages of the water cycle.Explain how the water cycle cleans water naturally.Describe how human activity disrupts the cycle.End with one way communities protect their local water cycle', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What the Water Cycle Does for Us',
    '{"lesson_name": "What the Water Cycle Does for Us", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the water cycle and describe why it is essential to all life on Earth."}, {"content_key": "preparation_guidelines", "content_value": "Name the main stages of the water cycle.Explain how the water cycle cleans water naturally.Describe how human activity disrupts the cycle.End with one way communities protect their local water cycle"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 60
  );

  -- Lesson 9: How Volcanoes Create New Land
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Volcanoes Create New Land', '3SL4 (90%) PRIMARY | 3W2 (84%) SECONDARY | 3-5L1 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how volcanic eruptions have built and continue to build landmasses over millions of years.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what magma is and where it comes from.Explain how repeated eruptions build new land.Describe where new volcanic land is forming today.End with what this teaches us about how Earth changes', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Volcanoes Create New Land',
    '{"lesson_name": "How Volcanoes Create New Land", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (84%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how volcanic eruptions have built and continue to build landmasses over millions of years."}, {"content_key": "preparation_guidelines", "content_value": "Say what magma is and where it comes from.Explain how repeated eruptions build new land.Describe where new volcanic land is forming today.End with what this teaches us about how Earth changes"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 68
  );

  -- Lesson 10: The Science of Camouflage
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Science of Camouflage', '3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how camouflage works in animals and what it reveals about evolution and survival.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define camouflage and give one animal example.Explain how camouflage developed through natural selection.Describe one animal whose camouflage changes in real time.End with how humans have borrowed ideas from animal camouflage', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Science of Camouflage',
    '{"lesson_name": "The Science of Camouflage", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how camouflage works in animals and what it reveals about evolution and survival."}, {"content_key": "preparation_guidelines", "content_value": "Define camouflage and give one animal example.Explain how camouflage developed through natural selection.Describe one animal whose camouflage changes in real time.End with how humans have borrowed ideas from animal camouflage"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 76
  );

  -- Lesson 11: How the Printing Press Changed Reading
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How the Printing Press Changed Reading', '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how Gutenberg''s printing press changed who had access to books and why that mattered.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say how books were made before the printing press.Explain what Gutenberg’s invention changed.Describe one type of information that spread faster because of printing.End with how the printing press connects to how information spreads today', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Printing Press Changed Reading',
    '{"lesson_name": "How the Printing Press Changed Reading", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how Gutenberg''s printing press changed who had access to books and why that mattered."}, {"content_key": "preparation_guidelines", "content_value": "Say how books were made before the printing press.Explain what Gutenberg\u2019s invention changed.Describe one type of information that spread faster because of printing.End with how the printing press connects to how information spreads today"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 84
  );

  -- Lesson 12: Why Maps Are Never Perfectly Accurate
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Maps Are Never Perfectly Accurate', '3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/57.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why every map of the Earth contains errors and what those errors reveal.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say why a flat map cannot show a round planet perfectly.Explain what a map projection is and give one example.Describe what a Mercator map gets wrong about continent sizes.End with one question to ask whenever you look at a map', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Maps Are Never Perfectly Accurate',
    '{"lesson_name": "Why Maps Are Never Perfectly Accurate", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain why every map of the Earth contains errors and what those errors reveal."}, {"content_key": "preparation_guidelines", "content_value": "Say why a flat map cannot show a round planet perfectly.Explain what a map projection is and give one example.Describe what a Mercator map gets wrong about continent sizes.End with one question to ask whenever you look at a map"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 92
  );

  -- Lesson 13: How the Immune System Fights Infection
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How the Immune System Fights Infection', '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the immune system recognizes and responds to germs -- and how it remembers them afterward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what a pathogen is and give one example.Explain what happens inside the body when it meets a new germ.Describe what immune memory is and why it matters.End with one behavior that supports a strong immune system', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Immune System Fights Infection',
    '{"lesson_name": "How the Immune System Fights Infection", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the immune system recognizes and responds to germs \u2014 and how it remembers them afterward."}, {"content_key": "preparation_guidelines", "content_value": "Say what a pathogen is and give one example.Explain what happens inside the body when it meets a new germ.Describe what immune memory is and why it matters.End with one behavior that supports a strong immune system"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 100
  );

  -- Lesson 14: What Soil Is Actually Made Of
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Soil Is Actually Made Of', '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/70.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why healthy soil is more than dirt and why it is critical to life on Earth.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what is actually inside a tablespoon of healthy soil.Explain what decomposers do and why they matter.Describe how soil fertility can be quickly lost.End with one farming practice that protects healthy soil', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Soil Is Actually Made Of',
    '{"lesson_name": "What Soil Is Actually Made Of", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain why healthy soil is more than dirt and why it is critical to life on Earth."}, {"content_key": "preparation_guidelines", "content_value": "Say what is actually inside a tablespoon of healthy soil.Explain what decomposers do and why they matter.Describe how soil fertility can be quickly lost.End with one farming practice that protects healthy soil"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 108
  );

  -- Lesson 15: Why Bridges Are Shaped the Way They Are
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Bridges Are Shaped the Way They Are', '3SL4 (88%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/96.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the physics behind common bridge designs and why engineers choose different shapes for different situations.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what force a bridge must manage to stay standing.Explain how an arch distributes weight differently than a flat beam.Describe what suspension cables do.End with one question an engineer asks before designing any bridge', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Bridges Are Shaped the Way They Are',
    '{"lesson_name": "Why Bridges Are Shaped the Way They Are", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the physics behind common bridge designs and why engineers choose different shapes for different situations."}, {"content_key": "preparation_guidelines", "content_value": "Say what force a bridge must manage to stay standing.Explain how an arch distributes weight differently than a flat beam.Describe what suspension cables do.End with one question an engineer asks before designing any bridge"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 116
  );

  -- Lesson 16: How Memory Actually Works
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Memory Actually Works', '3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what memory really is, how it is formed and stored, and why forgetting is part of the system.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what most people misunderstand about how memories are stored.Explain the three stages: encoding, storage, and retrieval.Describe why sleep makes memories permanent.End with one strategy that actually makes memories stronger', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Memory Actually Works',
    '{"lesson_name": "How Memory Actually Works", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what memory really is, how it is formed and stored, and why forgetting is part of the system."}, {"content_key": "preparation_guidelines", "content_value": "Say what most people misunderstand about how memories are stored.Explain the three stages: encoding, storage, and retrieval.Describe why sleep makes memories permanent.End with one strategy that actually makes memories stronger"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 124
  );

  -- Lesson 17: How Language Shapes Thought
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Language Shapes Thought', '3SL4 (90%) PRIMARY | 3W2 (84%) SECONDARY | 3-5L3 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the words available in a language influence the ideas speakers can easily express.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Give one example of a word with no direct English translation.Explain how having a precise word makes something easier to notice.Describe research showing language affects how people perceive the world.End with one implication for how we choose the words we use', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Language Shapes Thought',
    '{"lesson_name": "How Language Shapes Thought", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (84%) SECONDARY | 3-5L3 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the words available in a language influence the ideas speakers can easily express."}, {"content_key": "preparation_guidelines", "content_value": "Give one example of a word with no direct English translation.Explain how having a precise word makes something easier to notice.Describe research showing language affects how people perceive the world.End with one implication for how we choose the words we use"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 132
  );

  -- Lesson 18: The Physics of Sound
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Physics of Sound', '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/23.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how sound is created, how it travels, and why it sounds different in different environments.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define sound as vibration and explain what that means.Explain how sound travels differently through air, water, and solids.Describe how a room’s shape affects how sound behaves.End with one surprising fact about sound most people don’t know', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Physics of Sound',
    '{"lesson_name": "The Physics of Sound", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how sound is created, how it travels, and why it sounds different in different environments."}, {"content_key": "preparation_guidelines", "content_value": "Define sound as vibration and explain what that means.Explain how sound travels differently through air, water, and solids.Describe how a room\u2019s shape affects how sound behaves.End with one surprising fact about sound most people don\u2019t know"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 140
  );

  -- Lesson 19: Why Stories Are More Persuasive Than Facts
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Stories Are More Persuasive Than Facts', '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/40.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what research says about how stories affect the brain differently from statistics.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what happens in the brain during a story versus a list of facts.Explain why charities often focus on one person’s story.Describe one risk of relying on stories more than data.End with one question to ask when a story is being used to persuade you', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Stories Are More Persuasive Than Facts',
    '{"lesson_name": "Why Stories Are More Persuasive Than Facts", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what research says about how stories affect the brain differently from statistics."}, {"content_key": "preparation_guidelines", "content_value": "Say what happens in the brain during a story versus a list of facts.Explain why charities often focus on one person\u2019s story.Describe one risk of relying on stories more than data.End with one question to ask when a story is being used to persuade you"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 148
  );

  -- Lesson 20: What Makes Evidence Strong
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes Evidence Strong', '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R8 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/94.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the difference between strong evidence and weak evidence, and why the difference matters.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define evidence and give one strong and one weak example.Explain what makes one source more reliable than another.Describe what bias is and how it can weaken evidence.End with three questions to evaluate any piece of evidence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes Evidence Strong',
    '{"lesson_name": "What Makes Evidence Strong", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R8 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the difference between strong evidence and weak evidence, and why the difference matters."}, {"content_key": "preparation_guidelines", "content_value": "Define evidence and give one strong and one weak example.Explain what makes one source more reliable than another.Describe what bias is and how it can weaken evidence.End with three questions to evaluate any piece of evidence"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 156
  );

  -- Lesson 21: How Small Actions Build Habits
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Small Actions Build Habits', '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/86.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the science of how habits form in the brain and how tiny actions can lead to lasting change.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define a habit and explain the habit loop: cue, routine, reward.Explain why starting small is more effective than a big goal.Describe one way to design your environment for a good habit.End with one habit worth building and a specific first step', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Small Actions Build Habits',
    '{"lesson_name": "How Small Actions Build Habits", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the science of how habits form in the brain and how tiny actions can lead to lasting change."}, {"content_key": "preparation_guidelines", "content_value": "Define a habit and explain the habit loop: cue, routine, reward.Explain why starting small is more effective than a big goal.Describe one way to design your environment for a good habit.End with one habit worth building and a specific first step"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 164
  );

  -- Lesson 22: The Logic of Classification
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Logic of Classification', '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how and why scientists organize living things into categories, and what those categories reveal.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say why scientists need a system for naming living things.Describe the main levels of classification from broadest to most specific.Explain what DNA evidence has changed about how life is grouped.End with what classification reveals about the connections between all life', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Logic of Classification',
    '{"lesson_name": "The Logic of Classification", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how and why scientists organize living things into categories, and what those categories reveal."}, {"content_key": "preparation_guidelines", "content_value": "Say why scientists need a system for naming living things.Describe the main levels of classification from broadest to most specific.Explain what DNA evidence has changed about how life is grouped.End with what classification reveals about the connections between all life"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 172
  );

  -- Lesson 23: Why Ecosystems Need Balance
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Ecosystems Need Balance', '3SL4 (88%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what ecological balance means and what happens when it is disrupted.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define an ecosystem and describe one familiar example.Explain what happens when one link in a food chain is removed.Describe what makes a species a keystone species.End with one thing students can do to support local ecosystems', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Ecosystems Need Balance',
    '{"lesson_name": "Why Ecosystems Need Balance", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain what ecological balance means and what happens when it is disrupted."}, {"content_key": "preparation_guidelines", "content_value": "Define an ecosystem and describe one familiar example.Explain what happens when one link in a food chain is removed.Describe what makes a species a keystone species.End with one thing students can do to support local ecosystems"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 180
  );

  -- Lesson 24: How Scientists Change Their Minds
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Scientists Change Their Minds', '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R8 (81%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how science works as a self-correcting process and what happens when evidence contradicts a long-held theory.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what peer review is and why it matters.Give one historical example where accepted science turned out to be wrong.Explain why changing your mind based on evidence is a strength.End with what scientific self-correction teaches us about everyday thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Scientists Change Their Minds',
    '{"lesson_name": "How Scientists Change Their Minds", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R8 (81%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how science works as a self-correcting process and what happens when evidence contradicts a long-held theory."}, {"content_key": "preparation_guidelines", "content_value": "Say what peer review is and why it matters.Give one historical example where accepted science turned out to be wrong.Explain why changing your mind based on evidence is a strength.End with what scientific self-correction teaches us about everyday thinking"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 188
  );

  -- Lesson 25: The Ethics of Keeping Secrets
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Ethics of Keeping Secrets', '3SL4 (88%) PRIMARY | 3W2 (85%) SECONDARY | 3-5L3 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/80.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain when keeping a secret is the right thing to do and when it is not -- and how to tell the difference.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe the difference between a secret that protects and one that harms.Explain what confidentiality means and give one example.Describe a type of secret a trustworthy person should not keep.End with one question to ask yourself when facing this decision', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Ethics of Keeping Secrets',
    '{"lesson_name": "The Ethics of Keeping Secrets", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (85%) SECONDARY | 3-5L3 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain when keeping a secret is the right thing to do and when it is not \u2014 and how to tell the difference."}, {"content_key": "preparation_guidelines", "content_value": "Describe the difference between a secret that protects and one that harms.Explain what confidentiality means and give one example.Describe a type of secret a trustworthy person should not keep.End with one question to ask yourself when facing this decision"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 196
  );

  -- Lesson 26: Why Disagreement Is Useful
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Disagreement Is Useful', '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R8 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/94.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why disagreement -- when done well -- leads to better thinking and better decisions.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what most people assume about disagreement.Describe what productive disagreement actually looks like.Explain what research shows about groups that disagree versus groups that agree.End with one way students can practice productive disagreement in class', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Disagreement Is Useful',
    '{"lesson_name": "Why Disagreement Is Useful", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R8 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain why disagreement \u2014 when done well \u2014 leads to better thinking and better decisions."}, {"content_key": "preparation_guidelines", "content_value": "Say what most people assume about disagreement.Describe what productive disagreement actually looks like.Explain what research shows about groups that disagree versus groups that agree.End with one way students can practice productive disagreement in class"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 204
  );

  -- Lesson 27: How Perspective Changes What We See
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Perspective Changes What We See', '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R8 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how a person''s position, experience, and identity affect what they notice and what they miss.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Give one example of two people noticing different things about the same event.Explain what confirmation bias is.Describe why multiple perspectives together are more complete than any one alone.End with one habit that helps a person notice their own blind spots', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Perspective Changes What We See',
    '{"lesson_name": "How Perspective Changes What We See", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R8 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how a person''s position, experience, and identity affect what they notice and what they miss."}, {"content_key": "preparation_guidelines", "content_value": "Give one example of two people noticing different things about the same event.Explain what confirmation bias is.Describe why multiple perspectives together are more complete than any one alone.End with one habit that helps a person notice their own blind spots"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 212
  );

  -- Lesson 28: The Power of Asking Better Questions
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Power of Asking Better Questions', '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R6 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the quality of a question shapes the quality of thinking and what makes some questions more powerful than others.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe the difference between a closed question and an open question.Explain what a Socratic question is.Give one example of a weak question rewritten to open up better thinking.End with one question students can use in any subject to push thinking deeper', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Power of Asking Better Questions',
    '{"lesson_name": "The Power of Asking Better Questions", "lesson_description": "3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R6 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the quality of a question shapes the quality of thinking and what makes some questions more powerful than others."}, {"content_key": "preparation_guidelines", "content_value": "Describe the difference between a closed question and an open question.Explain what a Socratic question is.Give one example of a weak question rewritten to open up better thinking.End with one question students can use in any subject to push thinking deeper"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 220
  );

  -- Lesson 29: What Makes Information Trustworthy
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes Information Trustworthy', '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R8 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how to evaluate whether a piece of information is reliable, and what makes that skill important today.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say why more information doesn’t automatically mean better information.Describe three markers of a reliable source.Explain what misinformation is and how it spreads.End with one habit students can build to become more careful readers of information', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes Information Trustworthy',
    '{"lesson_name": "What Makes Information Trustworthy", "lesson_description": "3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R8 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how to evaluate whether a piece of information is reliable, and what makes that skill important today."}, {"content_key": "preparation_guidelines", "content_value": "Say why more information doesn\u2019t automatically mean better information.Describe three markers of a reliable source.Explain what misinformation is and how it spreads.End with one habit students can build to become more careful readers of information"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 228
  );

  -- Lesson 30: How Communities Solve Problems Together
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Communities Solve Problems Together', '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'MEDIUM', 'Presentation Skill', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how groups of people working together can solve problems that individuals cannot solve alone -- and what gets in the way.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe a type of problem that requires collective action.Explain the tragedy of the commons using a simple example.Describe what researchers say helps communities solve shared problems.End with one question that helps a community decide whether to take action', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Communities Solve Problems Together',
    '{"lesson_name": "How Communities Solve Problems Together", "lesson_description": "3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how groups of people working together can solve problems that individuals cannot solve alone \u2014 and what gets in the way."}, {"content_key": "preparation_guidelines", "content_value": "Describe a type of problem that requires collective action.Explain the tragedy of the commons using a simple example.Describe what researchers say helps communities solve shared problems.End with one question that helps a community decide whether to take action"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2-3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Presentation Skill', 3, NULL, 'MEDIUM', 236
  );

END $$;
