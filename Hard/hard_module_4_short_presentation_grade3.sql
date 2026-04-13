-- =====================================================
-- Module 4: Short Presentation - Grade 3 (30 Lessons) [HARD]
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Training Module: e9f70a86-834f-4f3c-aa92-7bbd98e9ad72
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

  -- Lesson 1: How the Moon Shapes Earth's Oceans
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How the Moon Shapes Earth''s Oceans', '3SL4 (94%) PRIMARY | 3W2 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/95.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the moon''s gravity causes ocean tides and why this matters for life on Earth.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain what a tide is and describe the difference between high tide and low tide
Explain how the moon''s gravity pulls on Earth''s oceans to create tides
Describe why tides happen twice a day as Earth rotates
Mention one way coastal animals and plants depend on the tidal cycle to survive
End with one surprising consequence of having a moon — what would change if Earth had no moon?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Moon Shapes Earth''s Oceans',
    '{"lesson_name": "How the Moon Shapes Earth''s Oceans", "lesson_description": "3SL4 (94%) PRIMARY | 3W2 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the moon''s gravity causes ocean tides and why this matters for life on Earth."}, {"content_key": "preparation_guidelines", "content_value": "Explain what a tide is and describe the difference between high tide and low tide\nExplain how the moon''s gravity pulls on Earth''s oceans to create tides\nDescribe why tides happen twice a day as Earth rotates\nMention one way coastal animals and plants depend on the tidal cycle to survive\nEnd with one surprising consequence of having a moon \u2014 what would change if Earth had no moon?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 5
  );

  -- Lesson 2: Why Maps Can Be Misleading
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Maps Can Be Misleading', '3SL4 (93%) PRIMARY | 3W2 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/24.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the design of a map can affect what a reader believes about the world.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain what map projection is and why perfectly representing a sphere on a flat surface is impossible
Give one example of how size distortion in maps can create false impressions (Greenland vs. Africa)
Describe how color, labeling, and what is left off a map are also choices that shape meaning
Explain what questions a careful reader should ask about any map or visual representation
End with why this understanding matters beyond maps — what else is shaped by how information is displayed?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Maps Can Be Misleading',
    '{"lesson_name": "Why Maps Can Be Misleading", "lesson_description": "3SL4 (93%) PRIMARY | 3W2 (87%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the design of a map can affect what a reader believes about the world."}, {"content_key": "preparation_guidelines", "content_value": "Explain what map projection is and why perfectly representing a sphere on a flat surface is impossible\nGive one example of how size distortion in maps can create false impressions (Greenland vs. Africa)\nDescribe how color, labeling, and what is left off a map are also choices that shape meaning\nExplain what questions a careful reader should ask about any map or visual representation\nEnd with why this understanding matters beyond maps \u2014 what else is shaped by how information is displayed?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 13
  );

  -- Lesson 3: How Authors Build Characters
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Authors Build Characters', '3SL4 (93%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the techniques authors use to create characters that feel real and complex.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe at least three ways authors reveal character: direct statement, dialogue, action, and thought
Explain the difference between a character who is consistent throughout and one who changes — what makes each feel real?
Describe how minor details — what a character notices, what they avoid, small habits — build a sense of a full person
Explain how a character''s weakness or flaw can make them more believable than a character who is entirely good
End with one thing a reader can look for in any story to understand a character more deeply', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Authors Build Characters',
    '{"lesson_name": "How Authors Build Characters", "lesson_description": "3SL4 (93%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the techniques authors use to create characters that feel real and complex."}, {"content_key": "preparation_guidelines", "content_value": "Describe at least three ways authors reveal character: direct statement, dialogue, action, and thought\nExplain the difference between a character who is consistent throughout and one who changes \u2014 what makes each feel real?\nDescribe how minor details \u2014 what a character notices, what they avoid, small habits \u2014 build a sense of a full person\nExplain how a character''s weakness or flaw can make them more believable than a character who is entirely good\nEnd with one thing a reader can look for in any story to understand a character more deeply"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 21
  );

  -- Lesson 4: What Stars Are Made Of and Why They Shine
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Stars Are Made Of and Why They Shine', '3SL4 (93%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (82%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the composition of stars and the process that makes them produce light and heat.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what the most common elements in stars are and why hydrogen is so important
Explain nuclear fusion — what happens at a star''s core that releases energy
Describe the relationship between a star''s mass and how bright it is and how long it lasts
Explain what happens when a star runs out of fuel — briefly describe two different outcomes depending on the star''s size
End with one way the materials in stars connect to life on Earth', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Stars Are Made Of and Why They Shine',
    '{"lesson_name": "What Stars Are Made Of and Why They Shine", "lesson_description": "3SL4 (93%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (82%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the composition of stars and the process that makes them produce light and heat."}, {"content_key": "preparation_guidelines", "content_value": "Say what the most common elements in stars are and why hydrogen is so important\nExplain nuclear fusion \u2014 what happens at a star''s core that releases energy\nDescribe the relationship between a star''s mass and how bright it is and how long it lasts\nExplain what happens when a star runs out of fuel \u2014 briefly describe two different outcomes depending on the star''s size\nEnd with one way the materials in stars connect to life on Earth"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 29
  );

  -- Lesson 5: What Makes a Community Resilient
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes a Community Resilient', '3SL4 (92%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (82%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what resilience means for a community and what factors help it recover from difficulty.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define community resilience and give one example of a community that recovered from a significant challenge
Describe two or three specific factors that make a community more resilient — connection, resources, leadership, diversity
Explain what tends to weaken community resilience over time
Describe what individuals can do to contribute to resilience rather than waiting for institutions to act
End with why resilience matters not just in crises but as an ongoing quality', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes a Community Resilient',
    '{"lesson_name": "What Makes a Community Resilient", "lesson_description": "3SL4 (92%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (82%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain what resilience means for a community and what factors help it recover from difficulty."}, {"content_key": "preparation_guidelines", "content_value": "Define community resilience and give one example of a community that recovered from a significant challenge\nDescribe two or three specific factors that make a community more resilient \u2014 connection, resources, leadership, diversity\nExplain what tends to weaken community resilience over time\nDescribe what individuals can do to contribute to resilience rather than waiting for institutions to act\nEnd with why resilience matters not just in crises but as an ongoing quality"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 37
  );

  -- Lesson 6: How Animals Communicate Without Words
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Animals Communicate Without Words', '3SL4 (92%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L6 (78%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the range of communication methods animals use and what each one achieves.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Name at least four different communication methods animals use: sound, movement, scent, color, touch
Give one specific example of each method you name, with the animal and what the signal means
Explain how communication serves survival — name two specific functions, such as attracting mates or warning of predators
Describe one animal whose communication system scientists have studied in depth and what they found surprising
End with what studying animal communication reveals about the origins of human language', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Animals Communicate Without Words',
    '{"lesson_name": "How Animals Communicate Without Words", "lesson_description": "3SL4 (92%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L6 (78%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the range of communication methods animals use and what each one achieves."}, {"content_key": "preparation_guidelines", "content_value": "Name at least four different communication methods animals use: sound, movement, scent, color, touch\nGive one specific example of each method you name, with the animal and what the signal means\nExplain how communication serves survival \u2014 name two specific functions, such as attracting mates or warning of predators\nDescribe one animal whose communication system scientists have studied in depth and what they found surprising\nEnd with what studying animal communication reveals about the origins of human language"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 45
  );

  -- Lesson 7: How Plate Tectonics Shapes Earth's Surface
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Plate Tectonics Shapes Earth''s Surface', '3SL4 (92%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/52.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the movement of Earth''s tectonic plates creates mountains, earthquakes, and volcanoes.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain what tectonic plates are and describe how they move — very slowly, over millions of years
Describe what happens when two plates collide, pull apart, or slide past each other — and what landform or event results from each
Explain how the theory of plate tectonics changed scientists'' understanding of why fossils of the same species appear on different continents
Describe how earthquakes and volcanic eruptions are connected to plate movement
Mention one piece of evidence scientists use to track how plates have moved over time
End with one current scientific question about plate tectonics that hasn''t been fully answered', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Plate Tectonics Shapes Earth''s Surface',
    '{"lesson_name": "How Plate Tectonics Shapes Earth''s Surface", "lesson_description": "3SL4 (92%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the movement of Earth''s tectonic plates creates mountains, earthquakes, and volcanoes."}, {"content_key": "preparation_guidelines", "content_value": "Explain what tectonic plates are and describe how they move \u2014 very slowly, over millions of years\nDescribe what happens when two plates collide, pull apart, or slide past each other \u2014 and what landform or event results from each\nExplain how the theory of plate tectonics changed scientists'' understanding of why fossils of the same species appear on different continents\nDescribe how earthquakes and volcanic eruptions are connected to plate movement\nMention one piece of evidence scientists use to track how plates have moved over time\nEnd with one current scientific question about plate tectonics that hasn''t been fully answered"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 53
  );

  -- Lesson 8: Why Equal and Fair Are Not the Same
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Equal and Fair Are Not the Same', '3SL4 (92%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/73.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the distinction between treating people equally and treating them fairly, with concrete examples.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define equality and equity and explain why they lead to different outcomes in practice
Give a concrete example where equal treatment actually produces an unfair result
Explain why some people argue that equity requires knowing more about a person''s situation before deciding how to respond
Describe a real example from school or community where this distinction has mattered — who benefited and how
Explain what critics of equity-based approaches argue — present this honestly
End with your own reasoning about when equal treatment is sufficient and when equity-based approaches are necessary', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Equal and Fair Are Not the Same',
    '{"lesson_name": "Why Equal and Fair Are Not the Same", "lesson_description": "3SL4 (92%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the distinction between treating people equally and treating them fairly, with concrete examples."}, {"content_key": "preparation_guidelines", "content_value": "Define equality and equity and explain why they lead to different outcomes in practice\nGive a concrete example where equal treatment actually produces an unfair result\nExplain why some people argue that equity requires knowing more about a person''s situation before deciding how to respond\nDescribe a real example from school or community where this distinction has mattered \u2014 who benefited and how\nExplain what critics of equity-based approaches argue \u2014 present this honestly\nEnd with your own reasoning about when equal treatment is sufficient and when equity-based approaches are necessary"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 61
  );

  -- Lesson 9: How Memory Works in the Brain
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Memory Works in the Brain', '3SL4 (91%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the process by which the brain forms, stores, and retrieves memories, and what affects memory reliability.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain the difference between short-term and long-term memory and how information moves between them
Describe what happens in the brain during sleep that helps consolidate memories
Explain what affects how well something is remembered: emotion, repetition, meaning, and context
Describe why memory is reconstructive rather than like a recording — how this leads to errors even in honest accounts
Give one example of a situation where memory reliability matters — in learning, in testimony, in relationships
End with one practical strategy for improving memory that is grounded in how the brain actually works', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Memory Works in the Brain',
    '{"lesson_name": "How Memory Works in the Brain", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the process by which the brain forms, stores, and retrieves memories, and what affects memory reliability."}, {"content_key": "preparation_guidelines", "content_value": "Explain the difference between short-term and long-term memory and how information moves between them\nDescribe what happens in the brain during sleep that helps consolidate memories\nExplain what affects how well something is remembered: emotion, repetition, meaning, and context\nDescribe why memory is reconstructive rather than like a recording \u2014 how this leads to errors even in honest accounts\nGive one example of a situation where memory reliability matters \u2014 in learning, in testimony, in relationships\nEnd with one practical strategy for improving memory that is grounded in how the brain actually works"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 69
  );

  -- Lesson 10: How Democracy Functions and Why It's Fragile
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Democracy Functions and Why It''s Fragile', '3SL4 (91%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the key components of a democratic system and what threatens it when those components weaken.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain the core principle of democracy — that legitimate authority comes from the consent of the people
Describe at least three mechanisms that support democracy: free elections, rule of law, freedom of expression, separation of powers
Explain what happens when one of these mechanisms weakens or fails — use a concrete historical or current example
Describe the role citizens play in maintaining democracy — why participation matters beyond voting
Mention one threat to democratic function that young people are particularly positioned to respond to
End with what you think is the most important democratic habit for a person your age to develop and why', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Democracy Functions and Why It''s Fragile',
    '{"lesson_name": "How Democracy Functions and Why It''s Fragile", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the key components of a democratic system and what threatens it when those components weaken."}, {"content_key": "preparation_guidelines", "content_value": "Explain the core principle of democracy \u2014 that legitimate authority comes from the consent of the people\nDescribe at least three mechanisms that support democracy: free elections, rule of law, freedom of expression, separation of powers\nExplain what happens when one of these mechanisms weakens or fails \u2014 use a concrete historical or current example\nDescribe the role citizens play in maintaining democracy \u2014 why participation matters beyond voting\nMention one threat to democratic function that young people are particularly positioned to respond to\nEnd with what you think is the most important democratic habit for a person your age to develop and why"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 77
  );

  -- Lesson 11: How Migration Has Shaped Nations
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Migration Has Shaped Nations', '3SL4 (91%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/47.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the movement of people across borders and regions has shaped the culture, economy, and character of communities.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain the difference between voluntary migration and forced displacement — and give one historical example of each
Describe two specific ways communities are changed by the arrival of new groups of people — positive and challenging
Explain how immigrants and migrants have shaped the culture of a specific nation or city you have studied
Describe the experience from the perspective of someone who migrates — what they carry with them and what they must navigate
Mention one challenge that receiving communities face and one way some communities have responded constructively
End with one lasting contribution to American life that came directly from migration', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Migration Has Shaped Nations',
    '{"lesson_name": "How Migration Has Shaped Nations", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the movement of people across borders and regions has shaped the culture, economy, and character of communities."}, {"content_key": "preparation_guidelines", "content_value": "Explain the difference between voluntary migration and forced displacement \u2014 and give one historical example of each\nDescribe two specific ways communities are changed by the arrival of new groups of people \u2014 positive and challenging\nExplain how immigrants and migrants have shaped the culture of a specific nation or city you have studied\nDescribe the experience from the perspective of someone who migrates \u2014 what they carry with them and what they must navigate\nMention one challenge that receiving communities face and one way some communities have responded constructively\nEnd with one lasting contribution to American life that came directly from migration"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 85
  );

  -- Lesson 12: How Scientists Use Evidence to Change Their Minds
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Scientists Use Evidence to Change Their Minds', '3SL4 (91%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the process scientists use to evaluate, revise, and sometimes abandon theories in the face of new evidence.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain what makes science different from opinion — the role of evidence, testing, and willingness to revise
Describe the peer review process and why having other scientists check your work matters
Give one historical example of a scientific theory that was changed or replaced when better evidence emerged
Explain what scientists do when two well-supported theories contradict each other
Describe what ''replication'' means and why a result that cannot be replicated is treated with skepticism
End with what this way of thinking can teach us about how to be honest in everyday reasoning — not just in labs', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Scientists Use Evidence to Change Their Minds',
    '{"lesson_name": "How Scientists Use Evidence to Change Their Minds", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the process scientists use to evaluate, revise, and sometimes abandon theories in the face of new evidence."}, {"content_key": "preparation_guidelines", "content_value": "Explain what makes science different from opinion \u2014 the role of evidence, testing, and willingness to revise\nDescribe the peer review process and why having other scientists check your work matters\nGive one historical example of a scientific theory that was changed or replaced when better evidence emerged\nExplain what scientists do when two well-supported theories contradict each other\nDescribe what ''replication'' means and why a result that cannot be replicated is treated with skepticism\nEnd with what this way of thinking can teach us about how to be honest in everyday reasoning \u2014 not just in labs"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 93
  );

  -- Lesson 13: What Biodiversity Does for Ecosystems
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Biodiversity Does for Ecosystems', '3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what biodiversity is, how it functions, and why losing it has consequences beyond individual species.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define biodiversity and give one example of a highly biodiverse ecosystem and what makes it that way
Explain how diversity within an ecosystem contributes to its stability and resilience
Describe what happens to an ecosystem when biodiversity is reduced — use one documented example
Explain the concept of a keystone species and how the loss of one can cascade through an entire system
Describe one human activity that reduces biodiversity and one that protects or restores it
End with one argument for protecting biodiversity that goes beyond conservation — making the case in terms of human benefit', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Biodiversity Does for Ecosystems',
    '{"lesson_name": "What Biodiversity Does for Ecosystems", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain what biodiversity is, how it functions, and why losing it has consequences beyond individual species."}, {"content_key": "preparation_guidelines", "content_value": "Define biodiversity and give one example of a highly biodiverse ecosystem and what makes it that way\nExplain how diversity within an ecosystem contributes to its stability and resilience\nDescribe what happens to an ecosystem when biodiversity is reduced \u2014 use one documented example\nExplain the concept of a keystone species and how the loss of one can cascade through an entire system\nDescribe one human activity that reduces biodiversity and one that protects or restores it\nEnd with one argument for protecting biodiversity that goes beyond conservation \u2014 making the case in terms of human benefit"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 101
  );

  -- Lesson 14: How Authors Use Structure to Shape Meaning
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Authors Use Structure to Shape Meaning', '3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the way a text is organized affects how a reader experiences and understands it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe at least three different structural choices an author can make: chronological order, problem-solution, compare-contrast, framing
Explain how beginning a story at the end and working backward changes the reading experience versus reading it in order
Describe how a chapter or section break can create emphasis, suspense, or a shift in perspective
Give one example from a book or text you have read where the structure affected how you understood or felt about the story
Explain what a reader can learn by asking: why did the author organize it this way? What effect was intended?
End with one structural technique you would use in your own writing and what effect you would want it to create', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Authors Use Structure to Shape Meaning',
    '{"lesson_name": "How Authors Use Structure to Shape Meaning", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the way a text is organized affects how a reader experiences and understands it."}, {"content_key": "preparation_guidelines", "content_value": "Describe at least three different structural choices an author can make: chronological order, problem-solution, compare-contrast, framing\nExplain how beginning a story at the end and working backward changes the reading experience versus reading it in order\nDescribe how a chapter or section break can create emphasis, suspense, or a shift in perspective\nGive one example from a book or text you have read where the structure affected how you understood or felt about the story\nExplain what a reader can learn by asking: why did the author organize it this way? What effect was intended?\nEnd with one structural technique you would use in your own writing and what effect you would want it to create"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 109
  );

  -- Lesson 15: How Climate Has Changed Over Earth's History
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Climate Has Changed Over Earth''s History', '3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how Earth''s climate has changed over geological time, what caused those changes, and how scientists know.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe two or three major climate changes in Earth''s history — including ice ages and periods of extreme warmth
Explain the natural causes of past climate change: orbital variations, volcanic eruptions, changes in ocean currents
Describe how scientists reconstruct past climates using ice cores, tree rings, and sediment records
Explain what distinguishes the current period of climate change from previous natural cycles
Mention the key role of the carbon cycle in regulating climate and what disrupts that regulation
End with one thing that studying Earth''s climate history tells us about what to expect in the future — and one uncertainty scientists are still working on', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Climate Has Changed Over Earth''s History',
    '{"lesson_name": "How Climate Has Changed Over Earth''s History", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how Earth''s climate has changed over geological time, what caused those changes, and how scientists know."}, {"content_key": "preparation_guidelines", "content_value": "Describe two or three major climate changes in Earth''s history \u2014 including ice ages and periods of extreme warmth\nExplain the natural causes of past climate change: orbital variations, volcanic eruptions, changes in ocean currents\nDescribe how scientists reconstruct past climates using ice cores, tree rings, and sediment records\nExplain what distinguishes the current period of climate change from previous natural cycles\nMention the key role of the carbon cycle in regulating climate and what disrupts that regulation\nEnd with one thing that studying Earth''s climate history tells us about what to expect in the future \u2014 and one uncertainty scientists are still working on"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 117
  );

  -- Lesson 16: How Perspective Is Built Into Texts
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Perspective Is Built Into Texts', '3SL4 (91%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/57.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the perspective embedded in a text — including nonfiction — shapes what a reader understands.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain what it means for perspective to be embedded in a text — that it is built in, not always obvious
Give one example from a history textbook, news article, or children''s book where word choice reflects a particular viewpoint
Describe what questions a critical reader should ask to identify embedded perspective in any text
Explain the difference between a biased text and one written from a specific but honest perspective
Describe how reading two accounts of the same event from different perspectives changes what you understand about it
End with one specific habit a reader can develop to become more aware of embedded perspective in what they read', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Perspective Is Built Into Texts',
    '{"lesson_name": "How Perspective Is Built Into Texts", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the perspective embedded in a text \u2014 including nonfiction \u2014 shapes what a reader understands."}, {"content_key": "preparation_guidelines", "content_value": "Explain what it means for perspective to be embedded in a text \u2014 that it is built in, not always obvious\nGive one example from a history textbook, news article, or children''s book where word choice reflects a particular viewpoint\nDescribe what questions a critical reader should ask to identify embedded perspective in any text\nExplain the difference between a biased text and one written from a specific but honest perspective\nDescribe how reading two accounts of the same event from different perspectives changes what you understand about it\nEnd with one specific habit a reader can develop to become more aware of embedded perspective in what they read"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 125
  );

  -- Lesson 17: How Trade-offs Shape Every Decision
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Trade-offs Shape Every Decision', '3SL4 (91%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the concept of trade-offs and how they apply to decisions in economics, science, civic life, and daily choices.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define trade-off clearly and explain why every choice involves giving something up, even when the choice seems obviously right
Give one example each from three different domains: a personal decision, a community decision, and a scientific or engineering decision
Explain what happens when decision-makers ignore trade-offs — what kinds of unintended consequences can result
Describe how values affect which trade-offs seem acceptable — why two people can make different choices and both be reasonable
Explain the idea of opportunity cost: what you give up by choosing one option is the cost of that option even if no money changes hands
End with one trade-off you face regularly and how you currently make that choice', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Trade-offs Shape Every Decision',
    '{"lesson_name": "How Trade-offs Shape Every Decision", "lesson_description": "3SL4 (91%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the concept of trade-offs and how they apply to decisions in economics, science, civic life, and daily choices."}, {"content_key": "preparation_guidelines", "content_value": "Define trade-off clearly and explain why every choice involves giving something up, even when the choice seems obviously right\nGive one example each from three different domains: a personal decision, a community decision, and a scientific or engineering decision\nExplain what happens when decision-makers ignore trade-offs \u2014 what kinds of unintended consequences can result\nDescribe how values affect which trade-offs seem acceptable \u2014 why two people can make different choices and both be reasonable\nExplain the idea of opportunity cost: what you give up by choosing one option is the cost of that option even if no money changes hands\nEnd with one trade-off you face regularly and how you currently make that choice"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 133
  );

  -- Lesson 18: How Civic Participation Beyond Voting Shapes Society
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Civic Participation Beyond Voting Shapes Society', '3SL4 (90%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the range of ways citizens participate in civic life beyond elections, and why each one matters.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain why voting is not enough on its own — what gaps it leaves in maintaining a responsive democratic society
Name and describe four specific forms of civic participation beyond voting: community organizing, letter-writing, public comment, serving on committees, journalism
Explain how local-level participation often has more visible impact than national engagement — and why
Describe how young people have influenced school and community policy through organized participation
Explain what barriers make civic participation harder for some groups than others
End with one form of civic participation a person your age could genuinely do this week — and what impact it could have', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Civic Participation Beyond Voting Shapes Society',
    '{"lesson_name": "How Civic Participation Beyond Voting Shapes Society", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the range of ways citizens participate in civic life beyond elections, and why each one matters."}, {"content_key": "preparation_guidelines", "content_value": "Explain why voting is not enough on its own \u2014 what gaps it leaves in maintaining a responsive democratic society\nName and describe four specific forms of civic participation beyond voting: community organizing, letter-writing, public comment, serving on committees, journalism\nExplain how local-level participation often has more visible impact than national engagement \u2014 and why\nDescribe how young people have influenced school and community policy through organized participation\nExplain what barriers make civic participation harder for some groups than others\nEnd with one form of civic participation a person your age could genuinely do this week \u2014 and what impact it could have"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 141
  );

  -- Lesson 19: How the Human Body Responds to Exercise
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How the Human Body Responds to Exercise', '3SL4 (90%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/79.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what happens in the body during and after physical exercise and why these responses matter for health.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe what happens to heart rate, breathing, and blood flow during aerobic exercise and why each change occurs
Explain what muscle fatigue is and what causes it — the buildup of waste products and depletion of fuel
Describe what happens in muscles during the recovery period after exercise — repair and strengthening
Explain the relationship between regular exercise and long-term changes in the cardiovascular system
Mention the connection between physical exercise and brain function — what research shows about movement and cognition
End with one specific type of exercise, its primary physical benefit, and how much of it is needed to produce that benefit', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Human Body Responds to Exercise',
    '{"lesson_name": "How the Human Body Responds to Exercise", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain what happens in the body during and after physical exercise and why these responses matter for health."}, {"content_key": "preparation_guidelines", "content_value": "Describe what happens to heart rate, breathing, and blood flow during aerobic exercise and why each change occurs\nExplain what muscle fatigue is and what causes it \u2014 the buildup of waste products and depletion of fuel\nDescribe what happens in muscles during the recovery period after exercise \u2014 repair and strengthening\nExplain the relationship between regular exercise and long-term changes in the cardiovascular system\nMention the connection between physical exercise and brain function \u2014 what research shows about movement and cognition\nEnd with one specific type of exercise, its primary physical benefit, and how much of it is needed to produce that benefit"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 149
  );

  -- Lesson 20: How the Same Event Can Be Remembered Differently by Different People
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How the Same Event Can Be Remembered Differently by Different People', '3SL4 (90%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/79.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why eyewitness accounts of the same event often differ, and what this reveals about memory and perception.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe how attention works selectively — why two people at the same event will notice different things
Explain how prior beliefs, expectations, and emotions shape what we perceive and what we retain
Describe what research on eyewitness memory has found about reliability — especially in high-stress situations
Explain the concept of memory reconstruction: why remembering is not like playing a recording but like reassembling a scene
Give one example from history, law, or daily life where differing accounts created significant consequences
End with what this understanding means for how we should evaluate accounts of events — including our own', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Same Event Can Be Remembered Differently by Different People',
    '{"lesson_name": "How the Same Event Can Be Remembered Differently by Different People", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (86%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain why eyewitness accounts of the same event often differ, and what this reveals about memory and perception."}, {"content_key": "preparation_guidelines", "content_value": "Describe how attention works selectively \u2014 why two people at the same event will notice different things\nExplain how prior beliefs, expectations, and emotions shape what we perceive and what we retain\nDescribe what research on eyewitness memory has found about reliability \u2014 especially in high-stress situations\nExplain the concept of memory reconstruction: why remembering is not like playing a recording but like reassembling a scene\nGive one example from history, law, or daily life where differing accounts created significant consequences\nEnd with what this understanding means for how we should evaluate accounts of events \u2014 including our own"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 157
  );

  -- Lesson 21: How Language Has Shaped History
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Language Has Shaped History', '3SL4 (89%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/71.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain several ways in which language — written, spoken, and symbolic — has played a decisive role in historical events.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain how the invention of writing changed how knowledge was stored and shared across time and distance
Describe one example of how a speech, document, or text changed the direction of a historical event or movement
Explain how language barriers have contributed to misunderstanding and conflict between groups
Describe how controlling language — what words are used, who is allowed to write, what gets translated — has been used as a form of power
Explain how new technologies (printing press, radio, internet) changed the reach and power of language in history
End with one way you think language shapes history today — even in small, everyday ways', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Language Has Shaped History',
    '{"lesson_name": "How Language Has Shaped History", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain several ways in which language \u2014 written, spoken, and symbolic \u2014 has played a decisive role in historical events."}, {"content_key": "preparation_guidelines", "content_value": "Explain how the invention of writing changed how knowledge was stored and shared across time and distance\nDescribe one example of how a speech, document, or text changed the direction of a historical event or movement\nExplain how language barriers have contributed to misunderstanding and conflict between groups\nDescribe how controlling language \u2014 what words are used, who is allowed to write, what gets translated \u2014 has been used as a form of power\nExplain how new technologies (printing press, radio, internet) changed the reach and power of language in history\nEnd with one way you think language shapes history today \u2014 even in small, everyday ways"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 165
  );

  -- Lesson 22: How Economic Inequality Affects Education
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Economic Inequality Affects Education', '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the connection between economic resources and educational opportunity — and what communities have tried to do about it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define economic inequality in practical terms — what it looks like in a school context
Describe two specific ways that economic differences affect what students have access to in and out of school
Explain how differences in early opportunity can compound over time — why the gap tends to widen
Describe at least one policy or program designed to address educational inequality and explain how it works
Explain the main criticism of that approach — present it fairly
End with one idea — that a student, teacher, school, or community could actually act on — that addresses one root cause of educational inequality', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Economic Inequality Affects Education',
    '{"lesson_name": "How Economic Inequality Affects Education", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L6 (79%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the connection between economic resources and educational opportunity \u2014 and what communities have tried to do about it."}, {"content_key": "preparation_guidelines", "content_value": "Define economic inequality in practical terms \u2014 what it looks like in a school context\nDescribe two specific ways that economic differences affect what students have access to in and out of school\nExplain how differences in early opportunity can compound over time \u2014 why the gap tends to widen\nDescribe at least one policy or program designed to address educational inequality and explain how it works\nExplain the main criticism of that approach \u2014 present it fairly\nEnd with one idea \u2014 that a student, teacher, school, or community could actually act on \u2014 that addresses one root cause of educational inequality"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 173
  );

  -- Lesson 23: How Stories Are Used to Build and Challenge Power
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Stories Are Used to Build and Challenge Power', '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how narratives — in history, media, and culture — can reinforce or challenge existing power structures.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain what it means for a narrative to ''serve power'' — to reinforce the way things are by making it seem natural or inevitable
Give one historical example of an official story that was used to justify something that later came to be seen as unjust
Describe how marginalized communities have used counter-narratives to challenge dominant stories
Explain the role of literature and art in challenging accepted narratives — give one concrete example from something you have read or seen
Describe how individuals can develop critical awareness of the narratives they are given — in textbooks, media, family stories
End with one question a person should ask about any story that claims to explain how things got to be the way they are', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Stories Are Used to Build and Challenge Power',
    '{"lesson_name": "How Stories Are Used to Build and Challenge Power", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R8 (83%) SECONDARY | 3L3 (80%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how narratives \u2014 in history, media, and culture \u2014 can reinforce or challenge existing power structures."}, {"content_key": "preparation_guidelines", "content_value": "Explain what it means for a narrative to ''serve power'' \u2014 to reinforce the way things are by making it seem natural or inevitable\nGive one historical example of an official story that was used to justify something that later came to be seen as unjust\nDescribe how marginalized communities have used counter-narratives to challenge dominant stories\nExplain the role of literature and art in challenging accepted narratives \u2014 give one concrete example from something you have read or seen\nDescribe how individuals can develop critical awareness of the narratives they are given \u2014 in textbooks, media, family stories\nEnd with one question a person should ask about any story that claims to explain how things got to be the way they are"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 181
  );

  -- Lesson 24: How Individuals Have Changed the Direction of History
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Individuals Have Changed the Direction of History', '3SL4 (90%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (85%) SECONDARY | 3L3 (82%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/49.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Examine the role individual people have played in shaping major historical events, and what conditions made their impact possible.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe one individual whose decision or action changed a historical outcome — not a famous leader, but someone less obvious
Explain what conditions made it possible for that person to have an outsized impact at that specific moment
Present the opposing argument: that individuals don''t change history, broader forces do — what is the best version of that argument?
Explain what your own view is, based on evidence — can you hold the tension between both positions?
Describe one young person from history who had a significant impact — what made their contribution possible
End with what this analysis suggests about what ordinary people can accomplish under the right conditions', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Individuals Have Changed the Direction of History',
    '{"lesson_name": "How Individuals Have Changed the Direction of History", "lesson_description": "3SL4 (90%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (85%) SECONDARY | 3L3 (82%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Examine the role individual people have played in shaping major historical events, and what conditions made their impact possible."}, {"content_key": "preparation_guidelines", "content_value": "Describe one individual whose decision or action changed a historical outcome \u2014 not a famous leader, but someone less obvious\nExplain what conditions made it possible for that person to have an outsized impact at that specific moment\nPresent the opposing argument: that individuals don''t change history, broader forces do \u2014 what is the best version of that argument?\nExplain what your own view is, based on evidence \u2014 can you hold the tension between both positions?\nDescribe one young person from history who had a significant impact \u2014 what made their contribution possible\nEnd with what this analysis suggests about what ordinary people can accomplish under the right conditions"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 189
  );

  -- Lesson 25: How Systems Produce Unintended Consequences
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Systems Produce Unintended Consequences', '3SL4 (89%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (85%) SECONDARY | 3L3 (82%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how complex systems — in ecosystems, communities, and institutions — can produce outcomes that no one planned or wanted.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define a complex system and explain what makes it different from a simple chain of cause and effect
Give one well-documented example of a policy or action that produced significant unintended consequences — in ecology, public health, or urban planning
Explain the concept of feedback loops: how outputs of a system circle back as inputs, amplifying or dampening effects
Describe what makes it hard to predict unintended consequences in advance
Explain what strategies — modeling, small-scale trials, careful monitoring — can reduce the risk of serious unintended consequences
End with one lesson this analysis offers for how decisions should be made in complex environments — school, community, or beyond', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Systems Produce Unintended Consequences',
    '{"lesson_name": "How Systems Produce Unintended Consequences", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (85%) SECONDARY | 3L3 (82%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how complex systems \u2014 in ecosystems, communities, and institutions \u2014 can produce outcomes that no one planned or wanted."}, {"content_key": "preparation_guidelines", "content_value": "Define a complex system and explain what makes it different from a simple chain of cause and effect\nGive one well-documented example of a policy or action that produced significant unintended consequences \u2014 in ecology, public health, or urban planning\nExplain the concept of feedback loops: how outputs of a system circle back as inputs, amplifying or dampening effects\nDescribe what makes it hard to predict unintended consequences in advance\nExplain what strategies \u2014 modeling, small-scale trials, careful monitoring \u2014 can reduce the risk of serious unintended consequences\nEnd with one lesson this analysis offers for how decisions should be made in complex environments \u2014 school, community, or beyond"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 197
  );

  -- Lesson 26: How Reading Changes How We Think
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Reading Changes How We Think', '3SL4 (89%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (85%) SECONDARY | 3L3 (82%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/68.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the cognitive and emotional effects of reading — what research and literary experience together show about what reading does to the mind.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Describe what research has found about how reading fiction affects empathy and perspective-taking ability
Explain the difference between reading for information and reading for experience — what each does to the reader
Describe how encountering different lives through literature expands a reader''s model of what is possible
Explain how the form of reading — sustained, deep attention — develops concentration in ways other activities may not
Describe what is lost when reading is replaced by shorter, faster media consumption
End with one specific argument for why fiction belongs in school — based on cognitive evidence, not just cultural tradition', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Reading Changes How We Think',
    '{"lesson_name": "How Reading Changes How We Think", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (87%) SECONDARY | 3R8 (85%) SECONDARY | 3L3 (82%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain the cognitive and emotional effects of reading \u2014 what research and literary experience together show about what reading does to the mind."}, {"content_key": "preparation_guidelines", "content_value": "Describe what research has found about how reading fiction affects empathy and perspective-taking ability\nExplain the difference between reading for information and reading for experience \u2014 what each does to the reader\nDescribe how encountering different lives through literature expands a reader''s model of what is possible\nExplain how the form of reading \u2014 sustained, deep attention \u2014 develops concentration in ways other activities may not\nDescribe what is lost when reading is replaced by shorter, faster media consumption\nEnd with one specific argument for why fiction belongs in school \u2014 based on cognitive evidence, not just cultural tradition"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 205
  );

  -- Lesson 27: What Justice Requires — Beyond Following Rules
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Justice Requires — Beyond Following Rules', '3SL4 (89%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/74.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Examine the difference between rule-following and just behavior, and argue for what justice actually requires of a person.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain the difference between legal and moral — something can be one without the other; give examples of each
Describe a historical case where following the law was not the just thing to do, and where breaking it was
Explain the concept of moral courage: acting justly when it is inconvenient or costly to do so
Describe what justice requires in relationships and communities, not just legal systems — give concrete examples a student would recognize
Explain why justice sometimes requires active response rather than passive non-harm
End with one principle of justice you personally hold and one situation in your daily life where it is genuinely difficult to act on it', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Justice Requires — Beyond Following Rules',
    '{"lesson_name": "What Justice Requires \u2014 Beyond Following Rules", "lesson_description": "3SL4 (89%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Examine the difference between rule-following and just behavior, and argue for what justice actually requires of a person."}, {"content_key": "preparation_guidelines", "content_value": "Explain the difference between legal and moral \u2014 something can be one without the other; give examples of each\nDescribe a historical case where following the law was not the just thing to do, and where breaking it was\nExplain the concept of moral courage: acting justly when it is inconvenient or costly to do so\nDescribe what justice requires in relationships and communities, not just legal systems \u2014 give concrete examples a student would recognize\nExplain why justice sometimes requires active response rather than passive non-harm\nEnd with one principle of justice you personally hold and one situation in your daily life where it is genuinely difficult to act on it"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 213
  );

  -- Lesson 28: How Scientific Models Are Built and Revised
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Scientific Models Are Built and Revised', '3SL4 (88%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how scientists build models to represent reality, and how those models are tested, refined, and sometimes replaced.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Define a scientific model and give two examples — one simple (like a food web diagram) and one complex (like a climate model)
Explain what makes a model useful: simplification, testability, predictive power
Describe how models are tested against data and what happens when a model''s predictions don''t match observations
Give one historical example of a model that was replaced by a better one when evidence demanded it
Explain the difference between a model being wrong and being incomplete — most models are the latter
End with one current scientific model that is under active development and what scientists are trying to refine about it', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Scientific Models Are Built and Revised',
    '{"lesson_name": "How Scientific Models Are Built and Revised", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain how scientists build models to represent reality, and how those models are tested, refined, and sometimes replaced."}, {"content_key": "preparation_guidelines", "content_value": "Define a scientific model and give two examples \u2014 one simple (like a food web diagram) and one complex (like a climate model)\nExplain what makes a model useful: simplification, testability, predictive power\nDescribe how models are tested against data and what happens when a model''s predictions don''t match observations\nGive one historical example of a model that was replaced by a better one when evidence demanded it\nExplain the difference between a model being wrong and being incomplete \u2014 most models are the latter\nEnd with one current scientific model that is under active development and what scientists are trying to refine about it"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 221
  );

  -- Lesson 29: Why Freedom of Expression Has Limits — and Why Those Limits Are Hard to Draw
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Why Freedom of Expression Has Limits — and Why Those Limits Are Hard to Draw', '3SL4 (88%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (85%) SECONDARY | 3L3 (82%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Examine why freedom of expression is valued in democratic societies, why it is not absolute, and what makes drawing its limits genuinely difficult.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain why freedom of expression is considered fundamental in democratic societies — what it protects and why
Describe two widely accepted limits on expression — speech that causes immediate harm, for example — and explain the reasoning
Explain where the genuinely hard cases are: expression that is hurtful but not physically dangerous, satire, misinformation
Describe the tension between protecting expression and protecting people from harm — present both sides honestly
Explain who gets to decide what expression crosses a line — and what concerns arise from different answers to that question
End with one principle you think should guide where the line is drawn, and one case where even that principle would be hard to apply', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Why Freedom of Expression Has Limits — and Why Those Limits Are Hard to Draw',
    '{"lesson_name": "Why Freedom of Expression Has Limits \u2014 and Why Those Limits Are Hard to Draw", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (85%) SECONDARY | 3L3 (82%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Examine why freedom of expression is valued in democratic societies, why it is not absolute, and what makes drawing its limits genuinely difficult."}, {"content_key": "preparation_guidelines", "content_value": "Explain why freedom of expression is considered fundamental in democratic societies \u2014 what it protects and why\nDescribe two widely accepted limits on expression \u2014 speech that causes immediate harm, for example \u2014 and explain the reasoning\nExplain where the genuinely hard cases are: expression that is hurtful but not physically dangerous, satire, misinformation\nDescribe the tension between protecting expression and protecting people from harm \u2014 present both sides honestly\nExplain who gets to decide what expression crosses a line \u2014 and what concerns arise from different answers to that question\nEnd with one principle you think should guide where the line is drawn, and one case where even that principle would be hard to apply"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 229
  );

  -- Lesson 30: How Communities Repair After Conflict
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Communities Repair After Conflict', '3SL4 (88%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY', 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72',
    'HARD', 'Informative Presentation', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain what restorative approaches to community repair involve, how they differ from punitive responses, and what conditions allow them to succeed.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Explain the difference between punitive approaches to conflict — punishment, exclusion — and restorative ones that focus on repair and accountability
Describe the core elements of a restorative process: acknowledging harm, understanding impact, making amends, rebuilding trust
Give one example of a community or school that has used restorative practices and what the outcome was
Explain what critics of restorative approaches argue — present this fairly and specifically
Describe what conditions are necessary for restorative approaches to work — what happens when those conditions are missing
End with one principle from restorative approaches that you think could be applied in a classroom tomorrow, and how you would do it', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Communities Repair After Conflict',
    '{"lesson_name": "How Communities Repair After Conflict", "lesson_description": "3SL4 (88%) PRIMARY | 3W2 (86%) SECONDARY | 3R8 (84%) SECONDARY | 3L3 (81%) SECONDARY", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Informative Presentation", "contents": [{"content_key": "topic_overview", "content_value": "Explain what restorative approaches to community repair involve, how they differ from punitive responses, and what conditions allow them to succeed."}, {"content_key": "preparation_guidelines", "content_value": "Explain the difference between punitive approaches to conflict \u2014 punishment, exclusion \u2014 and restorative ones that focus on repair and accountability\nDescribe the core elements of a restorative process: acknowledging harm, understanding impact, making amends, rebuilding trust\nGive one example of a community or school that has used restorative practices and what the outcome was\nExplain what critics of restorative approaches argue \u2014 present this fairly and specifically\nDescribe what conditions are necessary for restorative approaches to work \u2014 what happens when those conditions are missing\nEnd with one principle from restorative approaches that you think could be applied in a classroom tomorrow, and how you would do it"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Informative Presentation', 3, NULL, 'HARD', 237
  );

END $$;
