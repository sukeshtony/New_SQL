-- =====================================================
-- Module 7: Silly Topic Debates - Grade 3 (30 Lessons) [HARD]
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Training Module: 8addaf36-3881-49d8-ab34-444c399bf432
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

  -- Lesson 1: Hand Notes vs. Memorizing
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Hand Notes vs. Memorizing', '3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Taking notes by hand is better than just trying to remember.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Writing things down helps you slow down and actually think.
That makes sense. But why might someone prefer to remember without writing?
Give your third reason for your side.
Which do you think helps more for the long run, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Hand Notes', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Memorizing', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Hand Notes vs. Memorizing',
    '{"lesson_name": "Hand Notes vs. Memorizing", "lesson_description": "3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Taking notes by hand is better than just trying to remember."}, {"content_key": "content", "content_value": "Writing things down helps you slow down and actually think.\nThat makes sense. But why might someone prefer to remember without writing?\nGive your third reason for your side.\nWhich do you think helps more for the long run, and why?"}, {"content_key": "ai_side", "content_value": "Hand Notes"}, {"content_key": "user_side", "content_value": "Memorizing"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 7
  );

  -- Lesson 2: Reading New vs. Rereading
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Reading New vs. Rereading', '3SL1 (90%) PRIMARY | 3SL4 (88%) PRIMARY | 3-5L1 (86%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reading the same book twice is better than always reading something new.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'When you read again, you notice things you missed the first time.
Good reasoning. Why might always picking a new book be valuable?
What is your final point for your side?
Which approach teaches you more, and how do you know?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Rereading', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Reading New', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reading New vs. Rereading',
    '{"lesson_name": "Reading New vs. Rereading", "lesson_description": "3SL1 (90%) PRIMARY | 3SL4 (88%) PRIMARY | 3-5L1 (86%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Reading the same book twice is better than always reading something new."}, {"content_key": "content", "content_value": "When you read again, you notice things you missed the first time.\nGood reasoning. Why might always picking a new book be valuable?\nWhat is your final point for your side?\nWhich approach teaches you more, and how do you know?"}, {"content_key": "ai_side", "content_value": "Rereading"}, {"content_key": "user_side", "content_value": "Reading New"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 15
  );

  -- Lesson 3: Working Alone vs. Pairs
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Working Alone vs. Pairs', '3SL1 [3SL1d] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/46.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Working alone is better than working in pairs.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Working alone means you can focus without distractions.
That''s a strong point. Why might working in pairs help you think better?
Give your final argument.
Can you think of a time when one approach is clearly better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Working Alone', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Pairs', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Working Alone vs. Pairs',
    '{"lesson_name": "Working Alone vs. Pairs", "lesson_description": "3SL1 [3SL1d] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Working alone is better than working in pairs."}, {"content_key": "content", "content_value": "Working alone means you can focus without distractions.\nThat''s a strong point. Why might working in pairs help you think better?\nGive your final argument.\nCan you think of a time when one approach is clearly better?"}, {"content_key": "ai_side", "content_value": "Working Alone"}, {"content_key": "user_side", "content_value": "Pairs"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 23
  );

  -- Lesson 4: Asking for Help vs. Figuring It Out
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Asking for Help vs. Figuring It Out', '3SL1 (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/66.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Figuring something out yourself is better than asking for help.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Solving it yourself builds independence and confidence.
Interesting. What can asking for help teach you that independence can''t?
Make your final case.
Which approach do you think produces better results, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Asking for Help', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Figuring It Out', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Asking for Help vs. Figuring It Out',
    '{"lesson_name": "Asking for Help vs. Figuring It Out", "lesson_description": "3SL1 (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Figuring something out yourself is better than asking for help."}, {"content_key": "content", "content_value": "Solving it yourself builds independence and confidence.\nInteresting. What can asking for help teach you that independence can''t?\nMake your final case.\nWhich approach do you think produces better results, and why?"}, {"content_key": "ai_side", "content_value": "Asking for Help"}, {"content_key": "user_side", "content_value": "Figuring It Out"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 31
  );

  -- Lesson 5: Learning from Mistakes vs. Success
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Learning from Mistakes vs. Success', '3SL1 (90%) PRIMARY | 3SL4 (88%) PRIMARY | 3-5L1 (86%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Learning from mistakes is more valuable than learning from success.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Mistakes show you exactly where your thinking needs to change.
True. But what does success teach that failure cannot?
Conclude your argument.
Is one always more useful, or does it depend on the situation?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Learning from Mistakes', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Success', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning from Mistakes vs. Success',
    '{"lesson_name": "Learning from Mistakes vs. Success", "lesson_description": "3SL1 (90%) PRIMARY | 3SL4 (88%) PRIMARY | 3-5L1 (86%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Learning from mistakes is more valuable than learning from success."}, {"content_key": "content", "content_value": "Mistakes show you exactly where your thinking needs to change.\nTrue. But what does success teach that failure cannot?\nConclude your argument.\nIs one always more useful, or does it depend on the situation?"}, {"content_key": "ai_side", "content_value": "Learning from Mistakes"}, {"content_key": "user_side", "content_value": "Success"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 39
  );

  -- Lesson 6: Hardest Task First vs. Easiest
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Hardest Task First vs. Easiest', '3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/80.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Starting with the hardest task is better than starting with the easiest.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Tackling the hardest first means your brain is at its sharpest.
Good reasoning. Why might starting with something easy be a smart strategy?
Final argument?
How does the order of your tasks change how you feel about your work?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Hardest Task First', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Easiest', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Hardest Task First vs. Easiest',
    '{"lesson_name": "Hardest Task First vs. Easiest", "lesson_description": "3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Starting with the hardest task is better than starting with the easiest."}, {"content_key": "content", "content_value": "Tackling the hardest first means your brain is at its sharpest.\nGood reasoning. Why might starting with something easy be a smart strategy?\nFinal argument?\nHow does the order of your tasks change how you feel about your work?"}, {"content_key": "ai_side", "content_value": "Hardest Task First"}, {"content_key": "user_side", "content_value": "Easiest"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 47
  );

  -- Lesson 7: Consistency vs. Creativity
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Consistency vs. Creativity', '3SL1 [3SL1d] (91%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/66.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being consistent is more important than being creative.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Consistency builds trust — people know what to expect from you.
That''s a strong point. Why does creativity matter when consistency isn''t enough?
Give your final reason.
Can someone be both? What would that look like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Consistency', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Creativity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Consistency vs. Creativity',
    '{"lesson_name": "Consistency vs. Creativity", "lesson_description": "3SL1 [3SL1d] (91%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being consistent is more important than being creative."}, {"content_key": "content", "content_value": "Consistency builds trust \u2014 people know what to expect from you.\nThat''s a strong point. Why does creativity matter when consistency isn''t enough?\nGive your final reason.\nCan someone be both? What would that look like?"}, {"content_key": "ai_side", "content_value": "Consistency"}, {"content_key": "user_side", "content_value": "Creativity"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 55
  );

  -- Lesson 8: Rules vs. Instinct
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Rules vs. Instinct', '3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Following rules is better than following your instincts.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Rules create fairness and protect everyone equally.
Good thinking. When might instinct lead to a better outcome than a rule?
Make your final case.
Have you ever felt like a rule was wrong? What do you do then?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Rules', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Instinct', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Rules vs. Instinct',
    '{"lesson_name": "Rules vs. Instinct", "lesson_description": "3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Following rules is better than following your instincts."}, {"content_key": "content", "content_value": "Rules create fairness and protect everyone equally.\nGood thinking. When might instinct lead to a better outcome than a rule?\nMake your final case.\nHave you ever felt like a rule was wrong? What do you do then?"}, {"content_key": "ai_side", "content_value": "Rules"}, {"content_key": "user_side", "content_value": "Instinct"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 63
  );

  -- Lesson 9: Thinking Before Speaking vs. Speaking to Think
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Thinking Before Speaking vs. Speaking to Think', '3SL4 (92%) PRIMARY | 3SL1 [3SL1a] (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Thinking carefully before you speak is better than speaking to figure out what you think.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Pausing helps you say what you actually mean, not just what comes out first.
That makes sense. Why might saying things out loud help you understand your own thinking?
Your final point?
Which approach do you use most, and does it work well for you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Thinking Before Speaking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Speaking to Think', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Thinking Before Speaking vs. Speaking to Think',
    '{"lesson_name": "Thinking Before Speaking vs. Speaking to Think", "lesson_description": "3SL4 (92%) PRIMARY | 3SL1 [3SL1a] (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Thinking carefully before you speak is better than speaking to figure out what you think."}, {"content_key": "content", "content_value": "Pausing helps you say what you actually mean, not just what comes out first.\nThat makes sense. Why might saying things out loud help you understand your own thinking?\nYour final point?\nWhich approach do you use most, and does it work well for you?"}, {"content_key": "ai_side", "content_value": "Thinking Before Speaking"}, {"content_key": "user_side", "content_value": "Speaking to Think"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 71
  );

  -- Lesson 10: Being Early vs. On Time
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Being Early vs. On Time', '3SL1 (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/91.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being early is better than being exactly on time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Arriving early gives you time to prepare and shows respect for others.
Strong reasoning. Why might arriving exactly on time be just as good?
Conclude your argument.
Does the kind of event change which matters more?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Being Early', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'On Time', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Being Early vs. On Time',
    '{"lesson_name": "Being Early vs. On Time", "lesson_description": "3SL1 (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being early is better than being exactly on time."}, {"content_key": "content", "content_value": "Arriving early gives you time to prepare and shows respect for others.\nStrong reasoning. Why might arriving exactly on time be just as good?\nConclude your argument.\nDoes the kind of event change which matters more?"}, {"content_key": "ai_side", "content_value": "Being Early"}, {"content_key": "user_side", "content_value": "On Time"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 79
  );

  -- Lesson 11: Improving Weaknesses vs. Strengths
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Improving Weaknesses vs. Strengths', '3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Practicing something you are bad at is better than getting better at something you are already good at.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Improving a weakness closes gaps and builds a more balanced skill set.
Interesting. Why might deepening a strength lead to greater success?
Your final argument?
Which strategy do you think schools should focus on, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Improving Weaknesses', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Strengths', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Improving Weaknesses vs. Strengths',
    '{"lesson_name": "Improving Weaknesses vs. Strengths", "lesson_description": "3SL1 [3SL1a] (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Practicing something you are bad at is better than getting better at something you are already good at."}, {"content_key": "content", "content_value": "Improving a weakness closes gaps and builds a more balanced skill set.\nInteresting. Why might deepening a strength lead to greater success?\nYour final argument?\nWhich strategy do you think schools should focus on, and why?"}, {"content_key": "ai_side", "content_value": "Improving Weaknesses"}, {"content_key": "user_side", "content_value": "Strengths"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 87
  );

  -- Lesson 12: Detailed Feedback vs. Simple Praise
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Detailed Feedback vs. Simple Praise', '3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Giving detailed feedback is more helpful than just saying "good job."', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Specific feedback tells someone exactly what worked and what to change.
True. Why might simple encouragement sometimes be exactly what someone needs?
Final point?
Is there a time when detailed feedback can actually discourage someone?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Detailed Feedback', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Simple Praise', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Detailed Feedback vs. Simple Praise',
    '{"lesson_name": "Detailed Feedback vs. Simple Praise", "lesson_description": "3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Giving detailed feedback is more helpful than just saying \"good job.\""}, {"content_key": "content", "content_value": "Specific feedback tells someone exactly what worked and what to change.\nTrue. Why might simple encouragement sometimes be exactly what someone needs?\nFinal point?\nIs there a time when detailed feedback can actually discourage someone?"}, {"content_key": "ai_side", "content_value": "Detailed Feedback"}, {"content_key": "user_side", "content_value": "Simple Praise"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 95
  );

  -- Lesson 13: Teaching Others vs. Self-Study
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Teaching Others vs. Self-Study', '3SL4 (92%) PRIMARY | 3SL1 [3SL1d] (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/27.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Teaching something to someone else is a better way to learn than studying it yourself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'When you teach, you have to understand something deeply enough to explain it clearly.
That''s logical. Why might studying alone allow for deeper or more personal understanding?
Make your final case.
Have you ever learned more by explaining something than by reading it?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Teaching Others', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Self-Study', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teaching Others vs. Self-Study',
    '{"lesson_name": "Teaching Others vs. Self-Study", "lesson_description": "3SL4 (92%) PRIMARY | 3SL1 [3SL1d] (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Teaching something to someone else is a better way to learn than studying it yourself."}, {"content_key": "content", "content_value": "When you teach, you have to understand something deeply enough to explain it clearly.\nThat''s logical. Why might studying alone allow for deeper or more personal understanding?\nMake your final case.\nHave you ever learned more by explaining something than by reading it?"}, {"content_key": "ai_side", "content_value": "Teaching Others"}, {"content_key": "user_side", "content_value": "Self-Study"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 103
  );

  -- Lesson 14: Curiosity vs. Caution
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Curiosity vs. Caution', '3SL1 (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/81.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being curious is more valuable than being careful.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Curiosity drives discovery and helps people grow beyond what they already know.
Good reasoning. When does being too curious lead someone into trouble?
Conclude your argument.
Can curiosity and caution work together, or do they usually push against each other?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Curiosity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Caution', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Curiosity vs. Caution',
    '{"lesson_name": "Curiosity vs. Caution", "lesson_description": "3SL1 (91%) PRIMARY | 3SL4 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being curious is more valuable than being careful."}, {"content_key": "content", "content_value": "Curiosity drives discovery and helps people grow beyond what they already know.\nGood reasoning. When does being too curious lead someone into trouble?\nConclude your argument.\nCan curiosity and caution work together, or do they usually push against each other?"}, {"content_key": "ai_side", "content_value": "Curiosity"}, {"content_key": "user_side", "content_value": "Caution"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 111
  );

  -- Lesson 15: Planning vs. Going with the Flow
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Planning vs. Going with the Flow', '3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Making a plan is better than going with the flow.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'A plan gives you direction and helps you use your time well.
Strong point. What can happen when someone goes with the flow that planning prevents?
Final argument?
Which approach do you prefer, and what does that say about how you learn?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Going with the Flow', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Planning vs. Going with the Flow',
    '{"lesson_name": "Planning vs. Going with the Flow", "lesson_description": "3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Making a plan is better than going with the flow."}, {"content_key": "content", "content_value": "A plan gives you direction and helps you use your time well.\nStrong point. What can happen when someone goes with the flow that planning prevents?\nFinal argument?\nWhich approach do you prefer, and what does that say about how you learn?"}, {"content_key": "ai_side", "content_value": "Planning"}, {"content_key": "user_side", "content_value": "Going with the Flow"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 119
  );

  -- Lesson 16: Confidence vs. Humility
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Confidence vs. Humility', '3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being humble is more important than being confident.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Humility lets you listen and learn from others rather than assuming you already know.
That''s thoughtful. Why does confidence sometimes make learning happen faster?
Your final, most nuanced reason?
Can someone be both humble and confident, or does one always win out?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Confidence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Humility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Confidence vs. Humility',
    '{"lesson_name": "Confidence vs. Humility", "lesson_description": "3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being humble is more important than being confident."}, {"content_key": "content", "content_value": "Humility lets you listen and learn from others rather than assuming you already know.\nThat''s thoughtful. Why does confidence sometimes make learning happen faster?\nYour final, most nuanced reason?\nCan someone be both humble and confident, or does one always win out?"}, {"content_key": "ai_side", "content_value": "Confidence"}, {"content_key": "user_side", "content_value": "Humility"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 127
  );

  -- Lesson 17: Tradition vs. Innovation
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Tradition vs. Innovation', '3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Trying something new is better than following tradition.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'New approaches help you solve old problems in ways that couldn''t have been imagined before.
That''s a strong case. What does tradition protect that innovation sometimes loses?
Give your most nuanced argument.
Is there a kind of learning where tradition and innovation are both necessary?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Tradition', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Innovation', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tradition vs. Innovation',
    '{"lesson_name": "Tradition vs. Innovation", "lesson_description": "3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Trying something new is better than following tradition."}, {"content_key": "content", "content_value": "New approaches help you solve old problems in ways that couldn''t have been imagined before.\nThat''s a strong case. What does tradition protect that innovation sometimes loses?\nGive your most nuanced argument.\nIs there a kind of learning where tradition and innovation are both necessary?"}, {"content_key": "ai_side", "content_value": "Tradition"}, {"content_key": "user_side", "content_value": "Innovation"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 135
  );

  -- Lesson 18: Being Direct vs. Being Gentle
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Being Direct vs. Being Gentle', '3SL4 (92%) PRIMARY | 3SL1 [3SL1d] (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being direct is better than being gentle when giving feedback.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Being direct respects someone''s time and gives them exactly what they need to improve.
Good reasoning. When does being direct cause more harm than good?
Your final argument, considering both sides?
Does the relationship between two people change which approach is better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Being Direct', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Being Gentle', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Being Direct vs. Being Gentle',
    '{"lesson_name": "Being Direct vs. Being Gentle", "lesson_description": "3SL4 (92%) PRIMARY | 3SL1 [3SL1d] (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being direct is better than being gentle when giving feedback."}, {"content_key": "content", "content_value": "Being direct respects someone''s time and gives them exactly what they need to improve.\nGood reasoning. When does being direct cause more harm than good?\nYour final argument, considering both sides?\nDoes the relationship between two people change which approach is better?"}, {"content_key": "ai_side", "content_value": "Being Direct"}, {"content_key": "user_side", "content_value": "Being Gentle"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 143
  );

  -- Lesson 19: Depth vs. Breadth
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Depth vs. Breadth', '3SL1 [3SL1a] (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Doing fewer things really well is better than doing many things reasonably well.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Mastering fewer things produces higher quality and deeper understanding.
Interesting. Why might doing many things reasonably well actually serve you better in life?
Make your most thoughtful final point.
Does it depend on what stage of learning you are at?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Depth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Breadth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Depth vs. Breadth',
    '{"lesson_name": "Depth vs. Breadth", "lesson_description": "3SL1 [3SL1a] (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Doing fewer things really well is better than doing many things reasonably well."}, {"content_key": "content", "content_value": "Mastering fewer things produces higher quality and deeper understanding.\nInteresting. Why might doing many things reasonably well actually serve you better in life?\nMake your most thoughtful final point.\nDoes it depend on what stage of learning you are at?"}, {"content_key": "ai_side", "content_value": "Depth"}, {"content_key": "user_side", "content_value": "Breadth"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 151
  );

  -- Lesson 20: Standing Out vs. Fitting In
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Standing Out vs. Fitting In', '3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/41.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Standing out is better than fitting in.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Standing out means you bring something unique that groups can''t create on their own.
That''s true. What does fitting in offer that standing out sometimes sacrifices?
Your most nuanced final argument?
Is standing out always a choice, or do some people have no option?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Standing Out', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Fitting In', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Standing Out vs. Fitting In',
    '{"lesson_name": "Standing Out vs. Fitting In", "lesson_description": "3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Standing out is better than fitting in."}, {"content_key": "content", "content_value": "Standing out means you bring something unique that groups can''t create on their own.\nThat''s true. What does fitting in offer that standing out sometimes sacrifices?\nYour most nuanced final argument?\nIs standing out always a choice, or do some people have no option?"}, {"content_key": "ai_side", "content_value": "Standing Out"}, {"content_key": "user_side", "content_value": "Fitting In"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 159
  );

  -- Lesson 21: Admitting You're Wrong vs. Explaining Your Reasoning
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Admitting You''re Wrong vs. Explaining Your Reasoning', '3SL4 (92%) PRIMARY | 3SL1 [3SL1d] (91%) PRIMARY | 3-5L1 (89%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/57.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Admitting you are wrong is more important than explaining your reasoning.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Admitting you''re wrong rebuilds trust and moves the conversation forward faster.
Good thinking. Why does explaining your reasoning sometimes matter even more than the outcome?
Final argument?
Can doing both at once make someone more credible, or does it seem like making excuses?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Explaining Your Reasoning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Admitting You''re Wrong', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Admitting You''re Wrong vs. Explaining Your Reasoning',
    '{"lesson_name": "Admitting You''re Wrong vs. Explaining Your Reasoning", "lesson_description": "3SL4 (92%) PRIMARY | 3SL1 [3SL1d] (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Admitting you are wrong is more important than explaining your reasoning."}, {"content_key": "content", "content_value": "Admitting you''re wrong rebuilds trust and moves the conversation forward faster.\nGood thinking. Why does explaining your reasoning sometimes matter even more than the outcome?\nFinal argument?\nCan doing both at once make someone more credible, or does it seem like making excuses?"}, {"content_key": "ai_side", "content_value": "Explaining Your Reasoning"}, {"content_key": "user_side", "content_value": "Admitting You''re Wrong"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 167
  );

  -- Lesson 22: Trusting Instincts vs. Trusting Evidence
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Trusting Instincts vs. Trusting Evidence', '3SL1 (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Trusting evidence is better than trusting your instincts.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Evidence gives you information that your instincts might miss or distort.
Strong case. When has trusting an instinct led to a better outcome than waiting for evidence?
Your final, most thoughtful argument?
Is there a way to use both, and how would you describe that approach?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Trusting Evidence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Trusting Instincts', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trusting Instincts vs. Trusting Evidence',
    '{"lesson_name": "Trusting Instincts vs. Trusting Evidence", "lesson_description": "3SL1 (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Trusting evidence is better than trusting your instincts."}, {"content_key": "content", "content_value": "Evidence gives you information that your instincts might miss or distort.\nStrong case. When has trusting an instinct led to a better outcome than waiting for evidence?\nYour final, most thoughtful argument?\nIs there a way to use both, and how would you describe that approach?"}, {"content_key": "ai_side", "content_value": "Trusting Evidence"}, {"content_key": "user_side", "content_value": "Trusting Instincts"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 175
  );

  -- Lesson 23: Learning from History vs. Imagining the Future
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Learning from History vs. Imagining the Future', '3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Learning from history is more useful than imagining the future.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'History shows us what actually happened, not just what we hope will happen.
That''s logical. Why might imagining the future be more important than studying the past?
Final argument?
Can history help us imagine the future better, or do they pull us in opposite directions?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Learning from History', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Imagining the Future', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning from History vs. Imagining the Future',
    '{"lesson_name": "Learning from History vs. Imagining the Future", "lesson_description": "3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Learning from history is more useful than imagining the future."}, {"content_key": "content", "content_value": "History shows us what actually happened, not just what we hope will happen.\nThat''s logical. Why might imagining the future be more important than studying the past?\nFinal argument?\nCan history help us imagine the future better, or do they pull us in opposite directions?"}, {"content_key": "ai_side", "content_value": "Learning from History"}, {"content_key": "user_side", "content_value": "Imagining the Future"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 183
  );

  -- Lesson 24: Thinking Out Loud vs. Thinking in Silence
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Thinking Out Loud vs. Thinking in Silence', '3SL4 (93%) PRIMARY | 3SL1 [3SL1d] (92%) PRIMARY | 3-5L1 (90%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/52.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Thinking out loud is better than thinking in silence.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Saying your thinking out loud lets others help you catch errors and build new ideas.
That''s compelling. What do people discover in silence that they can''t find when they speak?
Give your most layered final argument.
Does the type of problem you''re solving change which approach works better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Thinking Out Loud', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Thinking in Silence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Thinking Out Loud vs. Thinking in Silence',
    '{"lesson_name": "Thinking Out Loud vs. Thinking in Silence", "lesson_description": "3SL4 (93%) PRIMARY | 3SL1 [3SL1d] (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Thinking out loud is better than thinking in silence."}, {"content_key": "content", "content_value": "Saying your thinking out loud lets others help you catch errors and build new ideas.\nThat''s compelling. What do people discover in silence that they can''t find when they speak?\nGive your most layered final argument.\nDoes the type of problem you''re solving change which approach works better?"}, {"content_key": "ai_side", "content_value": "Thinking Out Loud"}, {"content_key": "user_side", "content_value": "Thinking in Silence"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 191
  );

  -- Lesson 25: Sharing Early vs. Waiting Until Perfect
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Sharing Early vs. Waiting Until Perfect', '3SL1 [3SL1a] (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/92.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Sharing your work before it is finished is better than waiting until it is perfect.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Early feedback lets you change direction before you''ve spent too much time going the wrong way.
Very thoughtful. What does waiting until something is complete protect you from?
Your most nuanced final argument?
How do you know when something is ready enough to share, but not so late that the feedback won''t help?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Sharing Early', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Waiting Until Perfect', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing Early vs. Waiting Until Perfect',
    '{"lesson_name": "Sharing Early vs. Waiting Until Perfect", "lesson_description": "3SL1 [3SL1a] (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Sharing your work before it is finished is better than waiting until it is perfect."}, {"content_key": "content", "content_value": "Early feedback lets you change direction before you''ve spent too much time going the wrong way.\nVery thoughtful. What does waiting until something is complete protect you from?\nYour most nuanced final argument?\nHow do you know when something is ready enough to share, but not so late that the feedback won''t help?"}, {"content_key": "ai_side", "content_value": "Sharing Early"}, {"content_key": "user_side", "content_value": "Waiting Until Perfect"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 199
  );

  -- Lesson 26: Failing Fast vs. Planning Carefully
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Failing Fast vs. Planning Carefully', '3SL1 (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/81.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Failing fast and trying again is better than planning carefully before you start.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Failing fast gives you real information that no amount of planning can predict.
Compelling. What does careful planning prevent that rapid trial-and-error cannot?
Final argument, considering the costs of both approaches?
Is there a situation where failing fast would actually slow you down?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Failing Fast', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Planning Carefully', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Failing Fast vs. Planning Carefully',
    '{"lesson_name": "Failing Fast vs. Planning Carefully", "lesson_description": "3SL1 (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Failing fast and trying again is better than planning carefully before you start."}, {"content_key": "content", "content_value": "Failing fast gives you real information that no amount of planning can predict.\nCompelling. What does careful planning prevent that rapid trial-and-error cannot?\nFinal argument, considering the costs of both approaches?\nIs there a situation where failing fast would actually slow you down?"}, {"content_key": "ai_side", "content_value": "Failing Fast"}, {"content_key": "user_side", "content_value": "Planning Carefully"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 207
  );

  -- Lesson 27: Effort vs. Results
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Effort vs. Results', '3SL4 (93%) PRIMARY | 3SL1 [3SL1d] (92%) PRIMARY | 3-5L1 (90%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/34.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being remembered for effort is better than being remembered for results.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Effort reflects character and persistence, which outlast any single achievement.
Strong reasoning. Why do results sometimes communicate more clearly than effort ever can?
Your most layered final point?
Is it possible that effort and results tell the same story about a person, or are they always separate?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Effort', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Results', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Effort vs. Results',
    '{"lesson_name": "Effort vs. Results", "lesson_description": "3SL4 (93%) PRIMARY | 3SL1 [3SL1d] (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being remembered for effort is better than being remembered for results."}, {"content_key": "content", "content_value": "Effort reflects character and persistence, which outlast any single achievement.\nStrong reasoning. Why do results sometimes communicate more clearly than effort ever can?\nYour most layered final point?\nIs it possible that effort and results tell the same story about a person, or are they always separate?"}, {"content_key": "ai_side", "content_value": "Effort"}, {"content_key": "user_side", "content_value": "Results"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 215
  );

  -- Lesson 28: Honesty vs. Kindness
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Honesty vs. Kindness', '3SL1 [3SL1a] (94%) PRIMARY | 3SL4 (92%) PRIMARY | 3-5L1 (90%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being honest even when it is uncomfortable is better than protecting someone''s feelings.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Honesty respects someone enough to give them what they actually need, not just what feels nice.
That''s a powerful point. When does protecting someone''s feelings show a deeper form of respect?
Your most nuanced final argument?
Is it possible to be fully honest and fully kind at the same time, or does one always cost the other?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Honesty', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Kindness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Honesty vs. Kindness',
    '{"lesson_name": "Honesty vs. Kindness", "lesson_description": "3SL1 [3SL1a] (94%) PRIMARY | 3SL4 (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being honest even when it is uncomfortable is better than protecting someone''s feelings."}, {"content_key": "content", "content_value": "Honesty respects someone enough to give them what they actually need, not just what feels nice.\nThat''s a powerful point. When does protecting someone''s feelings show a deeper form of respect?\nYour most nuanced final argument?\nIs it possible to be fully honest and fully kind at the same time, or does one always cost the other?"}, {"content_key": "ai_side", "content_value": "Honesty"}, {"content_key": "user_side", "content_value": "Kindness"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 223
  );

  -- Lesson 29: Adapting vs. Staying Consistent
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Adapting vs. Staying Consistent', '3SL1 (93%) PRIMARY | 3SL4 (92%) PRIMARY | 3-5L1 (90%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Changing to fit a new situation is better than staying consistent no matter what.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Adapting shows intelligence and the ability to read what the moment actually needs.
Thoughtful. What does consistency offer that adaptation sometimes sacrifices?
Final argument at your most sophisticated?
Is the ability to adapt itself a form of consistency — a consistent way of approaching the world?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Adapting', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Staying Consistent', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Adapting vs. Staying Consistent',
    '{"lesson_name": "Adapting vs. Staying Consistent", "lesson_description": "3SL1 (93%) PRIMARY | 3SL4 (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Changing to fit a new situation is better than staying consistent no matter what."}, {"content_key": "content", "content_value": "Adapting shows intelligence and the ability to read what the moment actually needs.\nThoughtful. What does consistency offer that adaptation sometimes sacrifices?\nFinal argument at your most sophisticated?\nIs the ability to adapt itself a form of consistency \u2014 a consistent way of approaching the world?"}, {"content_key": "ai_side", "content_value": "Adapting"}, {"content_key": "user_side", "content_value": "Staying Consistent"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 231
  );

  -- Lesson 30: Fewer Better Questions vs. Many Questions
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Fewer Better Questions vs. Many Questions', '3SL1 [3SL1d] (94%) PRIMARY | 3SL4 (92%) PRIMARY | 3-5L1 (90%) SECONDARY', '8addaf36-3881-49d8-ab34-444c399bf432',
    'HARD', 'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/40.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Asking fewer, better questions is more valuable than asking many questions.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'A precise question shows you''ve already thought carefully, and it gets you to the answer faster.
Compelling. Why might asking many questions be a more honest way to explore something you don''t yet understand?
Your final, most carefully considered argument?
Is the value of a question in its precision, its volume, or in what it reveals about the person asking it?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Many Questions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Fewer Better Questions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fewer Better Questions vs. Many Questions',
    '{"lesson_name": "Fewer Better Questions vs. Many Questions", "lesson_description": "3SL1 [3SL1d] (94%) PRIMARY | 3SL4 (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Asking fewer, better questions is more valuable than asking many questions."}, {"content_key": "content", "content_value": "A precise question shows you''ve already thought carefully, and it gets you to the answer faster.\nCompelling. Why might asking many questions be a more honest way to explore something you don''t yet understand?\nYour final, most carefully considered argument?\nIs the value of a question in its precision, its volume, or in what it reveals about the person asking it?"}, {"content_key": "ai_side", "content_value": "Many Questions"}, {"content_key": "user_side", "content_value": "Fewer Better Questions"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'HARD', 239
  );

END $$;
