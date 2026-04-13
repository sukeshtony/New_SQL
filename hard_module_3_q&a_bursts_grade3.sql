-- =====================================================
-- Module 3: Q&A Bursts - Grade 3 (30 Lessons) [HARD]
-- Learning Path: ffd44181-68cd-4ac8-9a85-e66adc2d7baa
-- Training Module: be2bcdc0-3737-41a5-af5c-df6b61ed94c2
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

  -- Lesson 1: When Rules Feel Unfair
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Rules Feel Unfair', '3SL1 [3SL1d] (90%) PRIMARY | 3R8 (85%) SECONDARY | 3-5L1 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/68.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Justice, rules, and how they apply ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a specific rule at school or home that you think is unfair. What makes it feel that way? | Is the rule unfair to everyone, or just to certain people in certain situations? | What problem do you think the rule was created to solve? Does it actually solve it? | If you could change the rule, what would you replace it with? Would your version solve the same problem? | What is the difference between a rule you dislike and a rule that is actually unjust?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Rules Feel Unfair',
    '{"lesson_name": "When Rules Feel Unfair", "lesson_description": "3SL1 [3SL1d] (90%) PRIMARY | 3R8 (85%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Justice, rules, and how they apply"}, {"content_key": "rapid_questions", "content_value": "Describe a specific rule at school or home that you think is unfair. What makes it feel that way? | Is the rule unfair to everyone, or just to certain people in certain situations? | What problem do you think the rule was created to solve? Does it actually solve it? | If you could change the rule, what would you replace it with? Would your version solve the same problem? | What is the difference between a rule you dislike and a rule that is actually unjust?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 4
  );

  -- Lesson 2: Being Counted On
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Being Counted On', '3SL1 [3SL1d] (90%) PRIMARY | 3R3 (84%) SECONDARY | 3-5L1 (79%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/92.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Reliability and what it costs ', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a situation where someone was counting on you. What exactly were they expecting? | Did you follow through? If not, what got in the way? If you did, what made it possible? | What does it feel like when someone you were counting on doesn''t follow through? | Is there a difference between letting someone down by accident and letting them down by not caring? | What does it actually take to be reliable — what habits or choices make it possible?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Being Counted On',
    '{"lesson_name": "Being Counted On", "lesson_description": "3SL1 [3SL1d] (90%) PRIMARY | 3R3 (84%) SECONDARY | 3-5L1 (79%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Reliability and what it costs"}, {"content_key": "rapid_questions", "content_value": "Describe a situation where someone was counting on you. What exactly were they expecting? | Did you follow through? If not, what got in the way? If you did, what made it possible? | What does it feel like when someone you were counting on doesn''t follow through? | Is there a difference between letting someone down by accident and letting them down by not caring? | What does it actually take to be reliable \u2014 what habits or choices make it possible?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 12
  );

  -- Lesson 3: What Curiosity Looks Like in Practice
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Curiosity Looks Like in Practice', '3SL1 [3SL1d] (89%) PRIMARY | 3R2 (83%) SECONDARY | 3-5L1 (78%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/76.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Intellectual engagement and genuine inquiry', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a time when you were genuinely curious about something — not because of school, but on your own. What triggered it? | How did you follow the curiosity? What did you actually do with it? | Is there a difference between being curious and just wanting the answer? What is it? | What conditions make it easier for you to be curious — and what shuts it down? | What is something you have been curious about for a long time but haven''t fully explored yet?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Curiosity Looks Like in Practice',
    '{"lesson_name": "What Curiosity Looks Like in Practice", "lesson_description": "3SL1 [3SL1d] (89%) PRIMARY | 3R2 (83%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Intellectual engagement and genuine inquiry"}, {"content_key": "rapid_questions", "content_value": "Describe a time when you were genuinely curious about something \u2014 not because of school, but on your own. What triggered it? | How did you follow the curiosity? What did you actually do with it? | Is there a difference between being curious and just wanting the answer? What is it? | What conditions make it easier for you to be curious \u2014 and what shuts it down? | What is something you have been curious about for a long time but haven''t fully explored yet?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 20
  );

  -- Lesson 4: The Hardest Choices
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'The Hardest Choices', '3SL1 [3SL1d] (89%) PRIMARY | 3R3 (84%) SECONDARY | 3-5L1 (78%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/2.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Decision-making under competing values', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a choice you made where you had to give something up to get something else. What did you choose and what did you sacrifice? | How did you know which thing mattered more? Did you think it through or go with your gut? | Looking back, would you make the same choice again? What do you know now that you didn''t know then? | Is there a choice you regret not making differently? What would you change? | What do you think the hardest type of choice is — when both options are bad, or when both are good?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Hardest Choices',
    '{"lesson_name": "The Hardest Choices", "lesson_description": "3SL1 [3SL1d] (89%) PRIMARY | 3R3 (84%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Decision-making under competing values"}, {"content_key": "rapid_questions", "content_value": "Describe a choice you made where you had to give something up to get something else. What did you choose and what did you sacrifice? | How did you know which thing mattered more? Did you think it through or go with your gut? | Looking back, would you make the same choice again? What do you know now that you didn''t know then? | Is there a choice you regret not making differently? What would you change? | What do you think the hardest type of choice is \u2014 when both options are bad, or when both are good?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 28
  );

  -- Lesson 5: Noticing What Others Miss
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Noticing What Others Miss', '3SL1 [3SL1d] (89%) PRIMARY | 3SL4 (83%) SECONDARY | 3-5L1 (78%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Attention and observation as skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you notice about your classroom, school, or neighborhood that you think most people walk past without seeing? | How did you start noticing it? Was it sudden or gradual? | Has noticing something no one else noticed ever changed how you acted? | What makes some people better at noticing things than others — is it a skill you can build? | What is something right in front of you right now that you almost never actually look at closely?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noticing What Others Miss',
    '{"lesson_name": "Noticing What Others Miss", "lesson_description": "3SL1 [3SL1d] (89%) PRIMARY | 3SL4 (83%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Attention and observation as skills"}, {"content_key": "rapid_questions", "content_value": "What is something you notice about your classroom, school, or neighborhood that you think most people walk past without seeing? | How did you start noticing it? Was it sudden or gradual? | Has noticing something no one else noticed ever changed how you acted? | What makes some people better at noticing things than others \u2014 is it a skill you can build? | What is something right in front of you right now that you almost never actually look at closely?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 36
  );

  -- Lesson 6: What Being Part of a Community Requires
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Being Part of a Community Requires', '3SL1 [3SL1c] (89%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (78%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Civic participation and obligation', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does it mean to actually be part of a community — not just live or go to school in one? | Have you ever seen someone in your community who clearly needed something and no one responded? What happened? | What is the difference between using a community and contributing to it? | If every person in your classroom gave one hour a week to making it better, what do you think would change?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Being Part of a Community Requires',
    '{"lesson_name": "What Being Part of a Community Requires", "lesson_description": "3SL1 [3SL1c] (89%) PRIMARY | 3R9 (83%) SECONDARY | 3-5L1 (78%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Civic participation and obligation"}, {"content_key": "rapid_questions", "content_value": "What does it mean to actually be part of a community \u2014 not just live or go to school in one? | Have you ever seen someone in your community who clearly needed something and no one responded? What happened? | What is the difference between using a community and contributing to it? | If every person in your classroom gave one hour a week to making it better, what do you think would change?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 44
  );

  -- Lesson 7: Effort, Progress, and What They Don't Guarantee
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Effort, Progress, and What They Don''t Guarantee', '3SL1 [3SL1d] (89%) PRIMARY | 3R2 (84%) SECONDARY | 3SL3 (80%) SECONDARY | 3-5L1 (77%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/36.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Growth mindset with honest limits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a time you worked hard at something and the result still wasn''t what you wanted. What happened? | Is hard work always enough? If not, what else does progress require? | What is the difference between working hard and working effectively? Have you experienced that difference? | When effort doesn''t produce results, what keeps you going — or what makes you stop? | Is there something you have genuinely put a lot of effort into and still haven''t gotten as far as you''d like? What do you do with that?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Effort, Progress, and What They Don''t Guarantee',
    '{"lesson_name": "Effort, Progress, and What They Don''t Guarantee", "lesson_description": "3SL1 [3SL1d] (89%) PRIMARY | 3R2 (84%) SECONDARY | 3SL3 (80%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Growth mindset with honest limits"}, {"content_key": "rapid_questions", "content_value": "Describe a time you worked hard at something and the result still wasn''t what you wanted. What happened? | Is hard work always enough? If not, what else does progress require? | What is the difference between working hard and working effectively? Have you experienced that difference? | When effort doesn''t produce results, what keeps you going \u2014 or what makes you stop? | Is there something you have genuinely put a lot of effort into and still haven''t gotten as far as you''d like? What do you do with that?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 52
  );

  -- Lesson 8: What Fairness Actually Requires
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Fairness Actually Requires', '3SL1 [3SL1d] (89%) PRIMARY | 3R8 (85%) SECONDARY | 3R6 (81%) SECONDARY | 3-5L1 (77%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/57.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Equity, needs, and what justice looks like', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Can you describe a specific situation where being fair meant giving people different things? What made it fair even though it wasn''t equal? | Who decides what counts as fair in a group or classroom? Should it be the same person every time? | Have you ever been on the losing side of a fair decision? What made it feel acceptable, or didn''t it? | What happens when two people''s ideas of fairness contradict each other — how can both be right? | What would a truly fair classroom need to have or do that most classrooms don''t?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Fairness Actually Requires',
    '{"lesson_name": "What Fairness Actually Requires", "lesson_description": "3SL1 [3SL1d] (89%) PRIMARY | 3R8 (85%) SECONDARY | 3R6 (81%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Equity, needs, and what justice looks like"}, {"content_key": "rapid_questions", "content_value": "Can you describe a specific situation where being fair meant giving people different things? What made it fair even though it wasn''t equal? | Who decides what counts as fair in a group or classroom? Should it be the same person every time? | Have you ever been on the losing side of a fair decision? What made it feel acceptable, or didn''t it? | What happens when two people''s ideas of fairness contradict each other \u2014 how can both be right? | What would a truly fair classroom need to have or do that most classrooms don''t?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 60
  );

  -- Lesson 9: Learning From Someone Different From You
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Learning From Someone Different From You', '3SL1 [3SL1c] (88%) PRIMARY | 3R9 (85%) SECONDARY | 3SL3 (81%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/90.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Cross-perspective learning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe someone in your life who thinks about things very differently from you. What is one thing you have learned from them that you couldn''t have learned from someone more similar to you? | Do you actively seek out people with different views, or does it happen by chance? Does the difference matter? | Have you ever changed your mind about something because of what you learned from a very different person? | What makes it difficult to learn from people who see the world differently? | What is a view or perspective you know you don''t have good access to — and what would it take to get closer to it?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning From Someone Different From You',
    '{"lesson_name": "Learning From Someone Different From You", "lesson_description": "3SL1 [3SL1c] (88%) PRIMARY | 3R9 (85%) SECONDARY | 3SL3 (81%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Cross-perspective learning"}, {"content_key": "rapid_questions", "content_value": "Describe someone in your life who thinks about things very differently from you. What is one thing you have learned from them that you couldn''t have learned from someone more similar to you? | Do you actively seek out people with different views, or does it happen by chance? Does the difference matter? | Have you ever changed your mind about something because of what you learned from a very different person? | What makes it difficult to learn from people who see the world differently? | What is a view or perspective you know you don''t have good access to \u2014 and what would it take to get closer to it?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 68
  );

  -- Lesson 10: When Something Feels Wrong
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Something Feels Wrong', '3SL1 [3SL1d] (88%) PRIMARY | 3R8 (85%) SECONDARY | 3R6 (81%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Moral intuition and when to trust it', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a time when something felt wrong to you — not because of a rule, but just because it felt wrong inside. What was it? | Did you act on that feeling? What did you do or not do? | Is your gut feeling about right and wrong always reliable? When is it trustworthy and when might it mislead you? | What is the difference between something feeling wrong because it upsets you and something feeling wrong because it actually is wrong? | Has someone''s reasoning ever convinced you that something was okay when it felt wrong to you? How did you handle that tension?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Something Feels Wrong',
    '{"lesson_name": "When Something Feels Wrong", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R8 (85%) SECONDARY | 3R6 (81%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Moral intuition and when to trust it"}, {"content_key": "rapid_questions", "content_value": "Describe a time when something felt wrong to you \u2014 not because of a rule, but just because it felt wrong inside. What was it? | Did you act on that feeling? What did you do or not do? | Is your gut feeling about right and wrong always reliable? When is it trustworthy and when might it mislead you? | What is the difference between something feeling wrong because it upsets you and something feeling wrong because it actually is wrong? | Has someone''s reasoning ever convinced you that something was okay when it felt wrong to you? How did you handle that tension?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 76
  );

  -- Lesson 11: How Groups Make Better Decisions
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Groups Make Better Decisions', '3SL1 [3SL1b] (88%) PRIMARY | 3R8 (85%) SECONDARY | 3SL1 [3SL1c] (81%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/70.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaborative reasoning and the value of dissent', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a group decision that turned out better because of disagreement within the group. What made the disagreement useful instead of destructive? | What happens to a group decision when everyone agrees too quickly? Can you think of an example? | What is the most useful role you have played in a group working through a hard decision? | What makes it difficult to speak up in a group when you have a different opinion from the majority? | What could your classroom group do to make sure quiet or minority opinions actually get considered?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Groups Make Better Decisions',
    '{"lesson_name": "How Groups Make Better Decisions", "lesson_description": "3SL1 [3SL1b] (88%) PRIMARY | 3R8 (85%) SECONDARY | 3SL1 [3SL1c] (81%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Collaborative reasoning and the value of dissent"}, {"content_key": "rapid_questions", "content_value": "Describe a group decision that turned out better because of disagreement within the group. What made the disagreement useful instead of destructive? | What happens to a group decision when everyone agrees too quickly? Can you think of an example? | What is the most useful role you have played in a group working through a hard decision? | What makes it difficult to speak up in a group when you have a different opinion from the majority? | What could your classroom group do to make sure quiet or minority opinions actually get considered?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 84
  );

  -- Lesson 12: What Makes Someone Trustworthy
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes Someone Trustworthy', '3SL1 [3SL1d] (88%) PRIMARY | 3R3 (84%) SECONDARY | 3R9 (80%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/71.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Trust, consistency, and character over time', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Name two or three qualities that make someone trustworthy. Are these about what they say or what they do? | Have you ever trusted someone who turned out not to deserve it? What was the first sign you missed? | Have you ever been someone others trusted, and then let them down? What happened? | Is trust something you can rebuild after it''s broken? What does that actually require?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes Someone Trustworthy',
    '{"lesson_name": "What Makes Someone Trustworthy", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R3 (84%) SECONDARY | 3R9 (80%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Trust, consistency, and character over time"}, {"content_key": "rapid_questions", "content_value": "Name two or three qualities that make someone trustworthy. Are these about what they say or what they do? | Have you ever trusted someone who turned out not to deserve it? What was the first sign you missed? | Have you ever been someone others trusted, and then let them down? What happened? | Is trust something you can rebuild after it''s broken? What does that actually require?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 92
  );

  -- Lesson 13: Patterns and What They Tell You
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Patterns and What They Tell You', '3SL1 [3SL1d] (87%) PRIMARY | 3R2 (84%) SECONDARY | 3R3 (80%) SECONDARY | 3-5L1 (75%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/35.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Observation, patterns, and inference', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Have you ever noticed a pattern in your own behavior — something you do repeatedly in certain situations? | How did you notice it — through self-observation, or because someone else pointed it out? | What does a pattern in your own behavior tell you about what you value or what you''re protecting yourself from? | Has noticing a pattern helped you change it, or does awareness not always lead to change? | What pattern do you think exists in your class that most people haven''t put into words yet?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Patterns and What They Tell You',
    '{"lesson_name": "Patterns and What They Tell You", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R2 (84%) SECONDARY | 3R3 (80%) SECONDARY | 3-5L1 (75%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Observation, patterns, and inference"}, {"content_key": "rapid_questions", "content_value": "Have you ever noticed a pattern in your own behavior \u2014 something you do repeatedly in certain situations? | How did you notice it \u2014 through self-observation, or because someone else pointed it out? | What does a pattern in your own behavior tell you about what you value or what you''re protecting yourself from? | Has noticing a pattern helped you change it, or does awareness not always lead to change? | What pattern do you think exists in your class that most people haven''t put into words yet?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 100
  );

  -- Lesson 14: When Helping Gets Complicated
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Helping Gets Complicated', '3SL1 [3SL1d] (87%) PRIMARY | 3R3 (83%) SECONDARY | 3R6 (80%) SECONDARY | 3-5L1 (75%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/97.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'The complexity of support and autonomy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Is there a difference between helping someone and solving their problem for them? When does helping become taking over? | What should you consider before deciding how to help someone — especially someone you know well? | Have you ever not helped when you probably should have? What held you back? | What is the most useful kind of help you''ve ever received — and what made it useful rather than overwhelming or unhelpful?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Helping Gets Complicated',
    '{"lesson_name": "When Helping Gets Complicated", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R3 (83%) SECONDARY | 3R6 (80%) SECONDARY | 3-5L1 (75%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "The complexity of support and autonomy"}, {"content_key": "rapid_questions", "content_value": "Is there a difference between helping someone and solving their problem for them? When does helping become taking over? | What should you consider before deciding how to help someone \u2014 especially someone you know well? | Have you ever not helped when you probably should have? What held you back? | What is the most useful kind of help you''ve ever received \u2014 and what made it useful rather than overwhelming or unhelpful?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 108
  );

  -- Lesson 15: When Two Right Things Conflict
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Two Right Things Conflict', '3SL1 [3SL1d] (88%) PRIMARY | 3R8 (86%) SECONDARY | 3R6 (83%) SECONDARY | 3-5L1 (77%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/39.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Competing values and moral reasoning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you decide which value to act on when two things you believe in point different ways? | Is there a rule or principle that helps you navigate conflicts between values — or does it always depend on the situation? | Have you ever followed the technically correct rule and still felt like you did something wrong? What happened? | What does it mean to make the best decision you can when there is no perfect option?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Two Right Things Conflict',
    '{"lesson_name": "When Two Right Things Conflict", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R8 (86%) SECONDARY | 3R6 (83%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Competing values and moral reasoning"}, {"content_key": "rapid_questions", "content_value": "How do you decide which value to act on when two things you believe in point different ways? | Is there a rule or principle that helps you navigate conflicts between values \u2014 or does it always depend on the situation? | Have you ever followed the technically correct rule and still felt like you did something wrong? What happened? | What does it mean to make the best decision you can when there is no perfect option?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 116
  );

  -- Lesson 16: Standing Up When It Costs You
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Standing Up When It Costs You', '3SL1 [3SL1d] (88%) PRIMARY | 3R3 (85%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (77%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Courage and the price of integrity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Did the cost change whether you thought it was worth doing? How do you think about that now? | What is the difference between being brave and just being stubborn? | Have you ever stayed quiet when you should have spoken up? What made you stay quiet? | What would need to be true for you to be more likely to speak up in a similar situation in the future?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Standing Up When It Costs You',
    '{"lesson_name": "Standing Up When It Costs You", "lesson_description": "3SL1 [3SL1d] (88%) PRIMARY | 3R3 (85%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Courage and the price of integrity"}, {"content_key": "rapid_questions", "content_value": "Did the cost change whether you thought it was worth doing? How do you think about that now? | What is the difference between being brave and just being stubborn? | Have you ever stayed quiet when you should have spoken up? What made you stay quiet? | What would need to be true for you to be more likely to speak up in a similar situation in the future?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 124
  );

  -- Lesson 17: How Your Actions Affect Others
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Your Actions Affect Others', '3SL1 [3SL1d] (87%) PRIMARY | 3R9 (85%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/66.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Ripple effects and moral responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a specific action you took — even a small one — that had a ripple effect on someone else. Did you anticipate it? | Do we have a responsibility to think about effects on people beyond the person we are directly dealing with? | Have you ever been affected by someone else''s action that was not directed at you at all? | Where does your responsibility for the effects of your actions end? Does it matter whether you knew the effect would happen? | What is one thing you do regularly that probably has an effect on someone else that you haven''t fully thought about?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Your Actions Affect Others',
    '{"lesson_name": "How Your Actions Affect Others", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R9 (85%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Ripple effects and moral responsibility"}, {"content_key": "rapid_questions", "content_value": "Describe a specific action you took \u2014 even a small one \u2014 that had a ripple effect on someone else. Did you anticipate it? | Do we have a responsibility to think about effects on people beyond the person we are directly dealing with? | Have you ever been affected by someone else''s action that was not directed at you at all? | Where does your responsibility for the effects of your actions end? Does it matter whether you knew the effect would happen? | What is one thing you do regularly that probably has an effect on someone else that you haven''t fully thought about?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 132
  );

  -- Lesson 18: What Character Looks Like Under Pressure
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Character Looks Like Under Pressure', '3SL1 [3SL1d] (87%) PRIMARY | 3R3 (84%) SECONDARY | 3R6 (82%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/64.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Integrity when it isn''t easy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a moment when you were under real pressure — social pressure, time pressure, or pressure to conform — and had to decide what to do. What did you choose? | Is who you are under pressure the same as who you are when things are easy? Should it be? | What conditions make it harder for you to act consistently with your values? | Have you ever acted in a way that surprised yourself — either better or worse than you expected? What does that tell you? | What is one pressure you face regularly that you are still figuring out how to handle?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Character Looks Like Under Pressure',
    '{"lesson_name": "What Character Looks Like Under Pressure", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R3 (84%) SECONDARY | 3R6 (82%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Integrity when it isn''t easy"}, {"content_key": "rapid_questions", "content_value": "Describe a moment when you were under real pressure \u2014 social pressure, time pressure, or pressure to conform \u2014 and had to decide what to do. What did you choose? | Is who you are under pressure the same as who you are when things are easy? Should it be? | What conditions make it harder for you to act consistently with your values? | Have you ever acted in a way that surprised yourself \u2014 either better or worse than you expected? What does that tell you? | What is one pressure you face regularly that you are still figuring out how to handle?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 140
  );

  -- Lesson 19: Understanding Both Sides of a Disagreement
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'Understanding Both Sides of a Disagreement', '3SL1 [3SL1d] (87%) PRIMARY | 3R6 (85%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Perspective and intellectual humility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a disagreement you had where you later understood the other person''s position better than when you were in it. What changed? | What does it actually take to understand a position you disagree with — not just know what it is, but actually get why someone would hold it? | Can you hold your own position and genuinely understand a competing one at the same time? | What''s the difference between understanding an argument and agreeing with it? | Is there a position you currently hold that you haven''t really stress-tested — that you believe but haven''t seriously tried to argue against?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Understanding Both Sides of a Disagreement',
    '{"lesson_name": "Understanding Both Sides of a Disagreement", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R6 (85%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Perspective and intellectual humility"}, {"content_key": "rapid_questions", "content_value": "Describe a disagreement you had where you later understood the other person''s position better than when you were in it. What changed? | What does it actually take to understand a position you disagree with \u2014 not just know what it is, but actually get why someone would hold it? | Can you hold your own position and genuinely understand a competing one at the same time? | What''s the difference between understanding an argument and agreeing with it? | Is there a position you currently hold that you haven''t really stress-tested \u2014 that you believe but haven''t seriously tried to argue against?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 148
  );

  -- Lesson 20: When You Notice Something Others Don't
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When You Notice Something Others Don''t', '3SL1 [3SL1d] (86%) PRIMARY | 3R9 (84%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (75%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Observation, responsibility, and action', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a time you noticed something that others had missed — something unfair, something wrong, or something that needed attention. What did you do? | Once you''ve noticed something, do you have a responsibility to act on it? Where does that responsibility come from? | What makes it easier or harder to act on something you noticed when others haven''t? | Is there a difference between not knowing something and looking away from something? Does the difference matter morally? | What is something you''ve noticed in your classroom or school that hasn''t been addressed and that you think matters?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When You Notice Something Others Don''t',
    '{"lesson_name": "When You Notice Something Others Don''t", "lesson_description": "3SL1 [3SL1d] (86%) PRIMARY | 3R9 (84%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (75%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Observation, responsibility, and action"}, {"content_key": "rapid_questions", "content_value": "Describe a time you noticed something that others had missed \u2014 something unfair, something wrong, or something that needed attention. What did you do? | Once you''ve noticed something, do you have a responsibility to act on it? Where does that responsibility come from? | What makes it easier or harder to act on something you noticed when others haven''t? | Is there a difference between not knowing something and looking away from something? Does the difference matter morally? | What is something you''ve noticed in your classroom or school that hasn''t been addressed and that you think matters?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 156
  );

  -- Lesson 21: What Persistence Actually Is
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Persistence Actually Is', '3SL1 [3SL1d] (86%) PRIMARY | 3R2 (83%) SECONDARY | 3R3 (80%) SECONDARY | 3-5L1 (75%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/9.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Persistence vs. stubbornness vs. adaptation', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the difference between persisting toward a goal and just refusing to admit you were wrong about the approach? | Describe a time when you kept trying something that wasn''t working. How did you know whether to change strategy or keep going? | Is there a goal you''ve been working toward for a long time? What keeps you going when it''s not working? | Have you ever given up on something you wish you had kept going? What would it have taken to continue? | What does real persistence look like — is it the same effort repeated, or effort that adapts and learns?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Persistence Actually Is',
    '{"lesson_name": "What Persistence Actually Is", "lesson_description": "3SL1 [3SL1d] (86%) PRIMARY | 3R2 (83%) SECONDARY | 3R3 (80%) SECONDARY | 3-5L1 (75%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Persistence vs. stubbornness vs. adaptation"}, {"content_key": "rapid_questions", "content_value": "What is the difference between persisting toward a goal and just refusing to admit you were wrong about the approach? | Describe a time when you kept trying something that wasn''t working. How did you know whether to change strategy or keep going? | Is there a goal you''ve been working toward for a long time? What keeps you going when it''s not working? | Have you ever given up on something you wish you had kept going? What would it have taken to continue? | What does real persistence look like \u2014 is it the same effort repeated, or effort that adapts and learns?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 164
  );

  -- Lesson 22: What Integrity Looks Like in Small Moments
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Integrity Looks Like in Small Moments', '3SL1 [3SL1d] (87%) PRIMARY | 3R3 (85%) SECONDARY | 3R2 (82%) SECONDARY | 3-5L1 (77%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Character in everyday life', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe something you did recently when no one was watching that reflected who you want to be. What was it? | Is there a pattern in the small moments where you act consistently with your values versus the ones where you don''t? | What is the smallest unit of integrity — the smallest situation in which character is expressed? | Is it enough to do the right thing in big obvious situations if you cut corners in small ones? Why or why not? | What one small, regular decision could you make differently this week that would reflect what you actually believe?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Integrity Looks Like in Small Moments',
    '{"lesson_name": "What Integrity Looks Like in Small Moments", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R3 (85%) SECONDARY | 3R2 (82%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Character in everyday life"}, {"content_key": "rapid_questions", "content_value": "Describe something you did recently when no one was watching that reflected who you want to be. What was it? | Is there a pattern in the small moments where you act consistently with your values versus the ones where you don''t? | What is the smallest unit of integrity \u2014 the smallest situation in which character is expressed? | Is it enough to do the right thing in big obvious situations if you cut corners in small ones? Why or why not? | What one small, regular decision could you make differently this week that would reflect what you actually believe?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 172
  );

  -- Lesson 23: How Small Actions Build Into Patterns
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Small Actions Build Into Patterns', '3SL1 [3SL1d] (87%) PRIMARY | 3R2 (85%) SECONDARY | 3R9 (81%) SECONDARY | 3-5L1 (77%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/84.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Cumulative effects of daily choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Can you think of a pattern in your life — good or unwanted — that formed through the accumulation of small repeated choices? | At what point did the small choices stop being decisions and start being automatic? Did you notice it happening? | If you wanted to build a new positive pattern, what would the smallest possible starting unit be? | What is a pattern you see in your classroom — not in any one person, but in the group — that came from small repeated actions? | If every student made one small consistent change to how they worked in class, what change would you choose and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Small Actions Build Into Patterns',
    '{"lesson_name": "How Small Actions Build Into Patterns", "lesson_description": "3SL1 [3SL1d] (87%) PRIMARY | 3R2 (85%) SECONDARY | 3R9 (81%) SECONDARY | 3-5L1 (77%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Cumulative effects of daily choices"}, {"content_key": "rapid_questions", "content_value": "Can you think of a pattern in your life \u2014 good or unwanted \u2014 that formed through the accumulation of small repeated choices? | At what point did the small choices stop being decisions and start being automatic? Did you notice it happening? | If you wanted to build a new positive pattern, what would the smallest possible starting unit be? | What is a pattern you see in your classroom \u2014 not in any one person, but in the group \u2014 that came from small repeated actions? | If every student made one small consistent change to how they worked in class, what change would you choose and why?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 180
  );

  -- Lesson 24: When Change Is Difficult Even When It's Right
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Change Is Difficult Even When It''s Right', '3SL1 [3SL1d] (86%) PRIMARY | 3R2 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'The psychology of change and growth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a time when you knew you should change something about how you were acting or thinking, but found it very difficult to actually do it. What made it hard? | Is there a difference between knowing a change is right and being motivated to make it? What fills that gap? | Have you ever been asked to change something about yourself that felt like it was asking you to be less of who you are? | What helps you actually change a habit or behavior versus just intending to? | What is something you are currently trying to change about how you work, relate to others, or approach challenges?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Change Is Difficult Even When It''s Right',
    '{"lesson_name": "When Change Is Difficult Even When It''s Right", "lesson_description": "3SL1 [3SL1d] (86%) PRIMARY | 3R2 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "The psychology of change and growth"}, {"content_key": "rapid_questions", "content_value": "Describe a time when you knew you should change something about how you were acting or thinking, but found it very difficult to actually do it. What made it hard? | Is there a difference between knowing a change is right and being motivated to make it? What fills that gap? | Have you ever been asked to change something about yourself that felt like it was asking you to be less of who you are? | What helps you actually change a habit or behavior versus just intending to? | What is something you are currently trying to change about how you work, relate to others, or approach challenges?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 188
  );

  -- Lesson 25: What Makes Something Worth Doing Without Recognition
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What Makes Something Worth Doing Without Recognition', '3SL1 [3SL1d] (86%) PRIMARY | 3R3 (84%) SECONDARY | 3R6 (82%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Intrinsic motivation and values', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe something you do — or have done — that no one knows about or recognizes. Why do you do it? | Is there something that matters to you that you would keep doing even if it were never acknowledged? What is it? | What is the difference between doing something because you care about it and doing it because it makes you look good? | Have you ever stopped doing something good because no one noticed? What does that tell you about your motivation? | What is one thing you believe is worth doing even when — especially when — it goes unrecognized?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes Something Worth Doing Without Recognition',
    '{"lesson_name": "What Makes Something Worth Doing Without Recognition", "lesson_description": "3SL1 [3SL1d] (86%) PRIMARY | 3R3 (84%) SECONDARY | 3R6 (82%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Intrinsic motivation and values"}, {"content_key": "rapid_questions", "content_value": "Describe something you do \u2014 or have done \u2014 that no one knows about or recognizes. Why do you do it? | Is there something that matters to you that you would keep doing even if it were never acknowledged? What is it? | What is the difference between doing something because you care about it and doing it because it makes you look good? | Have you ever stopped doing something good because no one noticed? What does that tell you about your motivation? | What is one thing you believe is worth doing even when \u2014 especially when \u2014 it goes unrecognized?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 196
  );

  -- Lesson 26: How Perspective Shapes What We See
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How Perspective Shapes What We See', '3SL1 [3SL1d] (86%) PRIMARY | 3R6 (85%) SECONDARY | 3R9 (83%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/38.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Observation, perspective, and how vantage point shapes understanding', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a situation where you and someone else observed the same event and came away with completely different descriptions. How do you explain the difference? | Is there such a thing as a view from nowhere — an observation free of any perspective? Or is all seeing done from somewhere? | What perspective do you bring to your classroom that others might not? What do you see that others miss? | Have you ever had your perspective expanded by learning where someone else was standing? What changed? | What would you need to do to understand a perspective that is very far from your own experience — is it even possible?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Perspective Shapes What We See',
    '{"lesson_name": "How Perspective Shapes What We See", "lesson_description": "3SL1 [3SL1d] (86%) PRIMARY | 3R6 (85%) SECONDARY | 3R9 (83%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Observation, perspective, and how vantage point shapes understanding"}, {"content_key": "rapid_questions", "content_value": "Describe a situation where you and someone else observed the same event and came away with completely different descriptions. How do you explain the difference? | Is there such a thing as a view from nowhere \u2014 an observation free of any perspective? Or is all seeing done from somewhere? | What perspective do you bring to your classroom that others might not? What do you see that others miss? | Have you ever had your perspective expanded by learning where someone else was standing? What changed? | What would you need to do to understand a perspective that is very far from your own experience \u2014 is it even possible?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 204
  );

  -- Lesson 27: When Honesty Is More Complicated Than Telling the Truth
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'When Honesty Is More Complicated Than Telling the Truth', '3SL1 [3SL1d] (85%) PRIMARY | 3R3 (84%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/86.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Nuanced honesty and competing obligations', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Describe a time when telling the truth was more complicated than just saying the accurate thing. What made it complicated? | Is there a difference between being technically truthful and being fully honest? Can you give an example? | When does timing and delivery change whether something honest is also kind? | Have you ever told the truth in a way that wasn''t honest — accurate words but a misleading impression? What happened? | What do you owe the people you care about when it comes to honesty — and does that obligation have limits?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Honesty Is More Complicated Than Telling the Truth',
    '{"lesson_name": "When Honesty Is More Complicated Than Telling the Truth", "lesson_description": "3SL1 [3SL1d] (85%) PRIMARY | 3R3 (84%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Nuanced honesty and competing obligations"}, {"content_key": "rapid_questions", "content_value": "Describe a time when telling the truth was more complicated than just saying the accurate thing. What made it complicated? | Is there a difference between being technically truthful and being fully honest? Can you give an example? | When does timing and delivery change whether something honest is also kind? | Have you ever told the truth in a way that wasn''t honest \u2014 accurate words but a misleading impression? What happened? | What do you owe the people you care about when it comes to honesty \u2014 and does that obligation have limits?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 212
  );

  -- Lesson 28: What You Owe to the Communities You Belong To
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What You Owe to the Communities You Belong To', '3SL1 [3SL1d] (85%) PRIMARY | 3R9 (84%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/39.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Civic and social obligation', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Is there a difference between what you are required to give and what you choose to give to a community? Does that difference matter? | What happens to a community when most members take more than they contribute? | Have you ever given to a community in a way that cost you something? What did it feel like? | If you think of your classroom as a community: what is one thing you could give that would make it genuinely better, and what has been stopping you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What You Owe to the Communities You Belong To',
    '{"lesson_name": "What You Owe to the Communities You Belong To", "lesson_description": "3SL1 [3SL1d] (85%) PRIMARY | 3R9 (84%) SECONDARY | 3R8 (82%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Civic and social obligation"}, {"content_key": "rapid_questions", "content_value": "Is there a difference between what you are required to give and what you choose to give to a community? Does that difference matter? | What happens to a community when most members take more than they contribute? | Have you ever given to a community in a way that cost you something? What did it feel like? | If you think of your classroom as a community: what is one thing you could give that would make it genuinely better, and what has been stopping you?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 220
  );

  -- Lesson 29: What It Means to Actually Change
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'What It Means to Actually Change', '3SL1 [3SL1d] (85%) PRIMARY | 3R3 (84%) SECONDARY | 3R2 (82%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/100.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Genuine growth vs. performed change', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the difference between changing how you act and actually changing how you think? | Have you ever changed your behavior to make someone happy, without actually changing your mind? What happened over time? | Is there something you believed was true about yourself that turned out not to be — or not to be the whole picture? | What conditions make it possible for a person to genuinely change? What makes it impossible? | What is one thing you are in the process of actually changing — not just intending to change — right now?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What It Means to Actually Change',
    '{"lesson_name": "What It Means to Actually Change", "lesson_description": "3SL1 [3SL1d] (85%) PRIMARY | 3R3 (84%) SECONDARY | 3R2 (82%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Genuine growth vs. performed change"}, {"content_key": "rapid_questions", "content_value": "What is the difference between changing how you act and actually changing how you think? | Have you ever changed your behavior to make someone happy, without actually changing your mind? What happened over time? | Is there something you believed was true about yourself that turned out not to be \u2014 or not to be the whole picture? | What conditions make it possible for a person to genuinely change? What makes it impossible? | What is one thing you are in the process of actually changing \u2014 not just intending to change \u2014 right now?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 228
  );

  -- Lesson 30: How What You Notice Shapes What You Think
  v_lesson_id := gen_random_uuid();

  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    v_lesson_id, 'How What You Notice Shapes What You Think', '3SL1 [3SL1d] (84%) PRIMARY | 3R6 (84%) SECONDARY | 3R2 (82%) SECONDARY | 3-5L1 (76%) SECONDARY', 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2',
    'HARD', 'Listening Comprehension', NOW(), 'ee42009d-d83e-4c12-abd1-2d8fff809b18',
    'TEACHER', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/35.png'
  );

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Observation, attention, and how they form our views', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What kinds of things do you tend to notice first when you walk into a room, meet someone new, or start a book? | Do you think what you notice says something about who you are or what matters to you? | Has the way you notice things changed since you were younger — what do you pay attention to now that you didn''t before? | Can you think of a time when two people who shared the same experience noticed completely different things — what explains that? | If attention is a skill that can be developed, what is one thing you could practice noticing more carefully this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Solar System Exploration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How What You Notice Shapes What You Think',
    '{"lesson_name": "How What You Notice Shapes What You Think", "lesson_description": "3SL1 [3SL1d] (84%) PRIMARY | 3R6 (84%) SECONDARY | 3R2 (82%) SECONDARY | 3-5L1 (76%) SECONDARY", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Listening Comprehension", "contents": [{"content_key": "theme", "content_value": "Observation, attention, and how they form our views"}, {"content_key": "rapid_questions", "content_value": "What kinds of things do you tend to notice first when you walk into a room, meet someone new, or start a book? | Do you think what you notice says something about who you are or what matters to you? | Has the way you notice things changed since you were younger \u2014 what do you pay attention to now that you didn''t before? | Can you think of a time when two people who shared the same experience noticed completely different things \u2014 what explains that? | If attention is a skill that can be developed, what is one thing you could practice noticing more carefully this week?"}, {"content_key": "example_heading", "content_value": "Solar System Exploration"}, {"content_key": "example_content", "content_value": "What is the largest planet? | Which planet is known as the Red Planet? | How many moons does Earth have? | What is the sun made of? | Which planet has rings?"}]}',
    'published', true, NOW()
  );

  INSERT INTO bantrly.program_lesson_sequence_new (
    learning_path_id, version_id, school_id, lesson_id,
    lesson_type, grade, section, difficulty_level, sort_order
  ) VALUES (
    v_learning_path_id, v_custom_version_id, 'e844d6ae-cbfd-45f9-ba3b-d0b3f1dde266', v_lesson_id,
    'Listening Comprehension', 3, NULL, 'HARD', 236
  );

END $$;
