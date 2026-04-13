-- =====================================================
-- Module 1: Reading a Paragraph - Grade 3 (30 Lessons)
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- School: e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266
-- Training Module: 1c83484e-7cf1-4e26-8503-62cff6d07789
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

  -- Lesson 1: Two Feelings at Once
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Two Feelings at Once', '3R3 (94%) PRIMARY | 3R1 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/38.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Mia had been excited for weeks about the school talent show. But the morning of the show, she woke up with a knot in her stomach. She wanted to perform -- and she also wanted to stay home. She told her mom, who said, ''It''s okay to feel two things at the same time.'' Mia thought about that on the bus. She was nervous AND excited. She decided both feelings were allowed to be there. When it was her turn to go on stage, the nervous part was still there -- but so was the excited part. She sang her song, and at the end, when the audience clapped, the excited feeling grew bigger. The nervous feeling didn''t disappear -- but it had made room.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Two Feelings at Once',
    '{"lesson_name": "Two Feelings at Once", "lesson_description": "3R3 (94%) PRIMARY | 3R1 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Mia had been excited for weeks about the school talent show. But the morning of the show, she woke up with a knot in her stomach. She wanted to perform \u2014 and she also wanted to stay home. She told her mom, who said, ''It''s okay to feel two things at the same time.'' Mia thought about that on the bus. She was nervous AND excited. She decided both feelings were allowed to be there. When it was her turn to go on stage, the nervous part was still there \u2014 but so was the excited part. She sang her song, and at the end, when the audience clapped, the excited feeling grew bigger. The nervous feeling didn''t disappear \u2014 but it had made room."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 1
  );

  -- Lesson 2: The Borrowed Eraser
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Borrowed Eraser', '3R3 (93%) PRIMARY | 3R1 (82%) SECONDARY | 3-5L1 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/73.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Leo borrowed an eraser from his classmate Yuna without asking because he thought she wasn''t using it. When Yuna looked for it later and couldn''t find it, she looked upset. Leo felt a mixture of guilt and defensiveness -- he hadn''t meant to cause a problem. Part of him wanted to just pretend he didn''t know where it was. But he remembered how bad it felt when something of his went missing. He walked over to Yuna and said quietly, ''I''m sorry -- I took your eraser without asking. Here it is.'' Yuna looked surprised, then nodded and took it back. Leo felt relieved -- not because it had been easy, but because he had done the right thing even when it would''ve been simpler not to.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Borrowed Eraser',
    '{"lesson_name": "The Borrowed Eraser", "lesson_description": "3R3 (93%) PRIMARY | 3R1 (82%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Leo borrowed an eraser from his classmate Yuna without asking because he thought she wasn''t using it. When Yuna looked for it later and couldn''t find it, she looked upset. Leo felt a mixture of guilt and defensiveness \u2014 he hadn''t meant to cause a problem. Part of him wanted to just pretend he didn''t know where it was. But he remembered how bad it felt when something of his went missing. He walked over to Yuna and said quietly, ''I''m sorry \u2014 I took your eraser without asking. Here it is.'' Yuna looked surprised, then nodded and took it back. Leo felt relieved \u2014 not because it had been easy, but because he had done the right thing even when it would''ve been simpler not to."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 9
  );

  -- Lesson 3: Left Out on Purpose
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Left Out on Purpose', '3R3 (93%) PRIMARY | 3R9 (82%) SECONDARY | 3-5L1 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/40.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At lunch, Sofia noticed that her friend group had made a plan without her -- they had all traded snacks and no one had asked her. She wasn''t sure if it was an accident or if they had done it on purpose. She felt hurt and a little angry, but she also didn''t want to make a big scene. She decided to wait and see what happened. When Priya came over later and offered her a piece of fruit, Sofia said, ''I noticed you all traded earlier without including me.'' Priya''s eyes went wide. ''Oh -- it wasn''t on purpose, we just started and forgot. I''m so sorry.'' Sofia felt the hurt ease a little. She was glad she had said something instead of just letting it sit.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Left Out on Purpose',
    '{"lesson_name": "Left Out on Purpose", "lesson_description": "3R3 (93%) PRIMARY | 3R9 (82%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "At lunch, Sofia noticed that her friend group had made a plan without her \u2014 they had all traded snacks and no one had asked her. She wasn''t sure if it was an accident or if they had done it on purpose. She felt hurt and a little angry, but she also didn''t want to make a big scene. She decided to wait and see what happened. When Priya came over later and offered her a piece of fruit, Sofia said, ''I noticed you all traded earlier without including me.'' Priya''s eyes went wide. ''Oh \u2014 it wasn''t on purpose, we just started and forgot. I''m so sorry.'' Sofia felt the hurt ease a little. She was glad she had said something instead of just letting it sit."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 17
  );

  -- Lesson 4: The Group Vote
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Group Vote', '3R3 (92%) PRIMARY | 3R9 (82%) SECONDARY | 3-5L1 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The class voted on a topic for their science project, and Marcus''s idea lost. He had worked hard on his pitch and felt certain the class would choose his topic. When the results came in, he felt a flash of frustration -- almost like he wanted to argue that the vote was wrong. But he looked at the other students who had voted for the winning idea and saw that they were genuinely excited. He thought about how he would feel if someone challenged a vote that had gone his way. He took a slow breath and joined the winning team''s planning session. He didn''t pretend to be thrilled right away -- but he made himself show up, and by the end of the session, he actually had a few good ideas to add.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Group Vote',
    '{"lesson_name": "The Group Vote", "lesson_description": "3R3 (92%) PRIMARY | 3R9 (82%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The class voted on a topic for their science project, and Marcus''s idea lost. He had worked hard on his pitch and felt certain the class would choose his topic. When the results came in, he felt a flash of frustration \u2014 almost like he wanted to argue that the vote was wrong. But he looked at the other students who had voted for the winning idea and saw that they were genuinely excited. He thought about how he would feel if someone challenged a vote that had gone his way. He took a slow breath and joined the winning team''s planning session. He didn''t pretend to be thrilled right away \u2014 but he made himself show up, and by the end of the session, he actually had a few good ideas to add."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 25
  );

  -- Lesson 5: The Apology That Was Hard
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Apology That Was Hard', '3R3 (92%) PRIMARY | 3R1 (81%) SECONDARY | 3-5L1 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Camille had said something unkind about a classmate''s drawing during art -- not to be mean, she had said it almost without thinking. But she saw the student''s face change and knew the words had landed wrong. All afternoon she thought about it. The hardest part was that she didn''t think she had done it on purpose, so part of her felt like she shouldn''t have to apologize. But then she thought: does it matter whether you meant to? The hurt is still there. After school, she walked up to the student and said, ''I said something I shouldn''t have about your drawing. I''m sorry.'' The student was quiet for a moment, then said, ''Thanks.'' Camille had been afraid of that conversation. Walking home, she was glad she had done it anyway.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Apology That Was Hard',
    '{"lesson_name": "The Apology That Was Hard", "lesson_description": "3R3 (92%) PRIMARY | 3R1 (81%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Camille had said something unkind about a classmate''s drawing during art \u2014 not to be mean, she had said it almost without thinking. But she saw the student''s face change and knew the words had landed wrong. All afternoon she thought about it. The hardest part was that she didn''t think she had done it on purpose, so part of her felt like she shouldn''t have to apologize. But then she thought: does it matter whether you meant to? The hurt is still there. After school, she walked up to the student and said, ''I said something I shouldn''t have about your drawing. I''m sorry.'' The student was quiet for a moment, then said, ''Thanks.'' Camille had been afraid of that conversation. Walking home, she was glad she had done it anyway."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 33
  );

  -- Lesson 6: A New Partner
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A New Partner', '3R3 (91%) PRIMARY | 3R9 (82%) SECONDARY | 3-5L1 (78%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/81.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'For the science lab, the teacher assigned partners, and Jasper was paired with a student named Cole who he didn''t know well. Jasper would have chosen his friend Darius. He felt a little disappointed -- not because Cole had done anything wrong, but just because Darius was more comfortable. Cole walked over with a notebook full of organized color-coded notes, and Jasper raised an eyebrow. They started working. Cole had a system for tracking their results that was better than anything Jasper had thought of. By the end of the class, they had the most complete data sheet in the room. Walking out, Jasper thought about how different the lab would have been if he''d just worked with Darius the way he always did. Sometimes the unfamiliar thing turned out to be the interesting one.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A New Partner',
    '{"lesson_name": "A New Partner", "lesson_description": "3R3 (91%) PRIMARY | 3R9 (82%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "For the science lab, the teacher assigned partners, and Jasper was paired with a student named Cole who he didn''t know well. Jasper would have chosen his friend Darius. He felt a little disappointed \u2014 not because Cole had done anything wrong, but just because Darius was more comfortable. Cole walked over with a notebook full of organized color-coded notes, and Jasper raised an eyebrow. They started working. Cole had a system for tracking their results that was better than anything Jasper had thought of. By the end of the class, they had the most complete data sheet in the room. Walking out, Jasper thought about how different the lab would have been if he''d just worked with Darius the way he always did. Sometimes the unfamiliar thing turned out to be the interesting one."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 41
  );

  -- Lesson 7: Two Sides of the Story
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Two Sides of the Story', '3R3 (92%) PRIMARY | 3R6 (84%) SECONDARY | 3R9 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At recess, Zara saw her friend push another student and thought she knew exactly what had happened. She went to tell the teacher, certain of what she had seen. But the teacher asked Zara to wait while she talked to both students. Zara listened from nearby. The student who had been pushed had actually grabbed Zara''s friend''s arm first -- something Zara hadn''t seen from where she was standing. The push had been a reaction, not an attack. Zara felt her certainty shift. She had been so sure. She thought about all the times she had assumed she understood a situation from one angle. She told the teacher she was sorry she had jumped to conclusions, and the teacher said, ''It''s good that you wanted to tell someone -- and even better that you listened to more of the story.'' Zara thought about that for the rest of the day.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Two Sides of the Story',
    '{"lesson_name": "Two Sides of the Story", "lesson_description": "3R3 (92%) PRIMARY | 3R6 (84%) SECONDARY | 3R9 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "At recess, Zara saw her friend push another student and thought she knew exactly what had happened. She went to tell the teacher, certain of what she had seen. But the teacher asked Zara to wait while she talked to both students. Zara listened from nearby. The student who had been pushed had actually grabbed Zara''s friend''s arm first \u2014 something Zara hadn''t seen from where she was standing. The push had been a reaction, not an attack. Zara felt her certainty shift. She had been so sure. She thought about all the times she had assumed she understood a situation from one angle. She told the teacher she was sorry she had jumped to conclusions, and the teacher said, ''It''s good that you wanted to tell someone \u2014 and even better that you listened to more of the story.'' Zara thought about that for the rest of the day."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 49
  );

  -- Lesson 8: The Project That Fell Apart
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Project That Fell Apart', '3R3 (91%) PRIMARY | 3SL1 [3SL1d] (84%) SECONDARY | 3R9 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/80.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Nadia''s group had a week to build a small model bridge for science class. For the first three days, they argued about who was in charge and whose idea to use. By Thursday, they had nothing built and one day left. Nadia felt frustrated -- with her group and with herself for not saying something sooner. She gathered everyone at the table and said, ''We have one day. Let''s pick the simplest idea and just build it.'' No one had a better plan, so they agreed. They worked through lunch and stayed in at recess. The bridge they built wasn''t the best-looking one, but it held the weight. Nadia learned that sometimes saying the obvious thing out loud is leadership -- even when no one officially asked you to lead.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Project That Fell Apart',
    '{"lesson_name": "The Project That Fell Apart", "lesson_description": "3R3 (91%) PRIMARY | 3SL1 [3SL1d] (84%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Nadia''s group had a week to build a small model bridge for science class. For the first three days, they argued about who was in charge and whose idea to use. By Thursday, they had nothing built and one day left. Nadia felt frustrated \u2014 with her group and with herself for not saying something sooner. She gathered everyone at the table and said, ''We have one day. Let''s pick the simplest idea and just build it.'' No one had a better plan, so they agreed. They worked through lunch and stayed in at recess. The bridge they built wasn''t the best-looking one, but it held the weight. Nadia learned that sometimes saying the obvious thing out loud is leadership \u2014 even when no one officially asked you to lead."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 57
  );

  -- Lesson 9: When Helping Hurts
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Helping Hurts', '3R3 (91%) PRIMARY | 3R6 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/89.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Devon noticed his friend Ella struggling with a reading worksheet and immediately started reading the answers out loud to her. Ella''s face didn''t light up the way he expected -- she looked a little annoyed. ''I was trying to figure it out,'' she said. Devon felt confused. He thought he had been helpful. Later, Ella explained that she wanted to try things herself even when it was hard, and that being given the answer took away the feeling of getting there. Devon hadn''t thought about it that way. He had helped in the way he would have wanted to be helped -- but Ella was different. He asked her, ''What would actually be helpful?'' and she said, ''Just stay nearby.'' He sat with her the rest of the period without saying anything -- and that turned out to be the right kind of help.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Helping Hurts',
    '{"lesson_name": "When Helping Hurts", "lesson_description": "3R3 (91%) PRIMARY | 3R6 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Devon noticed his friend Ella struggling with a reading worksheet and immediately started reading the answers out loud to her. Ella''s face didn''t light up the way he expected \u2014 she looked a little annoyed. ''I was trying to figure it out,'' she said. Devon felt confused. He thought he had been helpful. Later, Ella explained that she wanted to try things herself even when it was hard, and that being given the answer took away the feeling of getting there. Devon hadn''t thought about it that way. He had helped in the way he would have wanted to be helped \u2014 but Ella was different. He asked her, ''What would actually be helpful?'' and she said, ''Just stay nearby.'' He sat with her the rest of the period without saying anything \u2014 and that turned out to be the right kind of help."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 65
  );

  -- Lesson 10: The Compliment That Was Hard to Receive
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Compliment That Was Hard to Receive', '3R3 (91%) PRIMARY | 3R1 (82%) SECONDARY | 3-5L1 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/71.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'When Mr. Okafor read Tomás''s story aloud to the class as an example of great writing, Tomás felt two things simultaneously: proud and deeply uncomfortable. He didn''t know where to look. Some students turned to smile at him; others just kept their eyes on the teacher. At first Tomás wanted to say ''it wasn''t that good.'' But then he stopped himself. Why was it so hard to just say thank you? He thought it was because receiving a compliment felt like making a claim about yourself -- like saying, yes, I agree I''m good at this. After class, Mr. Okafor asked if he was okay. Tomás said, ''It''s hard to let people say nice things about you.'' His teacher nodded. ''That''s something worth practicing,'' he said.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Compliment That Was Hard to Receive',
    '{"lesson_name": "The Compliment That Was Hard to Receive", "lesson_description": "3R3 (91%) PRIMARY | 3R1 (82%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "When Mr. Okafor read Tom\u00e1s''s story aloud to the class as an example of great writing, Tom\u00e1s felt two things simultaneously: proud and deeply uncomfortable. He didn''t know where to look. Some students turned to smile at him; others just kept their eyes on the teacher. At first Tom\u00e1s wanted to say ''it wasn''t that good.'' But then he stopped himself. Why was it so hard to just say thank you? He thought it was because receiving a compliment felt like making a claim about yourself \u2014 like saying, yes, I agree I''m good at this. After class, Mr. Okafor asked if he was okay. Tom\u00e1s said, ''It''s hard to let people say nice things about you.'' His teacher nodded. ''That''s something worth practicing,'' he said."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 73
  );

  -- Lesson 11: Saying No When It Matters
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Saying No When It Matters', '3R3 (90%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'A group of older students asked Nia to help them sneak candy from the classroom supply without the teacher noticing. They made it sound fun, like a small adventure with no real consequences. Nia felt the pull of wanting to belong to their group. But something in her stomach said no. She knew exactly what that feeling was -- she had felt it before, and it had always been right. She told them she didn''t want to do it and walked away. Behind her, she heard someone say, ''Whatever.'' It stung a little. But when she sat back down at her desk, the feeling in her stomach was gone -- replaced by something steadier. She thought about how much more she trusted herself now than she had a year ago. That felt like something worth keeping.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Saying No When It Matters',
    '{"lesson_name": "Saying No When It Matters", "lesson_description": "3R3 (90%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "A group of older students asked Nia to help them sneak candy from the classroom supply without the teacher noticing. They made it sound fun, like a small adventure with no real consequences. Nia felt the pull of wanting to belong to their group. But something in her stomach said no. She knew exactly what that feeling was \u2014 she had felt it before, and it had always been right. She told them she didn''t want to do it and walked away. Behind her, she heard someone say, ''Whatever.'' It stung a little. But when she sat back down at her desk, the feeling in her stomach was gone \u2014 replaced by something steadier. She thought about how much more she trusted herself now than she had a year ago. That felt like something worth keeping."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 81
  );

  -- Lesson 12: The Kid Who Was Always Loud
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Kid Who Was Always Loud', '3R3 (90%) PRIMARY | 3R6 (84%) SECONDARY | 3R1 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'There was a student in the class named Remy who talked constantly, interrupted others, and seemed unable to sit still. Most students found him annoying. Isabel did too, at first. But one day she noticed that Remy''s interruptions were usually because he had an idea he was afraid of losing. He wasn''t trying to take over -- he was afraid the thought would disappear before he could say it. She also noticed that when a teacher gave him a small job to do -- handing out papers, timing the experiment -- he focused completely and did it well. Isabel started seeing him differently. She didn''t suddenly find him easy to sit next to. But she stopped thinking he was doing it on purpose. That change in how she saw him made her a little less irritated -- and a little more curious.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Kid Who Was Always Loud',
    '{"lesson_name": "The Kid Who Was Always Loud", "lesson_description": "3R3 (90%) PRIMARY | 3R6 (84%) SECONDARY | 3R1 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "There was a student in the class named Remy who talked constantly, interrupted others, and seemed unable to sit still. Most students found him annoying. Isabel did too, at first. But one day she noticed that Remy''s interruptions were usually because he had an idea he was afraid of losing. He wasn''t trying to take over \u2014 he was afraid the thought would disappear before he could say it. She also noticed that when a teacher gave him a small job to do \u2014 handing out papers, timing the experiment \u2014 he focused completely and did it well. Isabel started seeing him differently. She didn''t suddenly find him easy to sit next to. But she stopped thinking he was doing it on purpose. That change in how she saw him made her a little less irritated \u2014 and a little more curious."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 89
  );

  -- Lesson 13: What the Argument Was Really About
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What the Argument Was Really About', '3R3 (90%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Priya and her sister had been arguing all morning about whose turn it was to pick the TV show. By the time their mom separated them, neither one could remember how it had started. Their mom sat them both down and said, ''What is this actually about?'' Priya thought about it. She realized she was still upset from the day before, when her sister had taken her spot at the dinner table without asking. The TV argument wasn''t really about TV. Her sister admitted she was tired and had wanted control over something small after a hard week at school. They looked at each other. ''We were fighting about the wrong thing,'' Priya said. Her mom nodded. ''Most arguments are.'' They picked a show together and put on a blanket and didn''t talk for a while -- but this time the quiet felt okay.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What the Argument Was Really About',
    '{"lesson_name": "What the Argument Was Really About", "lesson_description": "3R3 (90%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Priya and her sister had been arguing all morning about whose turn it was to pick the TV show. By the time their mom separated them, neither one could remember how it had started. Their mom sat them both down and said, ''What is this actually about?'' Priya thought about it. She realized she was still upset from the day before, when her sister had taken her spot at the dinner table without asking. The TV argument wasn''t really about TV. Her sister admitted she was tired and had wanted control over something small after a hard week at school. They looked at each other. ''We were fighting about the wrong thing,'' Priya said. Her mom nodded. ''Most arguments are.'' They picked a show together and put on a blanket and didn''t talk for a while \u2014 but this time the quiet felt okay."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 97
  );

  -- Lesson 14: Practicing in Front of the Mirror
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Practicing in Front of the Mirror', '3R3 (89%) PRIMARY | 3R1 (82%) SECONDARY | 3SL4 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Ahmad had to present his book report in front of the class, and he had three days to prepare. He was a quiet person, and the idea of standing at the front of the room made his voice go thin just thinking about it. The first time he practiced in front of his bedroom mirror, he stopped after ten seconds. His voice sounded strange. His hands didn''t know where to go. He made himself do it again -- and again, and again, until the words came out in the right order without him having to think. On the day of the presentation, he still felt nervous. But he knew the words. And when his voice went thin at the beginning, he remembered his mirror and took a breath and found the words again. His teacher told him afterward, ''You seemed confident.'' He didn''t tell her that confidence had been something he had built, piece by piece, in a room by himself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Practicing in Front of the Mirror',
    '{"lesson_name": "Practicing in Front of the Mirror", "lesson_description": "3R3 (89%) PRIMARY | 3R1 (82%) SECONDARY | 3SL4 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Ahmad had to present his book report in front of the class, and he had three days to prepare. He was a quiet person, and the idea of standing at the front of the room made his voice go thin just thinking about it. The first time he practiced in front of his bedroom mirror, he stopped after ten seconds. His voice sounded strange. His hands didn''t know where to go. He made himself do it again \u2014 and again, and again, until the words came out in the right order without him having to think. On the day of the presentation, he still felt nervous. But he knew the words. And when his voice went thin at the beginning, he remembered his mirror and took a breath and found the words again. His teacher told him afterward, ''You seemed confident.'' He didn''t tell her that confidence had been something he had built, piece by piece, in a room by himself."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 105
  );

  -- Lesson 15: When the Teacher Got It Wrong
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When the Teacher Got It Wrong', '3R3 (89%) PRIMARY | 3SL1 [3SL1a] (83%) SECONDARY | 3R1 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/48.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The teacher marked one of Rosa''s answers wrong, but Rosa was sure she had calculated it correctly. She checked her work three times. She felt a mixture of frustration and uncertainty -- what if she had made a mistake she wasn''t seeing? She raised her hand and said calmly, ''Could you help me understand why this is wrong? I checked it a few times and I''m getting the same answer.'' The teacher looked at the paper, then looked again. After a moment, she said, ''I think I made an error in the answer key. You''re right.'' The class went quiet. Rosa felt a strange combination of validated and a little uncomfortable -- she hadn''t wanted to embarrass her teacher. But the teacher said, ''Thanks for speaking up, Rosa -- that''s how we all learn.'' Rosa thought about how much courage it had taken to say something, and how glad she was that she had.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When the Teacher Got It Wrong',
    '{"lesson_name": "When the Teacher Got It Wrong", "lesson_description": "3R3 (89%) PRIMARY | 3SL1 [3SL1a] (83%) SECONDARY | 3R1 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The teacher marked one of Rosa''s answers wrong, but Rosa was sure she had calculated it correctly. She checked her work three times. She felt a mixture of frustration and uncertainty \u2014 what if she had made a mistake she wasn''t seeing? She raised her hand and said calmly, ''Could you help me understand why this is wrong? I checked it a few times and I''m getting the same answer.'' The teacher looked at the paper, then looked again. After a moment, she said, ''I think I made an error in the answer key. You''re right.'' The class went quiet. Rosa felt a strange combination of validated and a little uncomfortable \u2014 she hadn''t wanted to embarrass her teacher. But the teacher said, ''Thanks for speaking up, Rosa \u2014 that''s how we all learn.'' Rosa thought about how much courage it had taken to say something, and how glad she was that she had."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 113
  );

  -- Lesson 16: The Friend Who Changed
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Friend Who Changed', '3R3 (91%) PRIMARY | 3R2 (84%) SECONDARY | 3R9 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Zoe and her best friend Maya had done everything together since first grade. But this year, Maya had started spending more time with a new group and seemed different -- quieter around Zoe, more confident around the others. Zoe felt something she didn''t have a name for at first. Eventually she recognized it as grief -- not the kind for losing someone who moved away, but the kind for losing a version of someone who was still right there. She tried talking to Maya about it, and Maya said, ''I''m still your friend. I''m just also becoming other things.'' Zoe thought about that for days. She realized she didn''t want to hold Maya to the version of her from second grade. She started letting the friendship change shape -- and found that the new shape still had room for her.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Friend Who Changed',
    '{"lesson_name": "The Friend Who Changed", "lesson_description": "3R3 (91%) PRIMARY | 3R2 (84%) SECONDARY | 3R9 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Zoe and her best friend Maya had done everything together since first grade. But this year, Maya had started spending more time with a new group and seemed different \u2014 quieter around Zoe, more confident around the others. Zoe felt something she didn''t have a name for at first. Eventually she recognized it as grief \u2014 not the kind for losing someone who moved away, but the kind for losing a version of someone who was still right there. She tried talking to Maya about it, and Maya said, ''I''m still your friend. I''m just also becoming other things.'' Zoe thought about that for days. She realized she didn''t want to hold Maya to the version of her from second grade. She started letting the friendship change shape \u2014 and found that the new shape still had room for her."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 121
  );

  -- Lesson 17: The Compliment vs. the Flattery
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Compliment vs. the Flattery', '3R3 (90%) PRIMARY | 3R6 (85%) SECONDARY | 3R2 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'A student named Finn had figured out that if he told Ms. Park her class was his favorite, she gave him more time on assignments. He kept doing it because it worked. But one day, a classmate named Bea said to him quietly, ''You don''t really mean it, do you?'' Finn felt caught -- and then irritated, because what was the big deal? Bea said, ''It''s not a compliment if it''s a strategy.'' Finn thought about that on the walk home. He decided she was right, even though he didn''t like it. He also thought about how he felt when someone said something kind to him that he wasn''t sure was real. The emptiness of that feeling was the same thing he had been giving Ms. Park. He stopped doing it. The next time he told her something good about the class, he made sure it was true.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Compliment vs. the Flattery',
    '{"lesson_name": "The Compliment vs. the Flattery", "lesson_description": "3R3 (90%) PRIMARY | 3R6 (85%) SECONDARY | 3R2 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "A student named Finn had figured out that if he told Ms. Park her class was his favorite, she gave him more time on assignments. He kept doing it because it worked. But one day, a classmate named Bea said to him quietly, ''You don''t really mean it, do you?'' Finn felt caught \u2014 and then irritated, because what was the big deal? Bea said, ''It''s not a compliment if it''s a strategy.'' Finn thought about that on the walk home. He decided she was right, even though he didn''t like it. He also thought about how he felt when someone said something kind to him that he wasn''t sure was real. The emptiness of that feeling was the same thing he had been giving Ms. Park. He stopped doing it. The next time he told her something good about the class, he made sure it was true."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 129
  );

  -- Lesson 18: Waiting for the Right Moment
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Waiting for the Right Moment', '3R3 (90%) PRIMARY | 3R9 (83%) SECONDARY | 3R2 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/98.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Simone had noticed for two weeks that her friend group kept using a nickname for another student -- one the student hadn''t agreed to, and that Simone could see made her uncomfortable. Simone wanted to say something, but every time she started to, the moment passed. She told herself she was waiting for the right time. One afternoon, she realized there was no special moment coming -- there was just the choice to say something or not. She said to the group, ''I think she doesn''t like being called that.'' The group went quiet. A few of them looked at each other. Then one of them said, ''I didn''t know it bothered her.'' The nickname stopped. Simone thought about all the times she had waited for the ''right moment'' and realized it was usually just fear with a better-sounding name.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Waiting for the Right Moment',
    '{"lesson_name": "Waiting for the Right Moment", "lesson_description": "3R3 (90%) PRIMARY | 3R9 (83%) SECONDARY | 3R2 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Simone had noticed for two weeks that her friend group kept using a nickname for another student \u2014 one the student hadn''t agreed to, and that Simone could see made her uncomfortable. Simone wanted to say something, but every time she started to, the moment passed. She told herself she was waiting for the right time. One afternoon, she realized there was no special moment coming \u2014 there was just the choice to say something or not. She said to the group, ''I think she doesn''t like being called that.'' The group went quiet. A few of them looked at each other. Then one of them said, ''I didn''t know it bothered her.'' The nickname stopped. Simone thought about all the times she had waited for the ''right moment'' and realized it was usually just fear with a better-sounding name."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 137
  );

  -- Lesson 19: The Shortcut That Wasn''t
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Shortcut That Wasn''t', '3R3 (90%) PRIMARY | 3R1 (83%) SECONDARY | 3R2 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'For a big reading project, Marcus found an article online that summarized the book instead of reading the whole thing. He used the summary to answer his questions and turned it in feeling like he had outsmarted the assignment. He got a good grade. But two weeks later, when the class discussed the book in detail, Marcus couldn''t keep up. Students were talking about scenes, characters, and moments he hadn''t read. He could follow the surface of the conversation but not the depth of it. He realized the grade hadn''t meant he had learned what the assignment was supposed to teach. He had traded understanding for a number -- and the number couldn''t give him back what he had skipped. He decided not to do that again, not because he was afraid of getting caught, but because he didn''t like who the shortcut made him.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Shortcut That Wasn''t',
    '{"lesson_name": "The Shortcut That Wasn''t", "lesson_description": "3R3 (90%) PRIMARY | 3R1 (83%) SECONDARY | 3R2 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "For a big reading project, Marcus found an article online that summarized the book instead of reading the whole thing. He used the summary to answer his questions and turned it in feeling like he had outsmarted the assignment. He got a good grade. But two weeks later, when the class discussed the book in detail, Marcus couldn''t keep up. Students were talking about scenes, characters, and moments he hadn''t read. He could follow the surface of the conversation but not the depth of it. He realized the grade hadn''t meant he had learned what the assignment was supposed to teach. He had traded understanding for a number \u2014 and the number couldn''t give him back what he had skipped. He decided not to do that again, not because he was afraid of getting caught, but because he didn''t like who the shortcut made him."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 145
  );

  -- Lesson 20: When Two Friends Need You at the Same Time
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Two Friends Need You at the Same Time', '3R3 (89%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/70.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At lunch on Tuesday, Elena''s friend Dani started crying about a fight she''d had with her parents. At the same time, Elena got a message that her friend Sasha had also had a hard morning and needed to talk. Elena couldn''t split herself in two. She stayed with Dani through lunch. Afterward, she found Sasha and explained. Sasha said, ''It''s fine,'' but her voice was flat. Elena felt the familiar pull of guilt -- the feeling that being there for one person meant failing another. She talked to both of them that afternoon and then sat with it that night. She decided she couldn''t always be in two places at once, and that being fully present for one person was better than being half-present for two. She also decided to check in with Sasha first thing in the morning -- not to fix it, just to show up.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Two Friends Need You at the Same Time',
    '{"lesson_name": "When Two Friends Need You at the Same Time", "lesson_description": "3R3 (89%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "At lunch on Tuesday, Elena''s friend Dani started crying about a fight she''d had with her parents. At the same time, Elena got a message that her friend Sasha had also had a hard morning and needed to talk. Elena couldn''t split herself in two. She stayed with Dani through lunch. Afterward, she found Sasha and explained. Sasha said, ''It''s fine,'' but her voice was flat. Elena felt the familiar pull of guilt \u2014 the feeling that being there for one person meant failing another. She talked to both of them that afternoon and then sat with it that night. She decided she couldn''t always be in two places at once, and that being fully present for one person was better than being half-present for two. She also decided to check in with Sasha first thing in the morning \u2014 not to fix it, just to show up."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 153
  );

  -- Lesson 21: The Unspoken Rule
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Unspoken Rule', '3R3 (89%) PRIMARY | 3R9 (84%) SECONDARY | 3R6 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'In Jonah''s class, there was an unwritten rule that you didn''t sit at the center table unless you had been in the class since the beginning of the year. Jonah had always followed it without questioning it -- it was just how things were. When a new student named Petra sat at the center table on her second day, not knowing the rule, she was met with cold stares. Jonah watched. He thought about how strange it was that the rule had never been spoken aloud, but everyone enforced it. He thought about what it had felt like to be new three years ago. He made a choice: he picked up his tray and sat next to Petra. No one said anything. By the next week, two other students had done the same. Jonah hadn''t tried to end the rule -- he had just stopped following it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Unspoken Rule',
    '{"lesson_name": "The Unspoken Rule", "lesson_description": "3R3 (89%) PRIMARY | 3R9 (84%) SECONDARY | 3R6 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "In Jonah''s class, there was an unwritten rule that you didn''t sit at the center table unless you had been in the class since the beginning of the year. Jonah had always followed it without questioning it \u2014 it was just how things were. When a new student named Petra sat at the center table on her second day, not knowing the rule, she was met with cold stares. Jonah watched. He thought about how strange it was that the rule had never been spoken aloud, but everyone enforced it. He thought about what it had felt like to be new three years ago. He made a choice: he picked up his tray and sat next to Petra. No one said anything. By the next week, two other students had done the same. Jonah hadn''t tried to end the rule \u2014 he had just stopped following it."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 161
  );

  -- Lesson 22: The Trophy That Didn''t Feel Right
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Trophy That Didn''t Feel Right', '3R3 (89%) PRIMARY | 3R2 (83%) SECONDARY | 3R6 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/98.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The school gave out a citizenship trophy to one student per grade at the end of each month. When Aisha won in November, she felt proud for about ten minutes -- and then she felt something uncomfortable underneath the pride. She thought about three other students in her class who were kinder, more patient, and more consistently helpful than she was. She had been visible; they had been steady and quiet. The trophy felt like it had been given to the loudest version of doing good, not the truest version. She didn''t turn it in -- that would have seemed like its own performance. But she wrote each of the three students a note that said, ''You should have gotten this.'' She didn''t sign her name. She thought anonymous was the right move, because she didn''t want the notes to be about her.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Trophy That Didn''t Feel Right',
    '{"lesson_name": "The Trophy That Didn''t Feel Right", "lesson_description": "3R3 (89%) PRIMARY | 3R2 (83%) SECONDARY | 3R6 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "The school gave out a citizenship trophy to one student per grade at the end of each month. When Aisha won in November, she felt proud for about ten minutes \u2014 and then she felt something uncomfortable underneath the pride. She thought about three other students in her class who were kinder, more patient, and more consistently helpful than she was. She had been visible; they had been steady and quiet. The trophy felt like it had been given to the loudest version of doing good, not the truest version. She didn''t turn it in \u2014 that would have seemed like its own performance. But she wrote each of the three students a note that said, ''You should have gotten this.'' She didn''t sign her name. She thought anonymous was the right move, because she didn''t want the notes to be about her."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 169
  );

  -- Lesson 23: Carrying Someone Else''s Secret
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Carrying Someone Else''s Secret', '3R3 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3R2 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/39.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Lena''s friend told her in confidence that she had been feeling left out of their friend group for months but hadn''t said anything because she was afraid of making it awkward. She asked Lena not to tell anyone. Lena agreed -- but now she carried the secret at every lunch and every group activity, watching her friend smile when the smile didn''t quite reach her eyes. Lena felt stuck. She couldn''t fix it without betraying the trust. She finally asked her friend, ''Is there anything I can do that doesn''t involve telling anyone?'' Her friend thought about it. ''Just sit next to me more,'' she said. So Lena did. It didn''t solve everything -- but it changed something. Lena learned that sometimes keeping a secret well means finding what you can do inside the silence.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Carrying Someone Else''s Secret',
    '{"lesson_name": "Carrying Someone Else''s Secret", "lesson_description": "3R3 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3R2 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Lena''s friend told her in confidence that she had been feeling left out of their friend group for months but hadn''t said anything because she was afraid of making it awkward. She asked Lena not to tell anyone. Lena agreed \u2014 but now she carried the secret at every lunch and every group activity, watching her friend smile when the smile didn''t quite reach her eyes. Lena felt stuck. She couldn''t fix it without betraying the trust. She finally asked her friend, ''Is there anything I can do that doesn''t involve telling anyone?'' Her friend thought about it. ''Just sit next to me more,'' she said. So Lena did. It didn''t solve everything \u2014 but it changed something. Lena learned that sometimes keeping a secret well means finding what you can do inside the silence."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 177
  );

  -- Lesson 24: The Good Reason That Still Hurt
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Good Reason That Still Hurt', '3R3 (89%) PRIMARY | 3R2 (84%) SECONDARY | 3R9 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/59.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Caleb''s teacher moved him away from his friend group because the four of them had been talking during lessons. The reason made sense to Caleb -- the teacher was right. But understanding why something happened didn''t make the feeling of it disappear. He sat at his new seat and felt the injustice of being punished for something his friends were equally responsible for. He wondered if the others had been moved too. (They had.) He spent part of the morning angry, then part of it thinking about whether anger was still fair when the other person wasn''t wrong. He didn''t come to a clean answer. He decided that feelings didn''t have to be logical to be real -- and that understanding someone''s reasoning and feeling upset about their decision could both be true at the same time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Good Reason That Still Hurt',
    '{"lesson_name": "The Good Reason That Still Hurt", "lesson_description": "3R3 (89%) PRIMARY | 3R2 (84%) SECONDARY | 3R9 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Caleb''s teacher moved him away from his friend group because the four of them had been talking during lessons. The reason made sense to Caleb \u2014 the teacher was right. But understanding why something happened didn''t make the feeling of it disappear. He sat at his new seat and felt the injustice of being punished for something his friends were equally responsible for. He wondered if the others had been moved too. (They had.) He spent part of the morning angry, then part of it thinking about whether anger was still fair when the other person wasn''t wrong. He didn''t come to a clean answer. He decided that feelings didn''t have to be logical to be real \u2014 and that understanding someone''s reasoning and feeling upset about their decision could both be true at the same time."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 185
  );

  -- Lesson 25: A Pattern She Hadn''t Seen
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Pattern She Hadn''t Seen', '3R3 (88%) PRIMARY | 3R2 (84%) SECONDARY | 3R1 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Elena had always thought of herself as patient. But when her teacher asked the class to reflect on a time they hadn''t listened, Elena thought back through the week. She had interrupted her partner twice during group work. She had finished her mom''s sentences three times. She had tuned out during the school meeting when the topic wasn''t about her grade. She hadn''t thought of any of those as impatience -- they had just felt like normal. But lined up together, they looked like a pattern. She wrote in her journal: ''I am patient when I want to be and impatient when I think my time matters more.'' She sat with that for a while. She didn''t know what to do with it yet. But she thought that seeing it clearly was probably the first step.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Pattern She Hadn''t Seen',
    '{"lesson_name": "A Pattern She Hadn''t Seen", "lesson_description": "3R3 (88%) PRIMARY | 3R2 (84%) SECONDARY | 3R1 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Elena had always thought of herself as patient. But when her teacher asked the class to reflect on a time they hadn''t listened, Elena thought back through the week. She had interrupted her partner twice during group work. She had finished her mom''s sentences three times. She had tuned out during the school meeting when the topic wasn''t about her grade. She hadn''t thought of any of those as impatience \u2014 they had just felt like normal. But lined up together, they looked like a pattern. She wrote in her journal: ''I am patient when I want to be and impatient when I think my time matters more.'' She sat with that for a while. She didn''t know what to do with it yet. But she thought that seeing it clearly was probably the first step."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 193
  );

  -- Lesson 26: Why He Never Raised His Hand
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why He Never Raised His Hand', '3R3 (88%) PRIMARY | 3R2 (84%) SECONDARY | 3SL1 [3SL1b] (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'DeShawn was one of the smartest students in the class, and almost no one knew it -- because he almost never raised his hand. He had done the math in his head once: the risk of being wrong in front of everyone felt bigger than the reward of being right. So he stayed quiet. One afternoon, the teacher asked a question no one could answer. The room was silent. DeShawn knew the answer. He felt it sitting in his chest. He waited to see if someone else would say it. No one did. He raised his hand slowly and gave the answer. The teacher''s face changed -- not in a dramatic way, just a shift. She said, ''That''s exactly right, DeShawn -- and a sophisticated way to think about it.'' He didn''t suddenly become someone who always raised his hand. But he started doing a cost-benefit check before deciding to stay silent. The numbers were changing.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why He Never Raised His Hand',
    '{"lesson_name": "Why He Never Raised His Hand", "lesson_description": "3R3 (88%) PRIMARY | 3R2 (84%) SECONDARY | 3SL1 [3SL1b] (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "DeShawn was one of the smartest students in the class, and almost no one knew it \u2014 because he almost never raised his hand. He had done the math in his head once: the risk of being wrong in front of everyone felt bigger than the reward of being right. So he stayed quiet. One afternoon, the teacher asked a question no one could answer. The room was silent. DeShawn knew the answer. He felt it sitting in his chest. He waited to see if someone else would say it. No one did. He raised his hand slowly and gave the answer. The teacher''s face changed \u2014 not in a dramatic way, just a shift. She said, ''That''s exactly right, DeShawn \u2014 and a sophisticated way to think about it.'' He didn''t suddenly become someone who always raised his hand. But he started doing a cost-benefit check before deciding to stay silent. The numbers were changing."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 201
  );

  -- Lesson 27: The Same Word, Different Meanings
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Same Word, Different Meanings', '3R3 (87%) PRIMARY | 3SL1 [3SL1d] (85%) SECONDARY | 3-5L3 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/27.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During a class discussion about whether rules were fair, Marcus said that the school dress code was unfair. Another student, Priya, said it was completely fair. The two of them went back and forth for a few minutes before the teacher stopped them and asked, ''What does fair mean to each of you?'' Marcus said fair meant the same rules for everyone. Priya said fair meant rules that made sense for the situation. They looked at each other. They hadn''t been arguing about the dress code -- they had been arguing from two different definitions of the same word. The teacher said, ''This is why definitions matter.'' Marcus thought that was the most useful thing anyone had said in the whole argument. He started doing it on his own after that -- asking himself what he meant by each word before assuming everyone else meant the same thing.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Same Word, Different Meanings',
    '{"lesson_name": "The Same Word, Different Meanings", "lesson_description": "3R3 (87%) PRIMARY | 3SL1 [3SL1d] (85%) SECONDARY | 3-5L3 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During a class discussion about whether rules were fair, Marcus said that the school dress code was unfair. Another student, Priya, said it was completely fair. The two of them went back and forth for a few minutes before the teacher stopped them and asked, ''What does fair mean to each of you?'' Marcus said fair meant the same rules for everyone. Priya said fair meant rules that made sense for the situation. They looked at each other. They hadn''t been arguing about the dress code \u2014 they had been arguing from two different definitions of the same word. The teacher said, ''This is why definitions matter.'' Marcus thought that was the most useful thing anyone had said in the whole argument. He started doing it on his own after that \u2014 asking himself what he meant by each word before assuming everyone else meant the same thing."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 209
  );

  -- Lesson 28: Being Good at Something You Hate
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Being Good at Something You Hate', '3R3 (87%) PRIMARY | 3R2 (84%) SECONDARY | 3R6 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/44.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Olivia was a fast runner. Her gym teacher praised her every class, her friends assumed she loved track, and she had been automatically placed on the relay team. The problem was that she hated running. She liked drawing -- she had notebooks full of detailed illustrations that no one at school had ever seen. The running made her feel visible in a way she didn''t want. The drawing made her feel alive in a way she couldn''t explain. She finally told her gym teacher she didn''t want to be on the relay team. The teacher was surprised and asked why. Olivia said, ''Being good at something doesn''t mean I want to keep doing it.'' The teacher paused, then said that was fair and she''d figure something out. Olivia walked back to class thinking about all the ways people assume that talent equals love -- and how rarely that''s true.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Being Good at Something You Hate',
    '{"lesson_name": "Being Good at Something You Hate", "lesson_description": "3R3 (87%) PRIMARY | 3R2 (84%) SECONDARY | 3R6 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Olivia was a fast runner. Her gym teacher praised her every class, her friends assumed she loved track, and she had been automatically placed on the relay team. The problem was that she hated running. She liked drawing \u2014 she had notebooks full of detailed illustrations that no one at school had ever seen. The running made her feel visible in a way she didn''t want. The drawing made her feel alive in a way she couldn''t explain. She finally told her gym teacher she didn''t want to be on the relay team. The teacher was surprised and asked why. Olivia said, ''Being good at something doesn''t mean I want to keep doing it.'' The teacher paused, then said that was fair and she''d figure something out. Olivia walked back to class thinking about all the ways people assume that talent equals love \u2014 and how rarely that''s true."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 217
  );

  -- Lesson 29: What Changes When You Watch Yourself
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Changes When You Watch Yourself', '3R3 (87%) PRIMARY | 3R2 (84%) SECONDARY | 3SL4 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'MEDIUM', 'Paragraph Reading Test', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'For a speaking project, students recorded themselves reading aloud and then had to watch the video. Most of the class groaned when they heard their own voices. Mia watched her recording twice. The first time, she only noticed what was wrong -- her hair was messy, she stumbled over one word, she looked down too much. The second time, she tried to watch it the way she would watch someone else. She noticed that her voice was clear and her pacing was good and she actually looked confident even when she didn''t feel it. She thought about how different the two viewings were, even though they were the same video. She wondered how many times she had watched herself through the first lens and stopped there. She decided to start trying the second lens -- not to excuse real mistakes, but to give herself the same credit she would give a friend.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Changes When You Watch Yourself',
    '{"lesson_name": "What Changes When You Watch Yourself", "lesson_description": "3R3 (87%) PRIMARY | 3R2 (84%) SECONDARY | 3SL4 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "For a speaking project, students recorded themselves reading aloud and then had to watch the video. Most of the class groaned when they heard their own voices. Mia watched her recording twice. The first time, she only noticed what was wrong \u2014 her hair was messy, she stumbled over one word, she looked down too much. The second time, she tried to watch it the way she would watch someone else. She noticed that her voice was clear and her pacing was good and she actually looked confident even when she didn''t feel it. She thought about how different the two viewings were, even though they were the same video. She wondered how many times she had watched herself through the first lens and stopped there. She decided to start trying the second lens \u2014 not to excuse real mistakes, but to give herself the same credit she would give a friend."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Paragraph Reading Test', 3, NULL, 'MEDIUM', 225
  );

END $$;
