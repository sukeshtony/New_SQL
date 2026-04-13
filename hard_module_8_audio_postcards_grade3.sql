-- =====================================================
-- Module 8: Audio Postcards - Grade 3 (30 Lessons) [HARD]
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Training Module: e39352c6-f890-464f-be63-557fe374362a
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

  -- Lesson 1: A Moment I Felt Proud of Myself
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Moment I Felt Proud of Myself', '3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L2 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on a moment when you felt genuinely proud of something you accomplished.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you did, why it was difficult, and what the pride actually felt like.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Something happened this week that made me feel really proud. I had to give an answer in class when I wasn''t sure I was right. My voice was a little shaky, but I said it anyway, and my teacher nodded. The pride wasn''t loud — it was more like a warm feeling that stayed with me for the rest of the day. I noticed that the hardest part wasn''t knowing the answer. It was choosing to share it.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Moment I Felt Proud of Myself',
    '{"lesson_name": "A Moment I Felt Proud of Myself", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L2 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on a moment when you felt genuinely proud of something you accomplished."}, {"content_key": "instructions", "content_value": "Describe what you did, why it was difficult, and what the pride actually felt like."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Something happened this week that made me feel really proud. I had to give an answer in class when I wasn''t sure I was right. My voice was a little shaky, but I said it anyway, and my teacher nodded. The pride wasn''t loud \u2014 it was more like a warm feeling that stayed with me for the rest of the day. I noticed that the hardest part wasn''t knowing the answer. It was choosing to share it."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 8
  );

  -- Lesson 2: Helping Without Being Asked
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Helping Without Being Asked', '3SL4 (90%) PRIMARY | 3SL6 (88%) PRIMARY | 3-5L1 (86%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/94.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time you helped someone before they had to ask.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you noticed, what you decided to do, and how it felt afterward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I noticed a classmate struggling to carry their supplies before class started. They hadn''t asked for help — I just saw that they needed it. So I picked up the one that had fallen and walked alongside them to the room. Afterward, something felt different. Not big, but settled. I think it matters to act before someone has to ask. It says you were paying attention.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping Without Being Asked',
    '{"lesson_name": "Helping Without Being Asked", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (88%) PRIMARY | 3-5L1 (86%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time you helped someone before they had to ask."}, {"content_key": "instructions", "content_value": "Explain what you noticed, what you decided to do, and how it felt afterward."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I noticed a classmate struggling to carry their supplies before class started. They hadn''t asked for help \u2014 I just saw that they needed it. So I picked up the one that had fallen and walked alongside them to the room. Afterward, something felt different. Not big, but settled. I think it matters to act before someone has to ask. It says you were paying attention."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 16
  );

  -- Lesson 3: A Challenge I Overcame at School
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Challenge I Overcame at School', '3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L2 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a specific challenge at school and how you worked through it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what the challenge was, what you tried, and what you learned about yourself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'The writing assignment asked me to use evidence from two different places in the text, and at first I couldn''t figure out how to connect them. I read both sections again and tried writing a sentence that held both ideas at once. It took a few tries. When I finally got a sentence that worked, I read it back to myself three times. That''s when I realized: the hard part isn''t finding the evidence. It''s finding the relationship between them.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Challenge I Overcame at School',
    '{"lesson_name": "A Challenge I Overcame at School", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L2 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a specific challenge at school and how you worked through it."}, {"content_key": "instructions", "content_value": "Explain what the challenge was, what you tried, and what you learned about yourself."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "The writing assignment asked me to use evidence from two different places in the text, and at first I couldn''t figure out how to connect them. I read both sections again and tried writing a sentence that held both ideas at once. It took a few tries. When I finally got a sentence that worked, I read it back to myself three times. That''s when I realized: the hard part isn''t finding the evidence. It''s finding the relationship between them."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 24
  );

  -- Lesson 4: A Morning I Felt Ready to Learn
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Morning I Felt Ready to Learn', '3SL4 (90%) PRIMARY | 3SL6 (88%) PRIMARY | 3-5L1 (86%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a morning when you arrived at school feeling especially prepared and focused.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what was different about that morning and what made it feel that way.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'There was one morning this year when I walked into the classroom and everything felt clear. I had slept well, eaten something, and reviewed my notes the night before. I noticed I was sitting differently — my back was straighter and I was actually looking at the board before the lesson started. I think readiness is something you can prepare for. It doesn''t just happen.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Morning I Felt Ready to Learn',
    '{"lesson_name": "A Morning I Felt Ready to Learn", "lesson_description": "3SL4 (90%) PRIMARY | 3SL6 (88%) PRIMARY | 3-5L1 (86%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a morning when you arrived at school feeling especially prepared and focused."}, {"content_key": "instructions", "content_value": "Explain what was different about that morning and what made it feel that way."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "There was one morning this year when I walked into the classroom and everything felt clear. I had slept well, eaten something, and reviewed my notes the night before. I noticed I was sitting differently \u2014 my back was straighter and I was actually looking at the board before the lesson started. I think readiness is something you can prepare for. It doesn''t just happen."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 32
  );

  -- Lesson 5: A Time I Changed My Mind
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Time I Changed My Mind', '3SL4 (91%) PRIMARY | 3-5L1 (89%) PRIMARY | 3SL6 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/58.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on a moment when you changed your opinion about something.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you first believed, what changed it, and what it felt like to shift your thinking.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I used to think that asking questions in front of the class meant you didn''t understand as well as everyone else. Then I noticed that the students who asked the most questions were also the ones who seemed to understand things most completely. They weren''t asking because they were lost. They were asking to go deeper. That changed how I think about what questions actually mean.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Time I Changed My Mind',
    '{"lesson_name": "A Time I Changed My Mind", "lesson_description": "3SL4 (91%) PRIMARY | 3-5L1 (89%) PRIMARY | 3SL6 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on a moment when you changed your opinion about something."}, {"content_key": "instructions", "content_value": "Describe what you first believed, what changed it, and what it felt like to shift your thinking."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I used to think that asking questions in front of the class meant you didn''t understand as well as everyone else. Then I noticed that the students who asked the most questions were also the ones who seemed to understand things most completely. They weren''t asking because they were lost. They were asking to go deeper. That changed how I think about what questions actually mean."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 40
  );

  -- Lesson 6: Staying Calm When Things Felt Hard
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Staying Calm When Things Felt Hard', '3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L2 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/62.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment when something felt overwhelming, and how you managed to stay calm.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what was happening, what strategy you used, and what you noticed about yourself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'We had three things due in the same week, and for a moment it felt like too much. I stopped and made a list — not of what I was stressed about, but of what I actually had to do. Once it was on paper, it looked smaller than it had felt. I crossed things off one at a time. Calm isn''t the absence of pressure. It''s what happens when I organize the pressure into something I can work through.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Staying Calm When Things Felt Hard',
    '{"lesson_name": "Staying Calm When Things Felt Hard", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L2 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment when something felt overwhelming, and how you managed to stay calm."}, {"content_key": "instructions", "content_value": "Explain what was happening, what strategy you used, and what you noticed about yourself."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "We had three things due in the same week, and for a moment it felt like too much. I stopped and made a list \u2014 not of what I was stressed about, but of what I actually had to do. Once it was on paper, it looked smaller than it had felt. I crossed things off one at a time. Calm isn''t the absence of pressure. It''s what happens when I organize the pressure into something I can work through."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 48
  );

  -- Lesson 7: How My Team Solved a Problem
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How My Team Solved a Problem', '3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/34.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment when your team worked through a challenge together.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what the problem was, how the group approached it, and what made the solution work.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'During our group project, we disagreed about which approach to use. Three people had three different ideas, and nobody wanted to drop theirs. What solved it wasn''t that one person won. It was that someone said, "What if we combined parts of all three?" The conversation shifted completely after that. I noticed that the best group moments don''t happen when one idea wins. They happen when someone reframes what winning means.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How My Team Solved a Problem',
    '{"lesson_name": "How My Team Solved a Problem", "lesson_description": "3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment when your team worked through a challenge together."}, {"content_key": "instructions", "content_value": "Explain what the problem was, how the group approached it, and what made the solution work."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "During our group project, we disagreed about which approach to use. Three people had three different ideas, and nobody wanted to drop theirs. What solved it wasn''t that one person won. It was that someone said, \"What if we combined parts of all three?\" The conversation shifted completely after that. I noticed that the best group moments don''t happen when one idea wins. They happen when someone reframes what winning means."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 56
  );

  -- Lesson 8: When Careful Listening Made a Difference
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Careful Listening Made a Difference', '3SL1 [3SL1d] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time when you listened very carefully to someone, and it changed what happened next.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you heard, how it affected your thinking, and what you did differently because of it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'During a partner discussion, my partner started repeating themselves slightly differently the second time they explained it. I almost interrupted to move on, but I waited. In the second version, they said something small that completely clarified what I''d been confused about. I learned that sometimes the important part of what someone is saying comes in the second or third version, not the first.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Careful Listening Made a Difference',
    '{"lesson_name": "When Careful Listening Made a Difference", "lesson_description": "3SL1 [3SL1d] (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time when you listened very carefully to someone, and it changed what happened next."}, {"content_key": "instructions", "content_value": "Explain what you heard, how it affected your thinking, and what you did differently because of it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "During a partner discussion, my partner started repeating themselves slightly differently the second time they explained it. I almost interrupted to move on, but I waited. In the second version, they said something small that completely clarified what I''d been confused about. I learned that sometimes the important part of what someone is saying comes in the second or third version, not the first."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 64
  );

  -- Lesson 9: When Someone Needed Encouragement
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Someone Needed Encouragement', '3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time when you noticed someone needed encouragement and what you did.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain how you recognized it, what you said or did, and how the situation shifted.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I noticed a classmate had stopped participating in group discussion and was just looking down at their paper. Nobody else seemed to notice. I waited for a pause and then said, "I think what you said earlier about this was really interesting — can you say more about it?" Their face changed immediately. They looked up and started talking. I realized that encouragement doesn''t have to be big. Sometimes it just means bringing someone back into the conversation with a question.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Someone Needed Encouragement',
    '{"lesson_name": "When Someone Needed Encouragement", "lesson_description": "3SL1 (92%) PRIMARY | 3SL4 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time when you noticed someone needed encouragement and what you did."}, {"content_key": "instructions", "content_value": "Explain how you recognized it, what you said or did, and how the situation shifted."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I noticed a classmate had stopped participating in group discussion and was just looking down at their paper. Nobody else seemed to notice. I waited for a pause and then said, \"I think what you said earlier about this was really interesting \u2014 can you say more about it?\" Their face changed immediately. They looked up and started talking. I realized that encouragement doesn''t have to be big. Sometimes it just means bringing someone back into the conversation with a question."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 72
  );

  -- Lesson 10: Disagreeing Respectfully
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Disagreeing Respectfully', '3SL1 [3SL1a] (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time you disagreed with someone but kept the conversation respectful.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you disagreed about, how you expressed it, and what you both walked away with.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My partner said the character in the story did the right thing. I didn''t think so. Instead of saying "you''re wrong," I said, "I see it differently — can I explain why?" They said yes. I gave my reasoning and they gave theirs, and by the end we both had a more complicated view of the character than either of us started with. Disagreeing respectfully doesn''t mean you stop disagreeing. It means you let the disagreement produce something.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Disagreeing Respectfully',
    '{"lesson_name": "Disagreeing Respectfully", "lesson_description": "3SL1 [3SL1a] (93%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time you disagreed with someone but kept the conversation respectful."}, {"content_key": "instructions", "content_value": "Explain what you disagreed about, how you expressed it, and what you both walked away with."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "My partner said the character in the story did the right thing. I didn''t think so. Instead of saying \"you''re wrong,\" I said, \"I see it differently \u2014 can I explain why?\" They said yes. I gave my reasoning and they gave theirs, and by the end we both had a more complicated view of the character than either of us started with. Disagreeing respectfully doesn''t mean you stop disagreeing. It means you let the disagreement produce something."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 80
  );

  -- Lesson 11: A Goal I Am Working Toward
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Goal I Am Working Toward', '3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a specific learning goal you are actively working on right now.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what the goal is, why it matters to you, and what you are doing to reach it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My goal this month is to write conclusions that actually add something to my essay, instead of just repeating what I already said. I noticed that my conclusions feel like endings, but they don''t feel like arrivals. So I''ve started asking myself at the end of each draft: what does the reader now understand that they didn''t understand at the beginning? That question has changed what I put in my final paragraph.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Goal I Am Working Toward',
    '{"lesson_name": "A Goal I Am Working Toward", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a specific learning goal you are actively working on right now."}, {"content_key": "instructions", "content_value": "Explain what the goal is, why it matters to you, and what you are doing to reach it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "My goal this month is to write conclusions that actually add something to my essay, instead of just repeating what I already said. I noticed that my conclusions feel like endings, but they don''t feel like arrivals. So I''ve started asking myself at the end of each draft: what does the reader now understand that they didn''t understand at the beginning? That question has changed what I put in my final paragraph."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 88
  );

  -- Lesson 12: When Waiting Was Worth It
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Waiting Was Worth It', '3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L2 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/55.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time you had to be patient and the outcome was better because of it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you were waiting for, how you handled the wait, and what you discovered when it was over.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I wanted to know how our science experiment would turn out, but we had to observe it over five days. The waiting felt slow, but I started noticing small changes each day that I would have missed if the result had come immediately. On the fifth day, the change was exactly what we predicted — but I understood why it happened in a way I wouldn''t have if I''d just seen the final result. Patience gave me the process, not just the answer.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Waiting Was Worth It',
    '{"lesson_name": "When Waiting Was Worth It", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L2 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time you had to be patient and the outcome was better because of it."}, {"content_key": "instructions", "content_value": "Explain what you were waiting for, how you handled the wait, and what you discovered when it was over."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I wanted to know how our science experiment would turn out, but we had to observe it over five days. The waiting felt slow, but I started noticing small changes each day that I would have missed if the result had come immediately. On the fifth day, the change was exactly what we predicted \u2014 but I understood why it happened in a way I wouldn''t have if I''d just seen the final result. Patience gave me the process, not just the answer."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 96
  );

  -- Lesson 13: Something That Surprised Me in a Lesson
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Something That Surprised Me in a Lesson', '3SL4 (92%) PRIMARY | 3-5L1 (89%) PRIMARY | 3SL6 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you learned that genuinely surprised you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you expected, what was actually true, and how it changed your understanding.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I expected that the bigger the number, the more powerful it was in the problem. But in fractions, a bigger denominator actually makes each piece smaller. The number looks larger but represents something smaller. That surprised me because it felt like the rules I already knew had reversed themselves. I''ve started noticing other places where what something looks like and what it actually means aren''t the same.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something That Surprised Me in a Lesson',
    '{"lesson_name": "Something That Surprised Me in a Lesson", "lesson_description": "3SL4 (92%) PRIMARY | 3-5L1 (89%) PRIMARY | 3SL6 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you learned that genuinely surprised you."}, {"content_key": "instructions", "content_value": "Explain what you expected, what was actually true, and how it changed your understanding."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I expected that the bigger the number, the more powerful it was in the problem. But in fractions, a bigger denominator actually makes each piece smaller. The number looks larger but represents something smaller. That surprised me because it felt like the rules I already knew had reversed themselves. I''ve started noticing other places where what something looks like and what it actually means aren''t the same."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 104
  );

  -- Lesson 14: Noticing Kindness Around Me
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Noticing Kindness Around Me', '3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L1 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/30.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something kind you observed someone else do, and what it made you think.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you saw, who was involved, and what it told you about how people treat each other.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I watched a student help someone find their name on the class list when they couldn''t read the handwriting. They didn''t make a big deal of it. They just pointed and said "there" and moved on. It wasn''t a large act, but I kept thinking about it. I think kindness is most effective when it doesn''t draw attention to itself. The help mattered. The person who received it didn''t have to feel grateful in a way that was uncomfortable.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noticing Kindness Around Me',
    '{"lesson_name": "Noticing Kindness Around Me", "lesson_description": "3SL4 (91%) PRIMARY | 3SL6 (89%) PRIMARY | 3-5L1 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something kind you observed someone else do, and what it made you think."}, {"content_key": "instructions", "content_value": "Explain what you saw, who was involved, and what it told you about how people treat each other."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I watched a student help someone find their name on the class list when they couldn''t read the handwriting. They didn''t make a big deal of it. They just pointed and said \"there\" and moved on. It wasn''t a large act, but I kept thinking about it. I think kindness is most effective when it doesn''t draw attention to itself. The help mattered. The person who received it didn''t have to feel grateful in a way that was uncomfortable."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 112
  );

  -- Lesson 15: When Practice Started to Work
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Practice Started to Work', '3SL4 (92%) PRIMARY | 3RF4a (89%) SECONDARY | 3-5L2 (87%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment when you realized that your practice was actually producing improvement.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you were practicing, when the change became noticeable, and what that felt like.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I had been practicing reading aloud for fluency, and for weeks it felt like I was doing the same thing over and over without improvement. Then one afternoon, I read a passage and didn''t have to slow down once. The words just came. I almost missed the moment because I was looking for something big. The change arrived quietly, in the middle of a sentence. I think that''s how most real improvement arrives: you don''t see it coming because it sneaks in between the practice.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Practice Started to Work',
    '{"lesson_name": "When Practice Started to Work", "lesson_description": "3SL4 (92%) PRIMARY | 3RF4a (89%) SECONDARY | 3-5L2 (87%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment when you realized that your practice was actually producing improvement."}, {"content_key": "instructions", "content_value": "Explain what you were practicing, when the change became noticeable, and what that felt like."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I had been practicing reading aloud for fluency, and for weeks it felt like I was doing the same thing over and over without improvement. Then one afternoon, I read a passage and didn''t have to slow down once. The words just came. I almost missed the moment because I was looking for something big. The change arrived quietly, in the middle of a sentence. I think that''s how most real improvement arrives: you don''t see it coming because it sneaks in between the practice."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 120
  );

  -- Lesson 16: When My Thinking Changed
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When My Thinking Changed', '3SL4 (93%) PRIMARY | 3SL1 [3SL1d] (91%) PRIMARY | 3-5L1 (89%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment when you noticed your thinking actually shifting while you worked through something.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what triggered the shift, how it felt to change your understanding, and what it reveals about how you learn.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In the middle of a discussion, I said something I believed and then immediately heard how incomplete it sounded. Not wrong — just partial. I kept talking, but I was editing as I went. By the time I finished the sentence, I had arrived somewhere different than where I started. That was new for me. I always thought you figured things out first and then spoke. But sometimes the speaking is where the figuring happens.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When My Thinking Changed',
    '{"lesson_name": "When My Thinking Changed", "lesson_description": "3SL4 (93%) PRIMARY | 3SL1 [3SL1d] (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment when you noticed your thinking actually shifting while you worked through something."}, {"content_key": "instructions", "content_value": "Explain what triggered the shift, how it felt to change your understanding, and what it reveals about how you learn."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "In the middle of a discussion, I said something I believed and then immediately heard how incomplete it sounded. Not wrong \u2014 just partial. I kept talking, but I was editing as I went. By the time I finished the sentence, I had arrived somewhere different than where I started. That was new for me. I always thought you figured things out first and then spoke. But sometimes the speaking is where the figuring happens."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 128
  );

  -- Lesson 17: The Feeling of Finally Understanding
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Feeling of Finally Understanding', '3SL4 (93%) PRIMARY | 3RF4a (90%) SECONDARY | 3-5L2 (88%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on the specific feeling of understanding something that had been confusing for a while.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what the confusion felt like, what broke it open, and what the understanding actually felt like in your body and mind.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'There''s a specific feeling when something clicks after it''s been confused. It doesn''t feel like relief exactly — more like the space inside my thinking gets bigger. When I finally understood how to use evidence to support an inference instead of just repeating the text, it felt like the assignment itself got easier, but also like something about reading changed permanently. I started noticing the difference between what the text says and what it means, in every book I picked up.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Feeling of Finally Understanding',
    '{"lesson_name": "The Feeling of Finally Understanding", "lesson_description": "3SL4 (93%) PRIMARY | 3RF4a (90%) SECONDARY | 3-5L2 (88%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on the specific feeling of understanding something that had been confusing for a while."}, {"content_key": "instructions", "content_value": "Describe what the confusion felt like, what broke it open, and what the understanding actually felt like in your body and mind."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "There''s a specific feeling when something clicks after it''s been confused. It doesn''t feel like relief exactly \u2014 more like the space inside my thinking gets bigger. When I finally understood how to use evidence to support an inference instead of just repeating the text, it felt like the assignment itself got easier, but also like something about reading changed permanently. I started noticing the difference between what the text says and what it means, in every book I picked up."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 136
  );

  -- Lesson 18: Making a Decision While Still Uncertain
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Making a Decision While Still Uncertain', '3SL4 (92%) PRIMARY | 3SL6 (90%) PRIMARY | 3-5L1 (88%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time when you had to make a decision even though you weren''t completely sure it was right.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what made it uncertain, what you decided, and what that experience taught you about decision-making.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I had two options for my project, and both seemed reasonable. I kept waiting to feel sure before I chose. But the deadline came before the certainty did. So I picked one and started working. What I discovered is that the commitment itself created a kind of clarity. Once I was inside the project, I stopped wondering whether the other option was better. The decision wasn''t as hard as the waiting had been.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making a Decision While Still Uncertain',
    '{"lesson_name": "Making a Decision While Still Uncertain", "lesson_description": "3SL4 (92%) PRIMARY | 3SL6 (90%) PRIMARY | 3-5L1 (88%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time when you had to make a decision even though you weren''t completely sure it was right."}, {"content_key": "instructions", "content_value": "Explain what made it uncertain, what you decided, and what that experience taught you about decision-making."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I had two options for my project, and both seemed reasonable. I kept waiting to feel sure before I chose. But the deadline came before the certainty did. So I picked one and started working. What I discovered is that the commitment itself created a kind of clarity. Once I was inside the project, I stopped wondering whether the other option was better. The decision wasn''t as hard as the waiting had been."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 144
  );

  -- Lesson 19: Noticing How Someone Else Works Differently
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Noticing How Someone Else Works Differently', '3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Observe how a classmate approaches learning differently than you do, and reflect on what you can learn from it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you noticed, what surprised you, and whether it made you reconsider your own approach.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My partner writes everything down first and then decides what to keep. I start with an outline and fill it in. We both end up with a paragraph, but the process looks completely different. Watching them work made me realize I might skip ideas too early because they don''t fit my plan. They never skip anything first — they just filter later. I tried their approach on one draft, and I found two ideas I would have discarded that actually made my writing stronger.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noticing How Someone Else Works Differently',
    '{"lesson_name": "Noticing How Someone Else Works Differently", "lesson_description": "3SL1 [3SL1a] (92%) PRIMARY | 3SL4 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Observe how a classmate approaches learning differently than you do, and reflect on what you can learn from it."}, {"content_key": "instructions", "content_value": "Describe what you noticed, what surprised you, and whether it made you reconsider your own approach."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "My partner writes everything down first and then decides what to keep. I start with an outline and fill it in. We both end up with a paragraph, but the process looks completely different. Watching them work made me realize I might skip ideas too early because they don''t fit my plan. They never skip anything first \u2014 they just filter later. I tried their approach on one draft, and I found two ideas I would have discarded that actually made my writing stronger."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 152
  );

  -- Lesson 20: Slowing Down to Improve
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Slowing Down to Improve', '3SL4 (93%) PRIMARY | 3SL6 (91%) PRIMARY | 3-5L2 (89%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/91.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on a time when slowing down your pace actually improved the quality of your work.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what you were doing, what made you slow down, and what you produced that was different.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I usually write fast on first drafts because I''m worried about losing ideas. But in one assignment, I forced myself to stop after each sentence and read it back before moving on. The draft was shorter than usual but almost didn''t need revision. Every sentence meant what I intended it to mean. I think I''ve been conflating speed with productivity. Writing fewer sentences that say what you mean takes longer, but it produces something different than revising faster sentences into shape.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Slowing Down to Improve',
    '{"lesson_name": "Slowing Down to Improve", "lesson_description": "3SL4 (93%) PRIMARY | 3SL6 (91%) PRIMARY | 3-5L2 (89%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on a time when slowing down your pace actually improved the quality of your work."}, {"content_key": "instructions", "content_value": "Explain what you were doing, what made you slow down, and what you produced that was different."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I usually write fast on first drafts because I''m worried about losing ideas. But in one assignment, I forced myself to stop after each sentence and read it back before moving on. The draft was shorter than usual but almost didn''t need revision. Every sentence meant what I intended it to mean. I think I''ve been conflating speed with productivity. Writing fewer sentences that say what you mean takes longer, but it produces something different than revising faster sentences into shape."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 160
  );

  -- Lesson 21: When Difficulty Taught Me Something
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Difficulty Taught Me Something', '3SL4 (93%) PRIMARY | 3-5L1 (91%) PRIMARY | 3SL6 (89%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on a difficult experience that turned out to be genuinely instructive.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the difficulty, what made it hard, and what understanding came specifically because of that difficulty.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'The most useful feedback I received this year was also the hardest to read. My teacher said my main idea was not actually in my essay — it was only in my head. I had thought it was obvious from the evidence. But I learned something I couldn''t have learned from a compliment: the reader can only respond to what is actually on the page. That lesson changed not just how I write. It changed how I read other people''s writing.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Difficulty Taught Me Something',
    '{"lesson_name": "When Difficulty Taught Me Something", "lesson_description": "3SL4 (93%) PRIMARY | 3-5L1 (91%) PRIMARY | 3SL6 (89%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on a difficult experience that turned out to be genuinely instructive."}, {"content_key": "instructions", "content_value": "Describe the difficulty, what made it hard, and what understanding came specifically because of that difficulty."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "The most useful feedback I received this year was also the hardest to read. My teacher said my main idea was not actually in my essay \u2014 it was only in my head. I had thought it was obvious from the evidence. But I learned something I couldn''t have learned from a compliment: the reader can only respond to what is actually on the page. That lesson changed not just how I write. It changed how I read other people''s writing."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 168
  );

  -- Lesson 22: What Kind of Learner I Am
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Kind of Learner I Am', '3SL4 (93%) PRIMARY | 3SL6 (91%) PRIMARY | 3-5L1 (89%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/78.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on your own learning style and what you''ve discovered about how you learn best.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the conditions in which you learn most effectively, using specific observations.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I''ve noticed that I learn best when I have time to sit with something before I have to respond to it. If I hear something new and have to answer immediately, my answer is shallow. If I have even five minutes to think, the answer is different. I also learn better when I can connect something new to something I already understand. I don''t just store new information — I need to find somewhere for it to attach.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Kind of Learner I Am',
    '{"lesson_name": "What Kind of Learner I Am", "lesson_description": "3SL4 (93%) PRIMARY | 3SL6 (91%) PRIMARY | 3-5L1 (89%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on your own learning style and what you''ve discovered about how you learn best."}, {"content_key": "instructions", "content_value": "Describe the conditions in which you learn most effectively, using specific observations."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I''ve noticed that I learn best when I have time to sit with something before I have to respond to it. If I hear something new and have to answer immediately, my answer is shallow. If I have even five minutes to think, the answer is different. I also learn better when I can connect something new to something I already understand. I don''t just store new information \u2014 I need to find somewhere for it to attach."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 176
  );

  -- Lesson 23: When a New Strategy Worked
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When a New Strategy Worked', '3SL4 (92%) PRIMARY | 3RF4a (90%) SECONDARY | 3-5L2 (88%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a time you tried a new learning strategy and discovered it actually helped.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what the strategy was, why you tried it, and what was different about the outcome.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I started re-reading a difficult paragraph out loud instead of silently when I was confused. I expected it to feel the same. It didn''t. Hearing the words made me notice where my voice wanted to pause and where the sentence actually stopped, and those weren''t always the same place. That''s where my confusion lived — in the gap between how I was reading the sentence and what the sentence was actually doing. Reading aloud revealed structure I couldn''t see.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When a New Strategy Worked',
    '{"lesson_name": "When a New Strategy Worked", "lesson_description": "3SL4 (92%) PRIMARY | 3RF4a (90%) SECONDARY | 3-5L2 (88%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a time you tried a new learning strategy and discovered it actually helped."}, {"content_key": "instructions", "content_value": "Explain what the strategy was, why you tried it, and what was different about the outcome."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I started re-reading a difficult paragraph out loud instead of silently when I was confused. I expected it to feel the same. It didn''t. Hearing the words made me notice where my voice wanted to pause and where the sentence actually stopped, and those weren''t always the same place. That''s where my confusion lived \u2014 in the gap between how I was reading the sentence and what the sentence was actually doing. Reading aloud revealed structure I couldn''t see."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 184
  );

  -- Lesson 24: Focused vs. Distracted — What I Notice
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Focused vs. Distracted — What I Notice', '3SL4 (93%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L1 (90%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on the difference between how you think and work when you are focused versus distracted.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the qualities of both states — what each one feels like from the inside, not just the results.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'When I''m focused, time moves differently. I don''t feel the length of the task — I feel the texture of the thinking. When I''m distracted, I notice myself noticing that I''m distracted, which makes it worse. Focus isn''t the absence of other thoughts. It''s a decision I keep making, every few minutes, to return. I''ve started to think of it less like a state and more like a practice — something you maintain rather than achieve.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Focused vs. Distracted — What I Notice',
    '{"lesson_name": "Focused vs. Distracted \u2014 What I Notice", "lesson_description": "3SL4 (93%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on the difference between how you think and work when you are focused versus distracted."}, {"content_key": "instructions", "content_value": "Describe the qualities of both states \u2014 what each one feels like from the inside, not just the results."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "When I''m focused, time moves differently. I don''t feel the length of the task \u2014 I feel the texture of the thinking. When I''m distracted, I notice myself noticing that I''m distracted, which makes it worse. Focus isn''t the absence of other thoughts. It''s a decision I keep making, every few minutes, to return. I''ve started to think of it less like a state and more like a practice \u2014 something you maintain rather than achieve."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 192
  );

  -- Lesson 25: How I've Changed as a Learner
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How I''ve Changed as a Learner', '3SL4 (94%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L1 (90%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/95.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on how your approach to learning has shifted over the course of this school year.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe something specific that is different now — not just what you know, but how you approach knowing.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'At the beginning of this year, I thought being a good student meant getting the right answers. I focused most of my energy on the answers. Now I notice that I''m spending more time on the questions — not just asking them, but staying inside them longer before I try to resolve them. The answers I arrive at when I''ve spent more time with the question are more interesting to me, and they feel more like something I discovered than something I retrieved.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How I''ve Changed as a Learner',
    '{"lesson_name": "How I''ve Changed as a Learner", "lesson_description": "3SL4 (94%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on how your approach to learning has shifted over the course of this school year."}, {"content_key": "instructions", "content_value": "Describe something specific that is different now \u2014 not just what you know, but how you approach knowing."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "At the beginning of this year, I thought being a good student meant getting the right answers. I focused most of my energy on the answers. Now I notice that I''m spending more time on the questions \u2014 not just asking them, but staying inside them longer before I try to resolve them. The answers I arrive at when I''ve spent more time with the question are more interesting to me, and they feel more like something I discovered than something I retrieved."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 200
  );

  -- Lesson 26: When Speaking Up Felt Difficult But Right
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Speaking Up Felt Difficult But Right', '3SL1 [3SL1a] (94%) PRIMARY | 3SL4 (92%) PRIMARY | 3-5L1 (90%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a situation where you chose to speak up about something, even though it was uncomfortable.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what made it difficult, why you did it anyway, and what you understand now that you didn''t before.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'During a group discussion, one idea kept getting agreed with immediately, and I had a different perspective that I thought was worth saying. But the group had already moved on. I said, "Before we go further — can I add one thing?" The group paused. I said what I thought. It changed the direction of the conversation. What I understand now: sometimes the most important contribution is the one that arrives just after the group thinks it has already decided.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Speaking Up Felt Difficult But Right',
    '{"lesson_name": "When Speaking Up Felt Difficult But Right", "lesson_description": "3SL1 [3SL1a] (94%) PRIMARY | 3SL4 (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a situation where you chose to speak up about something, even though it was uncomfortable."}, {"content_key": "instructions", "content_value": "Explain what made it difficult, why you did it anyway, and what you understand now that you didn''t before."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "During a group discussion, one idea kept getting agreed with immediately, and I had a different perspective that I thought was worth saying. But the group had already moved on. I said, \"Before we go further \u2014 can I add one thing?\" The group paused. I said what I thought. It changed the direction of the conversation. What I understand now: sometimes the most important contribution is the one that arrives just after the group thinks it has already decided."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 208
  );

  -- Lesson 27: What I Thought Was Impossible
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Thought Was Impossible', '3SL4 (93%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L2 (90%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on something you once thought was beyond your ability that you have since accomplished.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what made it feel impossible, how you approached it anyway, and what the accomplishment changed about how you see yourself.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Writing a paragraph that used evidence from the text and connected it to an inference felt completely out of reach in September. I didn''t even understand what the instruction meant. Now I do it in most assignments without thinking about it. What I find interesting is that I can''t locate the moment when it became possible. It didn''t happen in one lesson. It happened across many attempts, and at some point the skill became part of how I write rather than something I was practicing toward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Thought Was Impossible',
    '{"lesson_name": "What I Thought Was Impossible", "lesson_description": "3SL4 (93%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L2 (90%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on something you once thought was beyond your ability that you have since accomplished."}, {"content_key": "instructions", "content_value": "Describe what made it feel impossible, how you approached it anyway, and what the accomplishment changed about how you see yourself."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Writing a paragraph that used evidence from the text and connected it to an inference felt completely out of reach in September. I didn''t even understand what the instruction meant. Now I do it in most assignments without thinking about it. What I find interesting is that I can''t locate the moment when it became possible. It didn''t happen in one lesson. It happened across many attempts, and at some point the skill became part of how I write rather than something I was practicing toward."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 216
  );

  -- Lesson 28: Patterns in How I Handle New Challenges
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Patterns in How I Handle New Challenges', '3SL4 (94%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L1 (90%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on how you consistently respond when you encounter something new and difficult.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the pattern you notice in yourself across different situations, and what it tells you about how you are wired as a learner.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'When I encounter something new and hard, my first response is almost always to look for the structure. I want to know: what kind of problem is this? Is it like anything I''ve seen before? That pattern shows up whether it''s a math concept, a reading strategy, or a new classroom routine. I think I learn by categorizing. If I can figure out what family the new thing belongs to, I can start to reason about it. When I can''t find the category, that''s when I feel most lost.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Patterns in How I Handle New Challenges',
    '{"lesson_name": "Patterns in How I Handle New Challenges", "lesson_description": "3SL4 (94%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L1 (90%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on how you consistently respond when you encounter something new and difficult."}, {"content_key": "instructions", "content_value": "Describe the pattern you notice in yourself across different situations, and what it tells you about how you are wired as a learner."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "When I encounter something new and hard, my first response is almost always to look for the structure. I want to know: what kind of problem is this? Is it like anything I''ve seen before? That pattern shows up whether it''s a math concept, a reading strategy, or a new classroom routine. I think I learn by categorizing. If I can figure out what family the new thing belongs to, I can start to reason about it. When I can''t find the category, that''s when I feel most lost."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 224
  );

  -- Lesson 29: What I Want to Carry Into Next Year
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What I Want to Carry Into Next Year', '3SL4 (94%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L2 (90%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/31.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on the understanding, habit, or mindset from this year that you most want to bring forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what it is, why it matters to you, and what you''ll need to do to actually carry it forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'The thing I most want to bring with me is the habit of rereading — not just texts, but my own work. This year I learned that my first reading of something is almost always incomplete. The second reading is where I actually understand. I want to carry that forward not as a strategy I use when I have time, but as an assumption about how understanding works. First readings are drafts. The actual comprehension happens in the return.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Want to Carry Into Next Year',
    '{"lesson_name": "What I Want to Carry Into Next Year", "lesson_description": "3SL4 (94%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L2 (90%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on the understanding, habit, or mindset from this year that you most want to bring forward."}, {"content_key": "instructions", "content_value": "Explain what it is, why it matters to you, and what you''ll need to do to actually carry it forward."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "The thing I most want to bring with me is the habit of rereading \u2014 not just texts, but my own work. This year I learned that my first reading of something is almost always incomplete. The second reading is where I actually understand. I want to carry that forward not as a strategy I use when I have time, but as an assumption about how understanding works. First readings are drafts. The actual comprehension happens in the return."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 232
  );

  -- Lesson 30: What Effort Means to Me
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Effort Means to Me', '3SL4 (94%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L1 (91%) SECONDARY', 'e39352c6-f890-464f-be63-557fe374362a',
    'HARD', 'Personal Expression', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/46.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Reflect on your personal understanding of what effort actually means, based on what you''ve experienced this year.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Define effort not as a general idea, but as something specific you have observed in yourself — what it costs, what it produces, and what it reveals.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'I used to think effort meant working harder on the same approach. This year I learned that real effort sometimes means stopping and trying something completely different — which is harder than just trying more. The most effortful moment I can remember wasn''t when I worked the longest. It was when I threw away a draft I was proud of because I realized it wasn''t answering the actual question. Starting over felt like a loss. But the second draft was the only one worth keeping.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Effort Means to Me',
    '{"lesson_name": "What Effort Means to Me", "lesson_description": "3SL4 (94%) PRIMARY | 3SL6 (92%) PRIMARY | 3-5L1 (91%) SECONDARY", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Reflect on your personal understanding of what effort actually means, based on what you''ve experienced this year."}, {"content_key": "instructions", "content_value": "Define effort not as a general idea, but as something specific you have observed in yourself \u2014 what it costs, what it produces, and what it reveals."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "I used to think effort meant working harder on the same approach. This year I learned that real effort sometimes means stopping and trying something completely different \u2014 which is harder than just trying more. The most effortful moment I can remember wasn''t when I worked the longest. It was when I threw away a draft I was proud of because I realized it wasn''t answering the actual question. Starting over felt like a loss. But the second draft was the only one worth keeping."}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Personal Expression', 3, NULL, 'HARD', 240
  );

END $$;
