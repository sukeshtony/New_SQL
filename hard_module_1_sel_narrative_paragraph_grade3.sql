-- =====================================================
-- Module 1: SEL Narrative Paragraph - Grade 3 (30 Lessons) [HARD]
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Training Module: 1c83484e-7cf1-4e26-8503-62cff6d07789
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

  -- Lesson 1: The Seat She Didn't Expect
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Seat She Didn''t Expect', '3R3 (95%) PRIMARY | 3R2 (86%) SECONDARY | 3R1 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'On the first day back from winter break, the classroom seats had been rearranged, and Priya found herself next to a girl named Ama who she had noticed but never spoken to. For the first few minutes, Priya kept her eyes on the board, uncertain how to begin. Then Ama leaned over quietly and asked if she could borrow an eraser, and when Priya handed it over, Ama said, ''Yours is better than mine — mine leaves gray marks.'' Priya laughed before she could think about it. By lunch, they had discovered they both disliked the same breakfast foods and loved the same book series. Walking home, Priya thought about how many people she had sat near for years and simply never spoken to. She was not sure what had stopped her before — some combination of habit and assumption — but she understood, with the particular clarity that new things sometimes bring, that the next conversation was always easier to start than the first one. SEL Focus: Social courage, Openness, Discovery New York ELA Standards: 3R3, 3R2, 3R1', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Seat She Didn''t Expect',
    '{"lesson_name": "The Seat She Didn''t Expect", "lesson_description": "3R3 (95%) PRIMARY | 3R2 (86%) SECONDARY | 3R1 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "On the first day back from winter break, the classroom seats had been rearranged, and Priya found herself next to a girl named Ama who she had noticed but never spoken to. For the first few minutes, Priya kept her eyes on the board, uncertain how to begin. Then Ama leaned over quietly and asked if she could borrow an eraser, and when Priya handed it over, Ama said, ''Yours is better than mine \u2014 mine leaves gray marks.'' Priya laughed before she could think about it. By lunch, they had discovered they both disliked the same breakfast foods and loved the same book series. Walking home, Priya thought about how many people she had sat near for years and simply never spoken to. She was not sure what had stopped her before \u2014 some combination of habit and assumption \u2014 but she understood, with the particular clarity that new things sometimes bring, that the next conversation was always easier to start than the first one. SEL Focus: Social courage, Openness, Discovery New York ELA Standards: 3R3, 3R2, 3R1"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 1
  );

  -- Lesson 2: The Moment Before
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Moment Before', '3R3 (95%) PRIMARY | 3R2 (86%) SECONDARY | 3R1 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/42.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Standing in the hallway outside the auditorium, waiting for her name to be called for the poetry recitation, Zara felt the familiar flutter of nerves settle somewhere beneath her ribs. She had practiced her poem forty-seven times — she had counted — and could recite it in the dark. She knew she knew it. But knowing something and trusting that knowing were two separate sensations, and she was still learning to close the distance between them. When the door opened and her teacher beckoned, Zara squared her shoulders, not because it made her feel braver, but because it was the posture she had practiced along with the words. She walked to the front, found a point just above the audience''s heads, and began. The poem came out steadily, the way practiced things do — not perfectly, but honestly. When she finished, the applause felt less like approval and more like relief, and the relief, she realized, was entirely her own. SEL Focus: Preparation, Trusting your practice, Self-efficacy', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Moment Before',
    '{"lesson_name": "The Moment Before", "lesson_description": "3R3 (95%) PRIMARY | 3R2 (86%) SECONDARY | 3R1 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Standing in the hallway outside the auditorium, waiting for her name to be called for the poetry recitation, Zara felt the familiar flutter of nerves settle somewhere beneath her ribs. She had practiced her poem forty-seven times \u2014 she had counted \u2014 and could recite it in the dark. She knew she knew it. But knowing something and trusting that knowing were two separate sensations, and she was still learning to close the distance between them. When the door opened and her teacher beckoned, Zara squared her shoulders, not because it made her feel braver, but because it was the posture she had practiced along with the words. She walked to the front, found a point just above the audience''s heads, and began. The poem came out steadily, the way practiced things do \u2014 not perfectly, but honestly. When she finished, the applause felt less like approval and more like relief, and the relief, she realized, was entirely her own. SEL Focus: Preparation, Trusting your practice, Self-efficacy"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 9
  );

  -- Lesson 3: A Rainy Recess
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Rainy Recess', '3R3 (94%) PRIMARY | 3R2 (85%) SECONDARY | 3R1 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'When the rain arrived just before recess and the class was redirected to the library instead of the playground, Marcus felt the small, familiar drop of disappointment. He had planned to finish a game with friends. But the librarian, without making a fuss, had laid out three tables of materials — blank books to illustrate, a puzzle of the solar system with several pieces missing by design, and a collection of illustrated atlases for browsing. Marcus sat down in front of an atlas and opened it to a random page — the Gobi Desert, which he had never thought about before. By the time the bell rang, he had spent thirty-five minutes reading about a place he could not have located the previous hour. He didn''t tell anyone it had been his favorite recess of the month, because he was not entirely sure they would understand. But walking back to the classroom, he carried the word Gobi like a small discovery in his coat pocket. SEL Focus: Adaptability, Unexpected discovery, Curiosity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Rainy Recess',
    '{"lesson_name": "A Rainy Recess", "lesson_description": "3R3 (94%) PRIMARY | 3R2 (85%) SECONDARY | 3R1 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "When the rain arrived just before recess and the class was redirected to the library instead of the playground, Marcus felt the small, familiar drop of disappointment. He had planned to finish a game with friends. But the librarian, without making a fuss, had laid out three tables of materials \u2014 blank books to illustrate, a puzzle of the solar system with several pieces missing by design, and a collection of illustrated atlases for browsing. Marcus sat down in front of an atlas and opened it to a random page \u2014 the Gobi Desert, which he had never thought about before. By the time the bell rang, he had spent thirty-five minutes reading about a place he could not have located the previous hour. He didn''t tell anyone it had been his favorite recess of the month, because he was not entirely sure they would understand. But walking back to the classroom, he carried the word Gobi like a small discovery in his coat pocket. SEL Focus: Adaptability, Unexpected discovery, Curiosity"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 17
  );

  -- Lesson 4: Asking
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Asking', '3R3 (94%) PRIMARY | 3R2 (85%) SECONDARY | 3R1 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/40.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Sofia had been confused about fractions for two weeks — not the simple ones, but the ones where you compared different denominators, which seemed to her like a puzzle missing several pieces. She had tried to work it out from her notes, from the textbook, and from watching her tablemates, none of which had fully worked. The idea of raising her hand and admitting she didn''t understand something the rest of the class appeared to have absorbed made her stomach tighten in the particular way that had more to do with pride than with fear. On Thursday, after everyone else had gone to lunch, she stayed and said simply, ''I don''t understand the comparing part.'' Her teacher sat down across from her and worked through three problems, slowly, using fraction bars instead of numbers alone. Something clicked — not all at once, but in the way that real understanding arrives, one layer settling into place and then another. Sofia left the classroom three minutes late for lunch and did not mind at all. SEL Focus: Intellectual courage, Asking for help, Pride and its costs', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Asking',
    '{"lesson_name": "Asking", "lesson_description": "3R3 (94%) PRIMARY | 3R2 (85%) SECONDARY | 3R1 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Sofia had been confused about fractions for two weeks \u2014 not the simple ones, but the ones where you compared different denominators, which seemed to her like a puzzle missing several pieces. She had tried to work it out from her notes, from the textbook, and from watching her tablemates, none of which had fully worked. The idea of raising her hand and admitting she didn''t understand something the rest of the class appeared to have absorbed made her stomach tighten in the particular way that had more to do with pride than with fear. On Thursday, after everyone else had gone to lunch, she stayed and said simply, ''I don''t understand the comparing part.'' Her teacher sat down across from her and worked through three problems, slowly, using fraction bars instead of numbers alone. Something clicked \u2014 not all at once, but in the way that real understanding arrives, one layer settling into place and then another. Sofia left the classroom three minutes late for lunch and did not mind at all. SEL Focus: Intellectual courage, Asking for help, Pride and its costs"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 25
  );

  -- Lesson 5: The Thing She Didn't Know She Could Do
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Thing She Didn''t Know She Could Do', '3R3 (94%) PRIMARY | 3R2 (85%) SECONDARY | 3R6 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/79.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During the class science demonstration, the teacher asked for a volunteer to describe what was happening inside the sealed jar as the candle burned out. No one raised a hand immediately. Then Nadia, whose hand was usually the last to go up, found herself thinking she actually knew — she had read about combustion in a book she had borrowed from the public library, not because of school but because the cover had interested her. She raised her hand carefully, as if testing whether it would stay up on its own. Her teacher called on her. Nadia described what was happening — the oxygen depleting, the flame responding — and her teacher said, ''That''s exactly right, and that''s a word we won''t use until fourth grade.'' Nadia found this genuinely interesting: knowledge she had gathered for her own pleasure had turned out to be genuinely useful in a setting she hadn''t anticipated. That overlap between curiosity and competence was something she wanted to find again. SEL Focus: Unexpected competence, Intrinsic learning, Confidence', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Thing She Didn''t Know She Could Do',
    '{"lesson_name": "The Thing She Didn''t Know She Could Do", "lesson_description": "3R3 (94%) PRIMARY | 3R2 (85%) SECONDARY | 3R6 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "During the class science demonstration, the teacher asked for a volunteer to describe what was happening inside the sealed jar as the candle burned out. No one raised a hand immediately. Then Nadia, whose hand was usually the last to go up, found herself thinking she actually knew \u2014 she had read about combustion in a book she had borrowed from the public library, not because of school but because the cover had interested her. She raised her hand carefully, as if testing whether it would stay up on its own. Her teacher called on her. Nadia described what was happening \u2014 the oxygen depleting, the flame responding \u2014 and her teacher said, ''That''s exactly right, and that''s a word we won''t use until fourth grade.'' Nadia found this genuinely interesting: knowledge she had gathered for her own pleasure had turned out to be genuinely useful in a setting she hadn''t anticipated. That overlap between curiosity and competence was something she wanted to find again. SEL Focus: Unexpected competence, Intrinsic learning, Confidence"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 33
  );

  -- Lesson 6: Noticing
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Noticing', '3R3 (93%) PRIMARY | 3R2 (84%) SECONDARY | 3SL4 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The walk between the bus stop and the front door of the school was three minutes and fourteen seconds — Felix had timed it once on a slow day — and he had made that walk more than one hundred times without paying much attention to it. Then one October morning, arriving slightly earlier than usual, he noticed: the way the low autumn light caught the metal flagpole and sent a slender stripe of brightness across the pavement; the particular smell of cold air meeting cafeteria warmth through a propped kitchen door; the exact sound of a hundred conversations beginning at once as students arrived from every direction. He stood still for a moment in the middle of it all and felt something he didn''t have an immediate word for — a kind of gentle astonishment that so much was happening all the time in places he walked through without looking. He was late getting inside. He decided some mornings were worth being late for. SEL Focus: Mindfulness, Gratitude, The richness of ordinary things', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noticing',
    '{"lesson_name": "Noticing", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (84%) SECONDARY | 3SL4 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "The walk between the bus stop and the front door of the school was three minutes and fourteen seconds \u2014 Felix had timed it once on a slow day \u2014 and he had made that walk more than one hundred times without paying much attention to it. Then one October morning, arriving slightly earlier than usual, he noticed: the way the low autumn light caught the metal flagpole and sent a slender stripe of brightness across the pavement; the particular smell of cold air meeting cafeteria warmth through a propped kitchen door; the exact sound of a hundred conversations beginning at once as students arrived from every direction. He stood still for a moment in the middle of it all and felt something he didn''t have an immediate word for \u2014 a kind of gentle astonishment that so much was happening all the time in places he walked through without looking. He was late getting inside. He decided some mornings were worth being late for. SEL Focus: Mindfulness, Gratitude, The richness of ordinary things"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 41
  );

  -- Lesson 7: The Practice That Finally Worked
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Practice That Finally Worked', '3R3 (94%) PRIMARY | 3R2 (86%) SECONDARY | 3-5L1 (78%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'For six weeks, Camille had been trying to learn to juggle three balls, which was harder than every video she had watched had suggested. She had dropped them approximately eight hundred times — this was not an exaggeration — and had developed a particular relationship with failure that she could only describe as exhausted familiarity. On a Tuesday afternoon in November, something shifted. She could not identify the precise moment or the adjustment that made the difference; she only knew that the three balls were suddenly moving in the arc she had been reaching for, and she was catching them without thinking, and the catching was happening because of thousands of drops that had built something in her hands and her timing she hadn''t been able to build by watching. She kept going for four minutes straight before stopping. She did not run to show anyone immediately. She stood in her room and let the quiet of it sink in — the particular satisfaction of something earned through repetition that no shortcut could have given her. SEL Focus: Perseverance, Earned skill, The satisfaction of practice', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Practice That Finally Worked',
    '{"lesson_name": "The Practice That Finally Worked", "lesson_description": "3R3 (94%) PRIMARY | 3R2 (86%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "For six weeks, Camille had been trying to learn to juggle three balls, which was harder than every video she had watched had suggested. She had dropped them approximately eight hundred times \u2014 this was not an exaggeration \u2014 and had developed a particular relationship with failure that she could only describe as exhausted familiarity. On a Tuesday afternoon in November, something shifted. She could not identify the precise moment or the adjustment that made the difference; she only knew that the three balls were suddenly moving in the arc she had been reaching for, and she was catching them without thinking, and the catching was happening because of thousands of drops that had built something in her hands and her timing she hadn''t been able to build by watching. She kept going for four minutes straight before stopping. She did not run to show anyone immediately. She stood in her room and let the quiet of it sink in \u2014 the particular satisfaction of something earned through repetition that no shortcut could have given her. SEL Focus: Perseverance, Earned skill, The satisfaction of practice"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 49
  );

  -- Lesson 8: What He Did Without Thinking
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What He Did Without Thinking', '3R3 (93%) PRIMARY | 3R2 (86%) SECONDARY | 3R6 (82%) SECONDARY | 3-5L1 (78%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During partner reading, Tariq said something he had not planned — his partner had stumbled over a word and Tariq, without thinking, provided it gently, the way you might hand someone something they had dropped. His partner said thank you, barely, and kept reading. But something small had happened in the exchange that Tariq noticed only later: he had helped without making it a thing, without the kind of over-helpfulness that sometimes made the helped person feel worse rather than better. It was a minor kindness, unremarkable by most measures, and Tariq knew it. But he found himself thinking about it on the walk home in the way you sometimes thought about small things that turned out to be right — not because they were impressive, but because they were the correct size for the situation. He wanted to be the kind of person who found the right size more often. That seemed like a reasonable thing to practice. SEL Focus: Instinctive kindness, Right-sized helping, Self-aspiration', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What He Did Without Thinking',
    '{"lesson_name": "What He Did Without Thinking", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (86%) SECONDARY | 3R6 (82%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "During partner reading, Tariq said something he had not planned \u2014 his partner had stumbled over a word and Tariq, without thinking, provided it gently, the way you might hand someone something they had dropped. His partner said thank you, barely, and kept reading. But something small had happened in the exchange that Tariq noticed only later: he had helped without making it a thing, without the kind of over-helpfulness that sometimes made the helped person feel worse rather than better. It was a minor kindness, unremarkable by most measures, and Tariq knew it. But he found himself thinking about it on the walk home in the way you sometimes thought about small things that turned out to be right \u2014 not because they were impressive, but because they were the correct size for the situation. He wanted to be the kind of person who found the right size more often. That seemed like a reasonable thing to practice. SEL Focus: Instinctive kindness, Right-sized helping, Self-aspiration"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 57
  );

  -- Lesson 9: She Changed Her Mind
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'She Changed Her Mind', '3R1 (94%) PRIMARY | 3R3 (87%) SECONDARY | 3R2 (84%) SECONDARY | 3R6 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During the class discussion on whether the book''s main character had made the right choice, Simone had been certain of her position since the first page of the chapter. She had thought about it, she had evidence, and she was prepared. Then Eli read a sentence aloud that Simone had read but, she realized, had not absorbed — a single line three pages earlier that the character had said almost in parentheses. Simone read it again. It changed the context of the decision in a way her original interpretation hadn''t accounted for. She sat with this for a moment. Then she raised her hand and said, ''I want to revise what I said earlier.'' Her teacher paused and said something Simone wrote in her notebook that evening: ''Changing your analysis when you find better evidence is not weakness. It''s the whole point.'' Simone thought it was also, quietly, one of the bravest things a person could do in a classroom — to say in public that you had moved. SEL Focus: Intellectual flexibility, Evidence-based revision, Courage of honesty', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'She Changed Her Mind',
    '{"lesson_name": "She Changed Her Mind", "lesson_description": "3R1 (94%) PRIMARY | 3R3 (87%) SECONDARY | 3R2 (84%) SECONDARY | 3R6 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "During the class discussion on whether the book''s main character had made the right choice, Simone had been certain of her position since the first page of the chapter. She had thought about it, she had evidence, and she was prepared. Then Eli read a sentence aloud that Simone had read but, she realized, had not absorbed \u2014 a single line three pages earlier that the character had said almost in parentheses. Simone read it again. It changed the context of the decision in a way her original interpretation hadn''t accounted for. She sat with this for a moment. Then she raised her hand and said, ''I want to revise what I said earlier.'' Her teacher paused and said something Simone wrote in her notebook that evening: ''Changing your analysis when you find better evidence is not weakness. It''s the whole point.'' Simone thought it was also, quietly, one of the bravest things a person could do in a classroom \u2014 to say in public that you had moved. SEL Focus: Intellectual flexibility, Evidence-based revision, Courage of honesty"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 65
  );

  -- Lesson 10: The Group She Hadn't Expected
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Group She Hadn''t Expected', '3R3 (93%) PRIMARY | 3R2 (86%) SECONDARY | 3R9 (82%) SECONDARY | 3R6 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Layla had been quietly skeptical about the group project assignment. She had worked with this particular combination of classmates before and retained a specific memory of things going sideways. But this time, something was different from the first session: James, who usually went quiet in groups, had written a list of everyone''s strengths before they started and suggested roles accordingly. It was a small thing, but it changed the temperature of the room immediately. People settled into the work instead of circling it. By the third meeting, Layla found herself surprised — not only by what they were producing, though that was going well, but by how much she was enjoying the process of making it. She had not expected to enjoy it. That unexpected enjoyment was worth noticing. She revised her assumption about this group, and then quietly revised her assumption about the value of revising assumptions — which, she realized, was itself a kind of improvement. SEL Focus: Revised expectations, Collaboration, Openness to being wrong', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Group She Hadn''t Expected',
    '{"lesson_name": "The Group She Hadn''t Expected", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (86%) SECONDARY | 3R9 (82%) SECONDARY | 3R6 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Layla had been quietly skeptical about the group project assignment. She had worked with this particular combination of classmates before and retained a specific memory of things going sideways. But this time, something was different from the first session: James, who usually went quiet in groups, had written a list of everyone''s strengths before they started and suggested roles accordingly. It was a small thing, but it changed the temperature of the room immediately. People settled into the work instead of circling it. By the third meeting, Layla found herself surprised \u2014 not only by what they were producing, though that was going well, but by how much she was enjoying the process of making it. She had not expected to enjoy it. That unexpected enjoyment was worth noticing. She revised her assumption about this group, and then quietly revised her assumption about the value of revising assumptions \u2014 which, she realized, was itself a kind of improvement. SEL Focus: Revised expectations, Collaboration, Openness to being wrong"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 73
  );

  -- Lesson 11: The Question She Asked a Stranger
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Question She Asked a Stranger', '3R3 (93%) PRIMARY | 3R2 (85%) SECONDARY | 3R9 (82%) SECONDARY | 3-5L1 (78%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During the school''s community garden day, Priya found herself working beside an elderly neighbor she had seen on her block for years but never spoken to. The woman was transplanting seedlings with a precision that Priya found remarkable — each one placed with what seemed like genuine consideration for its neighbors. Priya asked, without overthinking it, ''How do you know where to put each one?'' The woman looked up, seeming pleased by the question. She explained about sunlight and root competition and which plants preferred certain soil conditions. They talked for twenty minutes. Walking home, Priya thought about how many questions she had not asked in her life because the person they were directed at was a stranger, or seemed busy, or she wasn''t certain the question would be welcome. She found herself counting them — questions about jobs, about plants, about how things worked that she had swallowed rather than offered. She decided that curiosity, extended politely, was almost always received better than she had assumed. She had been holding back questions unnecessarily for years, and with that understanding, she intended to stop. SEL Focus: Curiosity, Cross-generational connection, Overcoming hesitation', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Question She Asked a Stranger',
    '{"lesson_name": "The Question She Asked a Stranger", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (85%) SECONDARY | 3R9 (82%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "During the school''s community garden day, Priya found herself working beside an elderly neighbor she had seen on her block for years but never spoken to. The woman was transplanting seedlings with a precision that Priya found remarkable \u2014 each one placed with what seemed like genuine consideration for its neighbors. Priya asked, without overthinking it, ''How do you know where to put each one?'' The woman looked up, seeming pleased by the question. She explained about sunlight and root competition and which plants preferred certain soil conditions. They talked for twenty minutes. Walking home, Priya thought about how many questions she had not asked in her life because the person they were directed at was a stranger, or seemed busy, or she wasn''t certain the question would be welcome. She found herself counting them \u2014 questions about jobs, about plants, about how things worked that she had swallowed rather than offered. She decided that curiosity, extended politely, was almost always received better than she had assumed. She had been holding back questions unnecessarily for years, and with that understanding, she intended to stop. SEL Focus: Curiosity, Cross-generational connection, Overcoming hesitation"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 81
  );

  -- Lesson 12: The Classmate He'd Had Wrong
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Classmate He''d Had Wrong', '3R3 (92%) PRIMARY | 3R6 (86%) SECONDARY | 3R2 (84%) SECONDARY | 3R9 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'For most of the first semester, Felix had assumed he knew what kind of student Jonah was — quiet, careful, not particularly invested. Then, during the unit on bridges, Jonah spent an entire lunch period constructing a suspension model from materials no one else had thought to bring, and during the presentation he explained the physics of tension and compression with a fluency that stopped the room. Felix sat in the audience recalibrating everything he thought he had observed. He had mistaken quietness for absence. He had read a surface and stopped there. After class, Felix said honestly, ''I didn''t know you knew all that.'' Jonah smiled and said, ''I know a lot about several things. Most of them don''t come up often.'' Felix found this genuinely interesting — the idea that every person he passed in the hallway was carrying considerable knowledge he hadn''t had a conversation to unlock. He started paying different attention after that. SEL Focus: Overcoming assumptions, Curiosity about people, Depth beneath the surface', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Classmate He''d Had Wrong',
    '{"lesson_name": "The Classmate He''d Had Wrong", "lesson_description": "3R3 (92%) PRIMARY | 3R6 (86%) SECONDARY | 3R2 (84%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "For most of the first semester, Felix had assumed he knew what kind of student Jonah was \u2014 quiet, careful, not particularly invested. Then, during the unit on bridges, Jonah spent an entire lunch period constructing a suspension model from materials no one else had thought to bring, and during the presentation he explained the physics of tension and compression with a fluency that stopped the room. Felix sat in the audience recalibrating everything he thought he had observed. He had mistaken quietness for absence. He had read a surface and stopped there. After class, Felix said honestly, ''I didn''t know you knew all that.'' Jonah smiled and said, ''I know a lot about several things. Most of them don''t come up often.'' Felix found this genuinely interesting \u2014 the idea that every person he passed in the hallway was carrying considerable knowledge he hadn''t had a conversation to unlock. He started paying different attention after that. SEL Focus: Overcoming assumptions, Curiosity about people, Depth beneath the surface"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 89
  );

  -- Lesson 13: The Afternoon in the Library
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Afternoon in the Library', '3R3 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R1 (82%) SECONDARY | 3L3 (78%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/35.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Sofia hadn''t planned to spend the whole afternoon in the library — she had intended to return one book and leave — but the librarian had placed a display on weather phenomena near the exit, and something about the one on thunderstorm formation caught her eye. She sat down in the nearest chair and began reading, expecting to skim a few pages. An hour later, she had read forty pages without noticing the time pass. Outside the library windows, the afternoon light had shifted from gold to grey. She closed the book reluctantly, noted the page, and checked it out. Walking home, she thought about what it felt like to be genuinely absorbed in something — that quality of attention that felt nothing like the effort she applied to difficult things and everything like discovery. She wanted more afternoons like this one — afternoons that expanded into something larger than they had started as. She thought she could probably arrange them, if she decided to. The library was three blocks from her house. She had, she realized, been underusing a resource that had been available to her the whole time. SEL Focus: Deep curiosity, The joy of absorption, Self-knowledge', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Afternoon in the Library',
    '{"lesson_name": "The Afternoon in the Library", "lesson_description": "3R3 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R1 (82%) SECONDARY | 3L3 (78%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Sofia hadn''t planned to spend the whole afternoon in the library \u2014 she had intended to return one book and leave \u2014 but the librarian had placed a display on weather phenomena near the exit, and something about the one on thunderstorm formation caught her eye. She sat down in the nearest chair and began reading, expecting to skim a few pages. An hour later, she had read forty pages without noticing the time pass. Outside the library windows, the afternoon light had shifted from gold to grey. She closed the book reluctantly, noted the page, and checked it out. Walking home, she thought about what it felt like to be genuinely absorbed in something \u2014 that quality of attention that felt nothing like the effort she applied to difficult things and everything like discovery. She wanted more afternoons like this one \u2014 afternoons that expanded into something larger than they had started as. She thought she could probably arrange them, if she decided to. The library was three blocks from her house. She had, she realized, been underusing a resource that had been available to her the whole time. SEL Focus: Deep curiosity, The joy of absorption, Self-knowledge"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 97
  );

  -- Lesson 14: Finishing Alone
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Finishing Alone', '3R3 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R6 (82%) SECONDARY | 3-5L1 (77%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'When the rest of her group left the classroom project early to make it to the assembly, Nadia stayed behind to add the final labels to their map. She had not been asked to stay; she had volunteered, without making a point of it, because the labels mattered and someone had to finish them. The room was quiet in a way it rarely was during the school day — the productive quiet of a space built for learning, emptied of everyone but her. She worked carefully, pressing each label into its exact position, making sure the font size was consistent across all thirty entries. When she stepped back to look at the completed map, something in her chest settled with a quiet rightness. Not pride, exactly — it was too calm for that — but the deep satisfaction that came from finishing something well, especially when no one was watching. She turned off the lights and caught up to her class, carrying that satisfaction with her. SEL Focus: Quiet responsibility, Intrinsic satisfaction, Doing it right without audience', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finishing Alone',
    '{"lesson_name": "Finishing Alone", "lesson_description": "3R3 (92%) PRIMARY | 3R2 (85%) SECONDARY | 3R6 (82%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "When the rest of her group left the classroom project early to make it to the assembly, Nadia stayed behind to add the final labels to their map. She had not been asked to stay; she had volunteered, without making a point of it, because the labels mattered and someone had to finish them. The room was quiet in a way it rarely was during the school day \u2014 the productive quiet of a space built for learning, emptied of everyone but her. She worked carefully, pressing each label into its exact position, making sure the font size was consistent across all thirty entries. When she stepped back to look at the completed map, something in her chest settled with a quiet rightness. Not pride, exactly \u2014 it was too calm for that \u2014 but the deep satisfaction that came from finishing something well, especially when no one was watching. She turned off the lights and caught up to her class, carrying that satisfaction with her. SEL Focus: Quiet responsibility, Intrinsic satisfaction, Doing it right without audience"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 105
  );

  -- Lesson 15: The Moment She Felt She Belonged
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Moment She Felt She Belonged', '3R3 (92%) PRIMARY | 3R2 (86%) SECONDARY | 3R6 (83%) SECONDARY | 3R9 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Mia had transferred to this school in October — always a difficult month to arrive, after the class had formed its rhythms and inside references and established seating arrangements. For the first few weeks she had felt pleasantly invisible and also, less pleasantly, unknown. Then one afternoon during free writing, her teacher asked if anyone would share. Mia''s hand went up before she consciously decided to raise it. She read three paragraphs about her grandmother''s kitchen — the particular smell of cardamom and the way the light came through a specific window in the late afternoon. When she finished, the room was quiet for a beat longer than usual. Then a girl named Rosa said, simply, ''I could picture all of it.'' Something shifted — not dramatically, but warmly. Mia understood, arriving home that evening, that belonging was not something that happened to you. It was something you could step toward, one honest sentence at a time. SEL Focus: Belonging, Vulnerability, The courage of sharing yourself', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Moment She Felt She Belonged',
    '{"lesson_name": "The Moment She Felt She Belonged", "lesson_description": "3R3 (92%) PRIMARY | 3R2 (86%) SECONDARY | 3R6 (83%) SECONDARY | 3R9 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Mia had transferred to this school in October \u2014 always a difficult month to arrive, after the class had formed its rhythms and inside references and established seating arrangements. For the first few weeks she had felt pleasantly invisible and also, less pleasantly, unknown. Then one afternoon during free writing, her teacher asked if anyone would share. Mia''s hand went up before she consciously decided to raise it. She read three paragraphs about her grandmother''s kitchen \u2014 the particular smell of cardamom and the way the light came through a specific window in the late afternoon. When she finished, the room was quiet for a beat longer than usual. Then a girl named Rosa said, simply, ''I could picture all of it.'' Something shifted \u2014 not dramatically, but warmly. Mia understood, arriving home that evening, that belonging was not something that happened to you. It was something you could step toward, one honest sentence at a time. SEL Focus: Belonging, Vulnerability, The courage of sharing yourself"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 113
  );

  -- Lesson 16: Losing Well
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Losing Well', '3R3 (93%) PRIMARY | 3R2 (87%) SECONDARY | 3R6 (84%) SECONDARY | 3R9 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Marcus had been certain going into the chess tournament that he would win at least two matches. He lost both — the first in under twenty minutes to a player whose strategy he hadn''t seen coming, the second in a longer game that he had come close to winning before a critical error in the endgame unraveled everything. He sat with the results for the rest of the morning without fully processing them, doing that thing where you feel something but haven''t quite admitted it yet. By lunch he had arrived at something cleaner: genuine respect for both players whose skill had been superior on that day. He found a way to tell them so, without it costing too much. His coach said later, ''You handled that like someone who plays this game for a long time.'' Marcus understood that was not a small thing to say. He had won something in the losing — something about how to hold difficulty without shrinking from it. SEL Focus: Sportsmanship, Dignified loss, Respect as practice', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Losing Well',
    '{"lesson_name": "Losing Well", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (87%) SECONDARY | 3R6 (84%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Marcus had been certain going into the chess tournament that he would win at least two matches. He lost both \u2014 the first in under twenty minutes to a player whose strategy he hadn''t seen coming, the second in a longer game that he had come close to winning before a critical error in the endgame unraveled everything. He sat with the results for the rest of the morning without fully processing them, doing that thing where you feel something but haven''t quite admitted it yet. By lunch he had arrived at something cleaner: genuine respect for both players whose skill had been superior on that day. He found a way to tell them so, without it costing too much. His coach said later, ''You handled that like someone who plays this game for a long time.'' Marcus understood that was not a small thing to say. He had won something in the losing \u2014 something about how to hold difficulty without shrinking from it. SEL Focus: Sportsmanship, Dignified loss, Respect as practice"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 121
  );

  -- Lesson 17: What She Heard in Her Own Voice
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What She Heard in Her Own Voice', '3R3 (93%) PRIMARY | 3R2 (87%) SECONDARY | 3R6 (85%) SECONDARY | 3L3 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/92.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'When her class recorded audio for a podcast project, Zara heard herself played back for the first time with clear recording equipment. Her initial reaction was the one almost everyone had — a mild discomfort at the gap between the voice in your head and the voice in the air. But then she listened more carefully, past the strangeness of her own sound, and noticed something: she sounded sure of what she was saying. Not loud — she was not a loud person — but grounded, in the particular way that came not from volume but from meaning what the words said. She had assumed, without having evidence, that she came across as uncertain. The recording corrected the assumption cleanly. She listened twice more, not out of vanity but out of something closer to curiosity about this version of herself — the one that emerged when she was focused on an idea rather than on how she was coming across. SEL Focus: Self-perception, Authentic voice, Evidence over assumption', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What She Heard in Her Own Voice',
    '{"lesson_name": "What She Heard in Her Own Voice", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (87%) SECONDARY | 3R6 (85%) SECONDARY | 3L3 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "When her class recorded audio for a podcast project, Zara heard herself played back for the first time with clear recording equipment. Her initial reaction was the one almost everyone had \u2014 a mild discomfort at the gap between the voice in your head and the voice in the air. But then she listened more carefully, past the strangeness of her own sound, and noticed something: she sounded sure of what she was saying. Not loud \u2014 she was not a loud person \u2014 but grounded, in the particular way that came not from volume but from meaning what the words said. She had assumed, without having evidence, that she came across as uncertain. The recording corrected the assumption cleanly. She listened twice more, not out of vanity but out of something closer to curiosity about this version of herself \u2014 the one that emerged when she was focused on an idea rather than on how she was coming across. SEL Focus: Self-perception, Authentic voice, Evidence over assumption"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 129
  );

  -- Lesson 18: The Friendship That Started With a Disagreement
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Friendship That Started With a Disagreement', '3R3 (92%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (85%) SECONDARY | 3R6 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Dani and Keiko had argued about the ending of a short story during book club — not rudely, but with genuine conviction on both sides — and neither of them had particularly enjoyed the feeling of being disagreed with so directly. But two weeks later, when a different story came up, Dani found herself thinking about how Keiko had read the last one and what she might say about this one. She realized something: she had been anticipating Keiko''s interpretation before the discussion had even started, not to argue against it but because Keiko noticed different things, and those different things made the story more interesting to think about. She mentioned this to Keiko somewhat awkwardly, because it was a strange thing to say. Keiko''s expression shifted into something like pleased surprise. ''I do the same thing about you,'' she said. And that, as unremarkable as it sounds, was how a particular kind of friendship began: with two people who paid attention to each other''s thinking and found that the attention itself was a form of respect. SEL Focus: Friendship through intellectual engagement, Respecting difference, Mutual attention', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Friendship That Started With a Disagreement',
    '{"lesson_name": "The Friendship That Started With a Disagreement", "lesson_description": "3R3 (92%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (85%) SECONDARY | 3R6 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Dani and Keiko had argued about the ending of a short story during book club \u2014 not rudely, but with genuine conviction on both sides \u2014 and neither of them had particularly enjoyed the feeling of being disagreed with so directly. But two weeks later, when a different story came up, Dani found herself thinking about how Keiko had read the last one and what she might say about this one. She realized something: she had been anticipating Keiko''s interpretation before the discussion had even started, not to argue against it but because Keiko noticed different things, and those different things made the story more interesting to think about. She mentioned this to Keiko somewhat awkwardly, because it was a strange thing to say. Keiko''s expression shifted into something like pleased surprise. ''I do the same thing about you,'' she said. And that, as unremarkable as it sounds, was how a particular kind of friendship began: with two people who paid attention to each other''s thinking and found that the attention itself was a form of respect. SEL Focus: Friendship through intellectual engagement, Respecting difference, Mutual attention"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 137
  );

  -- Lesson 19: The Thing She Made
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Thing She Made', '3R3 (92%) PRIMARY | 3R2 (87%) SECONDARY | 3R6 (84%) SECONDARY | 3L3 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Camille had spent four afternoons building a scale model of the schoolyard for her social studies project — cutting, measuring, second-guessing the proportions, restarting the central building twice when the dimensions came out wrong. By the fourth afternoon she was tired of it in the way you got tired of something only after you had put real work into it, which was different from simply losing interest. When she finally set it down completed on the kitchen table and stepped back, what she felt was not the relief she had expected but something more layered: pride in the accuracy of it, gratitude that it was done, and a genuine appreciation for the difficulty of representing a three-dimensional space in miniature. She tried to name the feeling precisely. The closest word she found was earned. The model was not the best schoolyard model ever made — but it was the best version she had been capable of at that specific point. That, she understood, was enough. SEL Focus: Craftsmanship, Earned pride, The dignity of your own best', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Thing She Made',
    '{"lesson_name": "The Thing She Made", "lesson_description": "3R3 (92%) PRIMARY | 3R2 (87%) SECONDARY | 3R6 (84%) SECONDARY | 3L3 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Camille had spent four afternoons building a scale model of the schoolyard for her social studies project \u2014 cutting, measuring, second-guessing the proportions, restarting the central building twice when the dimensions came out wrong. By the fourth afternoon she was tired of it in the way you got tired of something only after you had put real work into it, which was different from simply losing interest. When she finally set it down completed on the kitchen table and stepped back, what she felt was not the relief she had expected but something more layered: pride in the accuracy of it, gratitude that it was done, and a genuine appreciation for the difficulty of representing a three-dimensional space in miniature. She tried to name the feeling precisely. The closest word she found was earned. The model was not the best schoolyard model ever made \u2014 but it was the best version she had been capable of at that specific point. That, she understood, was enough. SEL Focus: Craftsmanship, Earned pride, The dignity of your own best"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 145
  );

  -- Lesson 20: What Her Teacher Said
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Her Teacher Said', '3R3 (92%) PRIMARY | 3R2 (87%) SECONDARY | 3R6 (85%) SECONDARY | 3R1 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/100.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At the end of a reading conference, Priya''s teacher said something Priya had not been expecting: ''You read like you''re looking for something.'' Priya asked what she meant. Her teacher said, ''Most readers read to find out what happens. You read to find out why it had to happen that way. That''s a different kind of reading, and it gets you to different places.'' Priya sat with that on the bus ride home, turning it over. She had always felt slightly out of step with conversations about books that focused on plot — the part she was most drawn to was what a character''s choice revealed, or what the author''s word choice suggested about the mood they were building. She had assumed this was a quirk. What her teacher had offered, in one sentence, was a different interpretation: it was a reading identity. The idea that she had an identity as a reader settled into her with a warmth she hadn''t anticipated. SEL Focus: Being seen, Learning your own strengths, Intellectual identity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Her Teacher Said',
    '{"lesson_name": "What Her Teacher Said", "lesson_description": "3R3 (92%) PRIMARY | 3R2 (87%) SECONDARY | 3R6 (85%) SECONDARY | 3R1 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "At the end of a reading conference, Priya''s teacher said something Priya had not been expecting: ''You read like you''re looking for something.'' Priya asked what she meant. Her teacher said, ''Most readers read to find out what happens. You read to find out why it had to happen that way. That''s a different kind of reading, and it gets you to different places.'' Priya sat with that on the bus ride home, turning it over. She had always felt slightly out of step with conversations about books that focused on plot \u2014 the part she was most drawn to was what a character''s choice revealed, or what the author''s word choice suggested about the mood they were building. She had assumed this was a quirk. What her teacher had offered, in one sentence, was a different interpretation: it was a reading identity. The idea that she had an identity as a reader settled into her with a warmth she hadn''t anticipated. SEL Focus: Being seen, Learning your own strengths, Intellectual identity"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 153
  );

  -- Lesson 21: A Day That Went Better Than He Thought
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A Day That Went Better Than He Thought', '3R3 (91%) PRIMARY | 3R2 (86%) SECONDARY | 3R6 (83%) SECONDARY | 3-5L1 (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Felix had woken up on the morning of the science presentation with a stiff neck and the particular gray fog that sometimes arrived without invitation, making everything feel slightly harder than it needed to be. He had considered, briefly, whether he could reasonably claim illness. He could not, reasonably — he wasn''t actually sick. He went. The presentation went well enough: he remembered everything he had prepared, spoke at a pace that felt controlled, and answered one unexpected question with an honest ''I''m not sure, but here''s what I think,'' which his teacher accepted without any indication of disappointment. By afternoon, the gray fog had lifted. He didn''t have an explanation for why some days began in heaviness and ended in something lighter — it seemed to have less to do with what had happened and more to do with having moved through it anyway. He filed that observation away for the next difficult morning, which would eventually arrive. SEL Focus: Resilience, Showing up despite difficulty, Self-knowledge', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Day That Went Better Than He Thought',
    '{"lesson_name": "A Day That Went Better Than He Thought", "lesson_description": "3R3 (91%) PRIMARY | 3R2 (86%) SECONDARY | 3R6 (83%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Felix had woken up on the morning of the science presentation with a stiff neck and the particular gray fog that sometimes arrived without invitation, making everything feel slightly harder than it needed to be. He had considered, briefly, whether he could reasonably claim illness. He could not, reasonably \u2014 he wasn''t actually sick. He went. The presentation went well enough: he remembered everything he had prepared, spoke at a pace that felt controlled, and answered one unexpected question with an honest ''I''m not sure, but here''s what I think,'' which his teacher accepted without any indication of disappointment. By afternoon, the gray fog had lifted. He didn''t have an explanation for why some days began in heaviness and ended in something lighter \u2014 it seemed to have less to do with what had happened and more to do with having moved through it anyway. He filed that observation away for the next difficult morning, which would eventually arrive. SEL Focus: Resilience, Showing up despite difficulty, Self-knowledge"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 161
  );

  -- Lesson 22: When She Found the Right Words
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When She Found the Right Words', '3R3 (91%) PRIMARY | 3R2 (86%) SECONDARY | 3R6 (83%) SECONDARY | 3SL1 [3SL1d] (79%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Her classmate had been having a hard week — not dramatically, but visibly, in the way a person becomes slightly less present than they usually are. Sofia had noticed. She had wanted to say something for three days but kept stalling on the problem of what, exactly, to say. On Thursday, she wrote a sentence on a small piece of paper, folded it twice, and placed it on her classmate''s desk before first period: ''I noticed you seem tired this week. I hope things get easier soon.'' She didn''t sign it — not because she was embarrassed, but because she didn''t want her classmate to feel obligated to respond. Her classmate read it, looked around, and found Sofia''s eyes across the room. She gave the smallest nod. Sofia returned it. That was all. But the exchange carried more than either of them would have known how to say out loud, which was, perhaps, why writing had been the right instrument for that particular moment. SEL Focus: Attunement, Thoughtful kindness, The right scale of care', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When She Found the Right Words',
    '{"lesson_name": "When She Found the Right Words", "lesson_description": "3R3 (91%) PRIMARY | 3R2 (86%) SECONDARY | 3R6 (83%) SECONDARY | 3SL1 [3SL1d] (79%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Her classmate had been having a hard week \u2014 not dramatically, but visibly, in the way a person becomes slightly less present than they usually are. Sofia had noticed. She had wanted to say something for three days but kept stalling on the problem of what, exactly, to say. On Thursday, she wrote a sentence on a small piece of paper, folded it twice, and placed it on her classmate''s desk before first period: ''I noticed you seem tired this week. I hope things get easier soon.'' She didn''t sign it \u2014 not because she was embarrassed, but because she didn''t want her classmate to feel obligated to respond. Her classmate read it, looked around, and found Sofia''s eyes across the room. She gave the smallest nod. Sofia returned it. That was all. But the exchange carried more than either of them would have known how to say out loud, which was, perhaps, why writing had been the right instrument for that particular moment. SEL Focus: Attunement, Thoughtful kindness, The right scale of care"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 169
  );

  -- Lesson 23: Understanding Something He'd Been Missing
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Understanding Something He''d Been Missing', '3R6 (93%) PRIMARY | 3R2 (88%) SECONDARY | 3R1 (84%) SECONDARY | 3R9 (80%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'For the entire first half of the school year, Marcus had been reading the maps in their social studies unit as neutral facts — representations of how things were, without commentary. Then, during one particular lesson, his teacher showed them the same region on two different maps made fifty years apart. The first showed the territory under one name and border. The second showed the same land with a different name and borders, with no explanation in either map of what had happened between the two versions. ''Maps tell you someone''s truth,'' his teacher said, ''not the only truth.'' Marcus looked back at every map in the unit and saw them differently. He wasn''t sure the word for what he was experiencing was understanding, exactly — it felt more like a small, irreversible shift in his relationship to a kind of document he had previously trusted without thinking to question. He found that shift not unsettling but energizing, in the specific way that new questions always were. SEL Focus: Critical thinking, Intellectual growth, Seeing familiar things differently', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Understanding Something He''d Been Missing',
    '{"lesson_name": "Understanding Something He''d Been Missing", "lesson_description": "3R6 (93%) PRIMARY | 3R2 (88%) SECONDARY | 3R1 (84%) SECONDARY | 3R9 (80%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "For the entire first half of the school year, Marcus had been reading the maps in their social studies unit as neutral facts \u2014 representations of how things were, without commentary. Then, during one particular lesson, his teacher showed them the same region on two different maps made fifty years apart. The first showed the territory under one name and border. The second showed the same land with a different name and borders, with no explanation in either map of what had happened between the two versions. ''Maps tell you someone''s truth,'' his teacher said, ''not the only truth.'' Marcus looked back at every map in the unit and saw them differently. He wasn''t sure the word for what he was experiencing was understanding, exactly \u2014 it felt more like a small, irreversible shift in his relationship to a kind of document he had previously trusted without thinking to question. He found that shift not unsettling but energizing, in the specific way that new questions always were. SEL Focus: Critical thinking, Intellectual growth, Seeing familiar things differently"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 177
  );

  -- Lesson 24: Ready
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Ready', '3R3 (94%) PRIMARY | 3R2 (89%) SECONDARY | 3R6 (86%) SECONDARY | 3R9 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/100.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The night before the district writing competition, Zara did something she hadn''t done the previous year: nothing. Not nothing out of avoidance, but nothing as a deliberate choice — she had prepared as much as she could prepare, and she recognized the specific feeling of being ready, which was different from the feeling of wishing she had prepared more. She put her piece away, ate dinner, and read for an hour. In the morning she felt that particular quality of alertness that came not from anxiety but from genuine readiness — a state of being available to the task rather than braced against it. At the competition, she wrote with the focused ease that came from knowing her subject well enough to improvise within it. Afterward, she recognized that experience as something she could replicate intentionally — the feeling of working from genuine preparation rather than scrambled effort. That knowledge, she understood, was the actual prize. SEL Focus: Preparation as a practice, The feeling of readiness, Intrinsic reward', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ready',
    '{"lesson_name": "Ready", "lesson_description": "3R3 (94%) PRIMARY | 3R2 (89%) SECONDARY | 3R6 (86%) SECONDARY | 3R9 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "The night before the district writing competition, Zara did something she hadn''t done the previous year: nothing. Not nothing out of avoidance, but nothing as a deliberate choice \u2014 she had prepared as much as she could prepare, and she recognized the specific feeling of being ready, which was different from the feeling of wishing she had prepared more. She put her piece away, ate dinner, and read for an hour. In the morning she felt that particular quality of alertness that came not from anxiety but from genuine readiness \u2014 a state of being available to the task rather than braced against it. At the competition, she wrote with the focused ease that came from knowing her subject well enough to improvise within it. Afterward, she recognized that experience as something she could replicate intentionally \u2014 the feeling of working from genuine preparation rather than scrambled effort. That knowledge, she understood, was the actual prize. SEL Focus: Preparation as a practice, The feeling of readiness, Intrinsic reward"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 185
  );

  -- Lesson 25: The Decision She Made Herself
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Decision She Made Herself', '3R3 (93%) PRIMARY | 3R2 (89%) SECONDARY | 3R6 (86%) SECONDARY | 3R9 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/96.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Without anyone suggesting it, reminding her, or offering a reward, Nadia went back to the student whose art project she had commented on dismissively two days earlier — a quick remark, almost thoughtless, during the chaos of cleanup — and said, ''I wasn''t fair about what I said. I looked at it more carefully and it''s actually interesting in the way you worked with the color.'' She had not planned this. She had been walking to art class when the memory of the original comment surfaced and something in her — some interior sense that the ledger was still open — made her turn around. The student said, ''Oh. Thanks.'' That was all. Nadia walked to class. But the interior sense that had sent her back was, she understood, something to pay attention to — it was the part of her that knew what she owed, even when no one else was keeping count. She wanted to stay on good terms with that part of herself. SEL Focus: Intrinsic moral sense, Repair without prompting, The interior compass', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Decision She Made Herself',
    '{"lesson_name": "The Decision She Made Herself", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (89%) SECONDARY | 3R6 (86%) SECONDARY | 3R9 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Without anyone suggesting it, reminding her, or offering a reward, Nadia went back to the student whose art project she had commented on dismissively two days earlier \u2014 a quick remark, almost thoughtless, during the chaos of cleanup \u2014 and said, ''I wasn''t fair about what I said. I looked at it more carefully and it''s actually interesting in the way you worked with the color.'' She had not planned this. She had been walking to art class when the memory of the original comment surfaced and something in her \u2014 some interior sense that the ledger was still open \u2014 made her turn around. The student said, ''Oh. Thanks.'' That was all. Nadia walked to class. But the interior sense that had sent her back was, she understood, something to pay attention to \u2014 it was the part of her that knew what she owed, even when no one else was keeping count. She wanted to stay on good terms with that part of herself. SEL Focus: Intrinsic moral sense, Repair without prompting, The interior compass"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 193
  );

  -- Lesson 26: A New Way of Seeing the Room
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'A New Way of Seeing the Room', '3R3 (93%) PRIMARY | 3R2 (88%) SECONDARY | 3R6 (85%) SECONDARY | 3L3 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During a moment of unusual stillness in the school day — a fire drill had ended early and the class was waiting in the hallway before being readmitted — Marcus noticed something he had not noticed in three years of attending this school: the way the afternoon light came through the east-hall windows and fell in long, warm rectangles across the floor tiles, and the way the sound of students gradually quieting created a softening that happened so naturally it sounded almost rehearsed. He had been standing in this hallway approximately three times a week for years. He had never really seen it. He thought about all the places he moved through without attending — all the rooms he occupied without noticing. He made a small, private decision: to pay better attention to the particular quality of the spaces he spent time in, which were, he was beginning to understand, not merely settings but the actual texture of his daily life. SEL Focus: Presence, Noticing the ordinary, Choosing attention', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A New Way of Seeing the Room',
    '{"lesson_name": "A New Way of Seeing the Room", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (88%) SECONDARY | 3R6 (85%) SECONDARY | 3L3 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "During a moment of unusual stillness in the school day \u2014 a fire drill had ended early and the class was waiting in the hallway before being readmitted \u2014 Marcus noticed something he had not noticed in three years of attending this school: the way the afternoon light came through the east-hall windows and fell in long, warm rectangles across the floor tiles, and the way the sound of students gradually quieting created a softening that happened so naturally it sounded almost rehearsed. He had been standing in this hallway approximately three times a week for years. He had never really seen it. He thought about all the places he moved through without attending \u2014 all the rooms he occupied without noticing. He made a small, private decision: to pay better attention to the particular quality of the spaces he spent time in, which were, he was beginning to understand, not merely settings but the actual texture of his daily life. SEL Focus: Presence, Noticing the ordinary, Choosing attention"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 201
  );

  -- Lesson 27: Letting Someone In
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Letting Someone In', '3R3 (93%) PRIMARY | 3R2 (88%) SECONDARY | 3R6 (85%) SECONDARY | 3R9 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Sofia was not, by nature, a sharer of difficulties. She had a talent for appearing fine — which was not quite the same as being fine — and had used this talent so long it had become a kind of default. Then one afternoon, walking home with a friend who had been talking, unprompted, about something she was struggling with in math, Sofia found herself listening with an attention that was partly vicarious: the quiet relief of hearing someone describe a difficulty openly, without apology or performance. On an impulse she almost didn''t follow, Sofia said, ''I have a version of that, with the reading comprehension questions.'' Her friend said, ''Wait — really? I thought you were good at those.'' ''I''m okay at them,'' Sofia said. ''I worry about them.'' The conversation that followed was easy in a way Sofia hadn''t expected — easy in the way that honesty was easier than its alternative. She walked home lighter and thought about what she had been carrying unnecessarily, and for how long. SEL Focus: Vulnerability, Authentic connection, The lightness of honesty', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Letting Someone In',
    '{"lesson_name": "Letting Someone In", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (88%) SECONDARY | 3R6 (85%) SECONDARY | 3R9 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "Sofia was not, by nature, a sharer of difficulties. She had a talent for appearing fine \u2014 which was not quite the same as being fine \u2014 and had used this talent so long it had become a kind of default. Then one afternoon, walking home with a friend who had been talking, unprompted, about something she was struggling with in math, Sofia found herself listening with an attention that was partly vicarious: the quiet relief of hearing someone describe a difficulty openly, without apology or performance. On an impulse she almost didn''t follow, Sofia said, ''I have a version of that, with the reading comprehension questions.'' Her friend said, ''Wait \u2014 really? I thought you were good at those.'' ''I''m okay at them,'' Sofia said. ''I worry about them.'' The conversation that followed was easy in a way Sofia hadn''t expected \u2014 easy in the way that honesty was easier than its alternative. She walked home lighter and thought about what she had been carrying unnecessarily, and for how long. SEL Focus: Vulnerability, Authentic connection, The lightness of honesty"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 209
  );

  -- Lesson 28: What She Found Out She Loved
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What She Found Out She Loved', '3R3 (93%) PRIMARY | 3R2 (88%) SECONDARY | 3R6 (84%) SECONDARY | 3L3 (81%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/92.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'The clay unit in art class was supposed to last two weeks. By the third day, Camille knew she wanted it to last a year. There was something about the material — its resistance and its responsiveness, its willingness to be reshaped without losing patience — that she found absorbing in a way that surprised her. She had not thought of herself as someone drawn to making things with her hands. She had thought of herself as a reader, primarily. But the clay asked her to be precise in a different way — to think through her fingers as much as her mind — and the combination was something she had not known to want before she encountered it. By the end of the unit she had made a small bowl that was not perfect but was unambiguously hers: lopsided on the left, smooth on the inside, with a rim she had reworked until it felt right to the touch. Every time she saw it afterward, she remembered that there were pleasures still ahead of her that she did not yet know to look for. SEL Focus: Discovering a new passion, Unexpected competence, Openness to surprise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What She Found Out She Loved',
    '{"lesson_name": "What She Found Out She Loved", "lesson_description": "3R3 (93%) PRIMARY | 3R2 (88%) SECONDARY | 3R6 (84%) SECONDARY | 3L3 (81%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "The clay unit in art class was supposed to last two weeks. By the third day, Camille knew she wanted it to last a year. There was something about the material \u2014 its resistance and its responsiveness, its willingness to be reshaped without losing patience \u2014 that she found absorbing in a way that surprised her. She had not thought of herself as someone drawn to making things with her hands. She had thought of herself as a reader, primarily. But the clay asked her to be precise in a different way \u2014 to think through her fingers as much as her mind \u2014 and the combination was something she had not known to want before she encountered it. By the end of the unit she had made a small bowl that was not perfect but was unambiguously hers: lopsided on the left, smooth on the inside, with a rim she had reworked until it felt right to the touch. Every time she saw it afterward, she remembered that there were pleasures still ahead of her that she did not yet know to look for. SEL Focus: Discovering a new passion, Unexpected competence, Openness to surprise"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 217
  );

  -- Lesson 29: What She Carried Home
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What She Carried Home', '3R3 (92%) PRIMARY | 3R2 (88%) SECONDARY | 3R6 (85%) SECONDARY | 3L3 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'It had not been an exceptional day by any visible measure — there had been no performance, no prize, no particular event that would make it easy to describe to a stranger. But walking home, Priya found herself cataloguing the moments that had stayed with her: the way her reading partner had laughed at an unexpected part of their book; the smell of chalk dust and autumn air through the classroom''s propped window; a sentence her teacher had written on the board that she had copied into her notebook without fully understanding it yet, which was the best kind of sentence; the satisfaction of finishing the math set early and using the extra time to reread her favorite paragraph from their class novel. None of these were large. Together they made something she could only describe as fullness. She thought: more days should feel like this. And then: maybe more of them do, and I''m not always paying enough attention. SEL Focus: Gratitude, Attentiveness to ordinary joy, Choosing to notice', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What She Carried Home',
    '{"lesson_name": "What She Carried Home", "lesson_description": "3R3 (92%) PRIMARY | 3R2 (88%) SECONDARY | 3R6 (85%) SECONDARY | 3L3 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "It had not been an exceptional day by any visible measure \u2014 there had been no performance, no prize, no particular event that would make it easy to describe to a stranger. But walking home, Priya found herself cataloguing the moments that had stayed with her: the way her reading partner had laughed at an unexpected part of their book; the smell of chalk dust and autumn air through the classroom''s propped window; a sentence her teacher had written on the board that she had copied into her notebook without fully understanding it yet, which was the best kind of sentence; the satisfaction of finishing the math set early and using the extra time to reread her favorite paragraph from their class novel. None of these were large. Together they made something she could only describe as fullness. She thought: more days should feel like this. And then: maybe more of them do, and I''m not always paying enough attention. SEL Focus: Gratitude, Attentiveness to ordinary joy, Choosing to notice"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 225
  );

  -- Lesson 30: Saying the True Thing
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Saying the True Thing', '3R3 (92%) PRIMARY | 3R2 (89%) SECONDARY | 3R6 (86%) SECONDARY | 3R1 (82%) SECONDARY', '1c83484e-7cf1-4e26-8503-62cff6d07789',
    'HARD', 'Reading Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/22.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During a class discussion about a character who had stayed quiet when she should have spoken, Felix found himself thinking about a moment from earlier in the week — a group discussion where he had had an idea he''d judged too unusual to offer, and had kept it to himself, and the discussion had circled the same territory for twenty minutes without going anywhere new. He raised his hand now. He said, carefully, that he thought the character''s silence wasn''t really about fear — it was about the belief that her voice would cost something, and that belief had been confirmed so many times she had stopped testing it. The room was quiet for a moment. Then three students said some version of yes. His teacher said, ''That''s the interpretation I''ve been waiting for someone to offer.'' Felix felt something he couldn''t quite name — part satisfaction, part the particular relief of having said a true thing and found it received. He thought about the idea he had kept to himself earlier and wondered what might have happened if he had offered it. He intended to find out next time. SEL Focus: Intellectual courage, Authentic contribution, The reward of honest expression', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Saying the True Thing',
    '{"lesson_name": "Saying the True Thing", "lesson_description": "3R3 (92%) PRIMARY | 3R2 (89%) SECONDARY | 3R6 (86%) SECONDARY | 3R1 (82%) SECONDARY", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Reading Comprehension", "contents": [{"content_key": "passage", "content_value": "During a class discussion about a character who had stayed quiet when she should have spoken, Felix found himself thinking about a moment from earlier in the week \u2014 a group discussion where he had had an idea he''d judged too unusual to offer, and had kept it to himself, and the discussion had circled the same territory for twenty minutes without going anywhere new. He raised his hand now. He said, carefully, that he thought the character''s silence wasn''t really about fear \u2014 it was about the belief that her voice would cost something, and that belief had been confirmed so many times she had stopped testing it. The room was quiet for a moment. Then three students said some version of yes. His teacher said, ''That''s the interpretation I''ve been waiting for someone to offer.'' Felix felt something he couldn''t quite name \u2014 part satisfaction, part the particular relief of having said a true thing and found it received. He thought about the idea he had kept to himself earlier and wondered what might have happened if he had offered it. He intended to find out next time. SEL Focus: Intellectual courage, Authentic contribution, The reward of honest expression"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Reading Comprehension', 3, NULL, 'HARD', 233
  );

END $$;
