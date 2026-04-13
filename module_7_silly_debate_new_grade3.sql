-- =====================================================
-- Module 7: Silly Topic Debate - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: 8addaf36-3881-49d8-ab34-444c399bf432
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

  -- Lesson 1: Cats vs. Dogs
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Cats vs. Dogs', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Cats are better pets than dogs.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Dogs', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Cats', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Why do you think cats are the best pets?
That''s an interesting reason. Now tell me why someone might prefer dogs.
Give your final argument for why cats should win this debate.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Cats vs. Dogs',
    '{"lesson_name": "Cats vs. Dogs", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Cats are better pets than dogs."}, {"content_key": "user_side", "content_value": "Dogs"}, {"content_key": "ai_side", "content_value": "Cats"}, {"content_key": "content", "content_value": "Why do you think cats are the best pets?\nThat''s an interesting reason. Now tell me why someone might prefer dogs.\nGive your final argument for why cats should win this debate."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 7
  );

  -- Lesson 2: Summer vs. Winter
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Summer vs. Winter', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/78.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Summer is better than winter.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Winter', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Summer', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'What makes summer so great? Give your best reason.
Some people love winter. What do they enjoy that summer doesn''t have?
Make your final case: which season wins and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Summer vs. Winter',
    '{"lesson_name": "Summer vs. Winter", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Summer is better than winter."}, {"content_key": "user_side", "content_value": "Winter"}, {"content_key": "ai_side", "content_value": "Summer"}, {"content_key": "content", "content_value": "What makes summer so great? Give your best reason.\nSome people love winter. What do they enjoy that summer doesn''t have?\nMake your final case: which season wins and why?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 15
  );

  -- Lesson 3: Pizza vs. Tacos
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Pizza vs. Tacos', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/81.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Pizza is better than tacos.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Tacos', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Start us off — what makes pizza the winner?
Now play the other side: what would taco fans say?
Wrap it up with your strongest argument for pizza.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pizza vs. Tacos',
    '{"lesson_name": "Pizza vs. Tacos", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Pizza is better than tacos."}, {"content_key": "user_side", "content_value": "Tacos"}, {"content_key": "ai_side", "content_value": "Pizza"}, {"content_key": "content", "content_value": "Start us off — what makes pizza the winner?\nNow play the other side: what would taco fans say?\nWrap it up with your strongest argument for pizza."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 23
  );

  -- Lesson 4: Morning vs. Night
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Morning vs. Night', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/43.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being a morning person is better than being a night owl.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Night', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Morning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Why is morning the best time of day?
Night owls disagree. What do they love about staying up late?
Final argument: morning or night — which one wins?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Morning vs. Night',
    '{"lesson_name": "Morning vs. Night", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being a morning person is better than being a night owl."}, {"content_key": "user_side", "content_value": "Night"}, {"content_key": "ai_side", "content_value": "Morning"}, {"content_key": "content", "content_value": "Why is morning the best time of day?\nNight owls disagree. What do they love about staying up late?\nFinal argument: morning or night — which one wins?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 31
  );

  -- Lesson 5: Books vs. Movies
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Books vs. Movies', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/66.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Books are better than movies.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Movies', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Books', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Make your case for books first.
Now argue the movie side — what does a film give you that a book can''t?
Close it out: what''s your strongest argument?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Books vs. Movies',
    '{"lesson_name": "Books vs. Movies", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Books are better than movies."}, {"content_key": "user_side", "content_value": "Movies"}, {"content_key": "ai_side", "content_value": "Books"}, {"content_key": "content", "content_value": "Make your case for books first.\nNow argue the movie side — what does a film give you that a book can''t?\nClose it out: what''s your strongest argument?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 39
  );

  -- Lesson 6: Indoor Recess vs. Outdoor Recess
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Indoor Recess vs. Outdoor Recess', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/96.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Outdoor recess is better than indoor recess.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Outdoor Recess', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Indoor Recess', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Start by arguing for outdoor recess.
What could someone who loves indoor recess say back to you?
Give your final word on which one is better and why.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Indoor Recess vs. Outdoor Recess',
    '{"lesson_name": "Indoor Recess vs. Outdoor Recess", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Outdoor recess is better than indoor recess."}, {"content_key": "user_side", "content_value": "Outdoor Recess"}, {"content_key": "ai_side", "content_value": "Indoor Recess"}, {"content_key": "content", "content_value": "Start by arguing for outdoor recess.\nWhat could someone who loves indoor recess say back to you?\nGive your final word on which one is better and why."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 47
  );

  -- Lesson 7: Homework vs. No Homework
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Homework vs. No Homework', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/69.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Students should not have homework on weekends.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'No Homework', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Homework', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Why should weekends be homework-free? Build your argument.
Teachers who give weekend homework would say what in return?
Is there any homework that would be okay on weekends? Explain, then close your argument.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Homework vs. No Homework',
    '{"lesson_name": "Homework vs. No Homework", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Students should not have homework on weekends."}, {"content_key": "user_side", "content_value": "No Homework"}, {"content_key": "ai_side", "content_value": "Homework"}, {"content_key": "content", "content_value": "Why should weekends be homework-free? Build your argument.\nTeachers who give weekend homework would say what in return?\nIs there any homework that would be okay on weekends? Explain, then close your argument."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 55
  );

  -- Lesson 8: Longer Lunch vs. Shorter Lunch
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Longer Lunch vs. Shorter Lunch', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Students should get 45 minutes for lunch.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Shorter Lunch', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Longer Lunch', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue why a longer lunch period is worth it.
What might the school principal say against a 45-minute lunch?
Wrap up your argument — is the extra time really worth it?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Longer Lunch vs. Shorter Lunch',
    '{"lesson_name": "Longer Lunch vs. Shorter Lunch", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Students should get 45 minutes for lunch."}, {"content_key": "user_side", "content_value": "Shorter Lunch"}, {"content_key": "ai_side", "content_value": "Longer Lunch"}, {"content_key": "content", "content_value": "Argue why a longer lunch period is worth it.\nWhat might the school principal say against a 45-minute lunch?\nWrap up your argument — is the extra time really worth it?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 63
  );

  -- Lesson 9: Gym Class vs. Art Class
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Gym Class vs. Art Class', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Gym class is more important than art class.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Art Class', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Gym Class', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Start your argument — why should gym class win?
Art teachers would push back. What would they say?
Give your final statement: which class matters more to a student''s day?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Gym Class vs. Art Class',
    '{"lesson_name": "Gym Class vs. Art Class", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Gym class is more important than art class."}, {"content_key": "user_side", "content_value": "Art Class"}, {"content_key": "ai_side", "content_value": "Gym Class"}, {"content_key": "content", "content_value": "Start your argument — why should gym class win?\nArt teachers would push back. What would they say?\nGive your final statement: which class matters more to a student''s day?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 71
  );

  -- Lesson 10: Crunchy vs. Smooth Peanut Butter
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Crunchy vs. Smooth Peanut Butter', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Crunchy peanut butter is better than smooth.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Smooth Peanut Butter', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Crunchy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Make the case for crunchy — why is it clearly the winner?
Smooth peanut butter fans have opinions too. What do they say?
Land your strongest argument and declare a winner.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Crunchy vs. Smooth Peanut Butter',
    '{"lesson_name": "Crunchy vs. Smooth Peanut Butter", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Crunchy peanut butter is better than smooth."}, {"content_key": "user_side", "content_value": "Smooth Peanut Butter"}, {"content_key": "ai_side", "content_value": "Crunchy"}, {"content_key": "content", "content_value": "Make the case for crunchy — why is it clearly the winner?\nSmooth peanut butter fans have opinions too. What do they say?\nLand your strongest argument and declare a winner."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 79
  );

  -- Lesson 11: Class Pet vs. No Class Pet
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Class Pet vs. No Class Pet', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/65.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Every classroom should have a class pet.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'No Class Pet', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Class Pet', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Why would a class pet make your classroom better?
What would someone who disagrees with class pets argue?
Make your closing argument — pets in classrooms, yes or no?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Class Pet vs. No Class Pet',
    '{"lesson_name": "Class Pet vs. No Class Pet", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Every classroom should have a class pet."}, {"content_key": "user_side", "content_value": "No Class Pet"}, {"content_key": "ai_side", "content_value": "Class Pet"}, {"content_key": "content", "content_value": "Why would a class pet make your classroom better?\nWhat would someone who disagrees with class pets argue?\nMake your closing argument — pets in classrooms, yes or no?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 87
  );

  -- Lesson 12: Stand-Up Desks vs. Regular Desks
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Stand-Up Desks vs. Regular Desks', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/68.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Students should be allowed to stand while working.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Regular Desks', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Stand-Up Desks', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue the case for stand-up desks in classrooms.
Some students and teachers don''t want them. Why might that be?
Final thought: should standing be an option in your school?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stand-Up Desks vs. Regular Desks',
    '{"lesson_name": "Stand-Up Desks vs. Regular Desks", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Students should be allowed to stand while working."}, {"content_key": "user_side", "content_value": "Regular Desks"}, {"content_key": "ai_side", "content_value": "Stand-Up Desks"}, {"content_key": "content", "content_value": "Argue the case for stand-up desks in classrooms.\nSome students and teachers don''t want them. Why might that be?\nFinal thought: should standing be an option in your school?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 95
  );

  -- Lesson 13: Technology in Class vs. No Screens
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Technology in Class vs. No Screens', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Tablets and computers should be used every day in school.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'No Screens', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Technology in Class', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Build the argument for daily technology use in class.
What would someone who believes in less screen time in school say?
Where do you land? Give your final take on screens in school.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Technology in Class vs. No Screens',
    '{"lesson_name": "Technology in Class vs. No Screens", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Tablets and computers should be used every day in school."}, {"content_key": "user_side", "content_value": "No Screens"}, {"content_key": "ai_side", "content_value": "Technology in Class"}, {"content_key": "content", "content_value": "Build the argument for daily technology use in class.\nWhat would someone who believes in less screen time in school say?\nWhere do you land? Give your final take on screens in school."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 103
  );

  -- Lesson 14: School Uniforms vs. Casual Clothes
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'School Uniforms vs. Casual Clothes', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Students should wear uniforms to school.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Casual Clothes', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'School Uniforms', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Make the case for school uniforms.
What would students who love choosing their own clothes say?
Close your argument — uniforms or freedom of choice?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Uniforms vs. Casual Clothes',
    '{"lesson_name": "School Uniforms vs. Casual Clothes", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Students should wear uniforms to school."}, {"content_key": "user_side", "content_value": "Casual Clothes"}, {"content_key": "ai_side", "content_value": "School Uniforms"}, {"content_key": "content", "content_value": "Make the case for school uniforms.\nWhat would students who love choosing their own clothes say?\nClose your argument — uniforms or freedom of choice?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 111
  );

  -- Lesson 15: Four-Day School Week vs. Five-Day
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Four-Day School Week vs. Five-Day', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/40.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'School should only be four days a week.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Five-Day', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Four-Day School Week', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Why would a four-day school week be a great idea?
What would teachers and parents who prefer five days argue?
Make your final case — four days or five?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Four-Day School Week vs. Five-Day',
    '{"lesson_name": "Four-Day School Week vs. Five-Day", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "School should only be four days a week."}, {"content_key": "user_side", "content_value": "Five-Day"}, {"content_key": "ai_side", "content_value": "Four-Day School Week"}, {"content_key": "content", "content_value": "Why would a four-day school week be a great idea?\nWhat would teachers and parents who prefer five days argue?\nMake your final case — four days or five?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 119
  );

  -- Lesson 16: Fast vs. Careful
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Fast vs. Careful', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'It is better to finish fast than to slow down and check your work.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Careful', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Fast', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue that speed matters — why is finishing fast an advantage?
Now flip it: why would a careful, slow worker say they always come out ahead?
Is there a situation where both could be right? Close with your position.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fast vs. Careful',
    '{"lesson_name": "Fast vs. Careful", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "It is better to finish fast than to slow down and check your work."}, {"content_key": "user_side", "content_value": "Careful"}, {"content_key": "ai_side", "content_value": "Fast"}, {"content_key": "content", "content_value": "Argue that speed matters — why is finishing fast an advantage?\nNow flip it: why would a careful, slow worker say they always come out ahead?\nIs there a situation where both could be right? Close with your position."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 127
  );

  -- Lesson 17: Leaders vs. Followers
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Leaders vs. Followers', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being a good follower is just as important as being a good leader.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Followers', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Leaders', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Make the case that followers are just as valuable as leaders.
Someone who wants to be a leader at all times would argue what?
Final answer: which role matters more, or are they equal?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leaders vs. Followers',
    '{"lesson_name": "Leaders vs. Followers", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being a good follower is just as important as being a good leader."}, {"content_key": "user_side", "content_value": "Followers"}, {"content_key": "ai_side", "content_value": "Leaders"}, {"content_key": "content", "content_value": "Make the case that followers are just as valuable as leaders.\nSomeone who wants to be a leader at all times would argue what?\nFinal answer: which role matters more, or are they equal?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 135
  );

  -- Lesson 18: Group Work vs. Solo Work
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Group Work vs. Solo Work', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Working in a group is better than working alone.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Solo Work', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Group Work', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Build your argument for why group work is superior.
Some students do their best work alone. What would they say?
Is there a type of task where one is clearly better? Make your closing argument.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Group Work vs. Solo Work',
    '{"lesson_name": "Group Work vs. Solo Work", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Working in a group is better than working alone."}, {"content_key": "user_side", "content_value": "Solo Work"}, {"content_key": "ai_side", "content_value": "Group Work"}, {"content_key": "content", "content_value": "Build your argument for why group work is superior.\nSome students do their best work alone. What would they say?\nIs there a type of task where one is clearly better? Make your closing argument."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 143
  );

  -- Lesson 19: Rules vs. No Rules
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Rules vs. No Rules', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Too many rules make school less fun and less creative.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'No Rules', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Rules', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue that fewer rules would make school better.
What would a teacher who believes rules protect everyone say back?
Are any rules absolutely necessary? Close your argument.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Rules vs. No Rules',
    '{"lesson_name": "Rules vs. No Rules", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Too many rules make school less fun and less creative."}, {"content_key": "user_side", "content_value": "No Rules"}, {"content_key": "ai_side", "content_value": "Rules"}, {"content_key": "content", "content_value": "Argue that fewer rules would make school better.\nWhat would a teacher who believes rules protect everyone say back?\nAre any rules absolutely necessary? Close your argument."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 151
  );

  -- Lesson 20: Trying New Things vs. Sticking with What You Know
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Trying New Things vs. Sticking with What You Know', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'It is better to try new things than to stick with what you are already good at.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Sticking with What You Know', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Trying New Things', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Make the case for always trying new things.
What would someone who believes in mastering one skill argue?
What''s your final position — breadth or depth?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trying New Things vs. Sticking with What You Know',
    '{"lesson_name": "Trying New Things vs. Sticking with What You Know", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "It is better to try new things than to stick with what you are already good at."}, {"content_key": "user_side", "content_value": "Sticking with What You Know"}, {"content_key": "ai_side", "content_value": "Trying New Things"}, {"content_key": "content", "content_value": "Make the case for always trying new things.\nWhat would someone who believes in mastering one skill argue?\nWhat''s your final position — breadth or depth?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 159
  );

  -- Lesson 21: Learning from Mistakes vs. Learning from Success
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Learning from Mistakes vs. Learning from Success', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/9.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'You learn more from your mistakes than from your successes.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Learning from Success', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Learning from Mistakes', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue that failure teaches more than winning.
What would someone who believes success is the best teacher say?
Give your final verdict — mistakes or success, which teaches more?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning from Mistakes vs. Learning from Success',
    '{"lesson_name": "Learning from Mistakes vs. Learning from Success", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "You learn more from your mistakes than from your successes."}, {"content_key": "user_side", "content_value": "Learning from Success"}, {"content_key": "ai_side", "content_value": "Learning from Mistakes"}, {"content_key": "content", "content_value": "Argue that failure teaches more than winning.\nWhat would someone who believes success is the best teacher say?\nGive your final verdict — mistakes or success, which teaches more?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 167
  );

  -- Lesson 22: Asking for Help vs. Figuring It Out Yourself
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Asking for Help vs. Figuring It Out Yourself', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/36.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Asking for help is always better than struggling alone.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Figuring It Out Yourself', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Asking for Help', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue why asking for help should always be the first move.
What does the person who prefers to figure things out alone gain that others don''t?
Final thought: when is each approach the right one?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Asking for Help vs. Figuring It Out Yourself',
    '{"lesson_name": "Asking for Help vs. Figuring It Out Yourself", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Asking for help is always better than struggling alone."}, {"content_key": "user_side", "content_value": "Figuring It Out Yourself"}, {"content_key": "ai_side", "content_value": "Asking for Help"}, {"content_key": "content", "content_value": "Argue why asking for help should always be the first move.\nWhat does the person who prefers to figure things out alone gain that others don''t?\nFinal thought: when is each approach the right one?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 175
  );

  -- Lesson 23: Effort vs. Natural Talent
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Effort vs. Natural Talent', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Hard work matters more than natural talent.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Natural Talent', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Effort', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Make the case that effort always beats natural talent.
What would someone with a natural gift who didn''t work as hard say in response?
Land your argument: effort or talent — which one wins in the end?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Effort vs. Natural Talent',
    '{"lesson_name": "Effort vs. Natural Talent", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Hard work matters more than natural talent."}, {"content_key": "user_side", "content_value": "Natural Talent"}, {"content_key": "ai_side", "content_value": "Effort"}, {"content_key": "content", "content_value": "Make the case that effort always beats natural talent.\nWhat would someone with a natural gift who didn''t work as hard say in response?\nLand your argument: effort or talent — which one wins in the end?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 183
  );

  -- Lesson 24: Fairness vs. Equality
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Fairness vs. Equality', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/56.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Being fair and giving everyone the same thing are not always the same idea.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Equality', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Fairness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Explain the difference between fairness and equality using an example.
Someone might say that treating everyone exactly the same is the only truly fair approach. How would you respond?
Give your final argument: which principle should schools follow — equality or fairness?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness vs. Equality',
    '{"lesson_name": "Fairness vs. Equality", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Being fair and giving everyone the same thing are not always the same idea."}, {"content_key": "user_side", "content_value": "Equality"}, {"content_key": "ai_side", "content_value": "Fairness"}, {"content_key": "content", "content_value": "Explain the difference between fairness and equality using an example.\nSomeone might say that treating everyone exactly the same is the only truly fair approach. How would you respond?\nGive your final argument: which principle should schools follow — equality or fairness?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 191
  );

  -- Lesson 25: Changing the Rules vs. Following Them
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Changing the Rules vs. Following Them', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'When a rule is unfair, you should work to change it rather than just follow it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Following Them', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Changing the Rules', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue that challenging unfair rules is important and necessary.
What would someone who believes in always following the rules first say back to you?
Close with your final take: when should you follow a rule, and when should you work to change it?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Changing the Rules vs. Following Them',
    '{"lesson_name": "Changing the Rules vs. Following Them", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "When a rule is unfair, you should work to change it rather than just follow it."}, {"content_key": "user_side", "content_value": "Following Them"}, {"content_key": "ai_side", "content_value": "Changing the Rules"}, {"content_key": "content", "content_value": "Argue that challenging unfair rules is important and necessary.\nWhat would someone who believes in always following the rules first say back to you?\nClose with your final take: when should you follow a rule, and when should you work to change it?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 199
  );

  -- Lesson 26: Individual vs. Team
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Individual vs. Team', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/77.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'What''s best for the team is more important than what''s best for any single person.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Team', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Individual', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Make the case that the group should always come first.
What would someone who believes individual needs matter just as much argue?
Is there a way to balance both? Give your final position.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Individual vs. Team',
    '{"lesson_name": "Individual vs. Team", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "What''s best for the team is more important than what''s best for any single person."}, {"content_key": "user_side", "content_value": "Team"}, {"content_key": "ai_side", "content_value": "Individual"}, {"content_key": "content", "content_value": "Make the case that the group should always come first.\nWhat would someone who believes individual needs matter just as much argue?\nIs there a way to balance both? Give your final position."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 207
  );

  -- Lesson 27: Knowing vs. Understanding
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Knowing vs. Understanding', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Understanding something deeply is more valuable than memorizing a lot of facts.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Understanding', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Knowing', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue that deep understanding matters more than memorizing many things.
Someone who values knowing lots of facts would say what in response?
Final argument: in school and in life, which one serves you better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Knowing vs. Understanding',
    '{"lesson_name": "Knowing vs. Understanding", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Understanding something deeply is more valuable than memorizing a lot of facts."}, {"content_key": "user_side", "content_value": "Understanding"}, {"content_key": "ai_side", "content_value": "Knowing"}, {"content_key": "content", "content_value": "Argue that deep understanding matters more than memorizing many things.\nSomeone who values knowing lots of facts would say what in response?\nFinal argument: in school and in life, which one serves you better?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 215
  );

  -- Lesson 28: Short-Term vs. Long-Term Thinking
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Short-Term vs. Long-Term Thinking', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/36.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'It is better to make decisions that help you now than to wait for something better later.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Long-Term Thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Short-Term', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue why acting now and getting something good immediately is the smarter approach.
What would someone who believes in waiting and planning for the future say back?
Make your final case: short-term satisfaction or long-term planning — which wins?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Short-Term vs. Long-Term Thinking',
    '{"lesson_name": "Short-Term vs. Long-Term Thinking", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "It is better to make decisions that help you now than to wait for something better later."}, {"content_key": "user_side", "content_value": "Long-Term Thinking"}, {"content_key": "ai_side", "content_value": "Short-Term"}, {"content_key": "content", "content_value": "Argue why acting now and getting something good immediately is the smarter approach.\nWhat would someone who believes in waiting and planning for the future say back?\nMake your final case: short-term satisfaction or long-term planning — which wins?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 223
  );

  -- Lesson 29: Saying Something vs. Staying Quiet
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Saying Something vs. Staying Quiet', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'It is always better to speak up than to stay silent when something is wrong.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Staying Quiet', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Saying Something', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Argue that speaking up is always the right choice when you see something wrong.
When might staying quiet actually be the wiser or kinder decision?
Close with your final position: is silence ever the right answer?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Saying Something vs. Staying Quiet',
    '{"lesson_name": "Saying Something vs. Staying Quiet", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "It is always better to speak up than to stay silent when something is wrong."}, {"content_key": "user_side", "content_value": "Staying Quiet"}, {"content_key": "ai_side", "content_value": "Saying Something"}, {"content_key": "content", "content_value": "Argue that speaking up is always the right choice when you see something wrong.\nWhen might staying quiet actually be the wiser or kinder decision?\nClose with your final position: is silence ever the right answer?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 231
  );

  -- Lesson 30: One Strong Voice vs. Many Small Voices
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'One Strong Voice vs. Many Small Voices', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/57.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'One person speaking clearly and loudly can change things more than a group of people each saying a little.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Many Small Voices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'One Strong Voice', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Build the case for one strong, focused voice making the most impact.
What would someone who believes collective, many-person advocacy is stronger argue?
Is the answer different depending on the situation? Give your final answer.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'One Strong Voice vs. Many Small Voices',
    '{"lesson_name": "One Strong Voice vs. Many Small Voices", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "One person speaking clearly and loudly can change things more than a group of people each saying a little."}, {"content_key": "user_side", "content_value": "Many Small Voices"}, {"content_key": "ai_side", "content_value": "One Strong Voice"}, {"content_key": "content", "content_value": "Build the case for one strong, focused voice making the most impact.\nWhat would someone who believes collective, many-person advocacy is stronger argue?\nIs the answer different depending on the situation? Give your final answer."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Silly Topic Debate', 3, NULL, 'EASY', 239
  );

END $$;
