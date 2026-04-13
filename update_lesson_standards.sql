DO $$
BEGIN

-- Module 1: A New Seat
UPDATE bantrly.lesson SET lesson_description = '3R3 (95%) PRIMARY | 3R1 (84%) SECONDARY | 3R9 (81%) SECONDARY' WHERE lesson_name = 'A New Seat' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (95%) PRIMARY | 3R1 (84%) SECONDARY | 3R9 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A New Seat' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: The Missing Pencil
UPDATE bantrly.lesson SET lesson_description = '3R3 (94%) PRIMARY | 3R1 (83%) SECONDARY | 3R9 (80%) SECONDARY' WHERE lesson_name = 'The Missing Pencil' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (94%) PRIMARY | 3R1 (83%) SECONDARY | 3R9 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Missing Pencil' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Too Loud
UPDATE bantrly.lesson SET lesson_description = '3R3 (93%) PRIMARY | 3R1 (83%) SECONDARY | 3R9 (80%) SECONDARY' WHERE lesson_name = 'Too Loud' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (93%) PRIMARY | 3R1 (83%) SECONDARY | 3R9 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Too Loud' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Sharing the Crayons
UPDATE bantrly.lesson SET lesson_description = '3R3 (93%) PRIMARY | 3R1 (82%) SECONDARY | 3R9 (80%) SECONDARY' WHERE lesson_name = 'Sharing the Crayons' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (93%) PRIMARY | 3R1 (82%) SECONDARY | 3R9 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Sharing the Crayons' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: A Rainy Day
UPDATE bantrly.lesson SET lesson_description = '3R3 (92%) PRIMARY | 3R1 (82%) SECONDARY | 3R9 (79%) SECONDARY' WHERE lesson_name = 'A Rainy Day' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (92%) PRIMARY | 3R1 (82%) SECONDARY | 3R9 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Rainy Day' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: First Day Jitters
UPDATE bantrly.lesson SET lesson_description = '3R3 (92%) PRIMARY | 3R1 (81%) SECONDARY | 3R9 (79%) SECONDARY' WHERE lesson_name = 'First Day Jitters' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (92%) PRIMARY | 3R1 (81%) SECONDARY | 3R9 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'First Day Jitters' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: The Fair Turn
UPDATE bantrly.lesson SET lesson_description = '3R3 (93%) PRIMARY | 3SL1 (84%) SECONDARY | 3R9 (82%) SECONDARY' WHERE lesson_name = 'The Fair Turn' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (93%) PRIMARY | 3SL1 (84%) SECONDARY | 3R9 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Fair Turn' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Speaking Up
UPDATE bantrly.lesson SET lesson_description = '3R3 (92%) PRIMARY | 3SL1 (85%) SECONDARY | 3R9 (81%) SECONDARY' WHERE lesson_name = 'Speaking Up' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (92%) PRIMARY | 3SL1 (85%) SECONDARY | 3R9 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Speaking Up' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: When Friends Disagree
UPDATE bantrly.lesson SET lesson_description = '3R3 (92%) PRIMARY | 3SL1 (84%) SECONDARY | 3R9 (82%) SECONDARY' WHERE lesson_name = 'When Friends Disagree' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (92%) PRIMARY | 3SL1 (84%) SECONDARY | 3R9 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'When Friends Disagree' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: The Group Project
UPDATE bantrly.lesson SET lesson_description = '3R3 (91%) PRIMARY | 3SL1 (85%) SECONDARY | 3R9 (81%) SECONDARY' WHERE lesson_name = 'The Group Project' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (91%) PRIMARY | 3SL1 (85%) SECONDARY | 3R9 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Group Project' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Left Out at Lunch
UPDATE bantrly.lesson SET lesson_description = '3R3 (91%) PRIMARY | 3SL1 (84%) SECONDARY | 3R9 (81%) SECONDARY' WHERE lesson_name = 'Left Out at Lunch' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (91%) PRIMARY | 3SL1 (84%) SECONDARY | 3R9 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Left Out at Lunch' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Keeping a Promise
UPDATE bantrly.lesson SET lesson_description = '3R3 (90%) PRIMARY | 3SL1 (84%) SECONDARY | 3R9 (80%) SECONDARY' WHERE lesson_name = 'Keeping a Promise' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (90%) PRIMARY | 3SL1 (84%) SECONDARY | 3R9 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Keeping a Promise' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: The Too-Fast Game
UPDATE bantrly.lesson SET lesson_description = '3R3 (90%) PRIMARY | 3SL1 (83%) SECONDARY | 3R9 (80%) SECONDARY' WHERE lesson_name = 'The Too-Fast Game' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (90%) PRIMARY | 3SL1 (83%) SECONDARY | 3R9 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Too-Fast Game' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Different Ways to Learn
UPDATE bantrly.lesson SET lesson_description = '3R3 (90%) PRIMARY | 3SL1 (83%) SECONDARY | 3R9 (80%) SECONDARY' WHERE lesson_name = 'Different Ways to Learn' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (90%) PRIMARY | 3SL1 (83%) SECONDARY | 3R9 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Different Ways to Learn' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: A Mistake in Class
UPDATE bantrly.lesson SET lesson_description = '3R3 (89%) PRIMARY | 3SL1 (83%) SECONDARY | 3R9 (80%) SECONDARY' WHERE lesson_name = 'A Mistake in Class' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (89%) PRIMARY | 3SL1 (83%) SECONDARY | 3R9 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Mistake in Class' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Making Things Right
UPDATE bantrly.lesson SET lesson_description = '3R3 (91%) PRIMARY | 3R9 (86%) SECONDARY | 3SL1 (84%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'Making Things Right' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (91%) PRIMARY | 3R9 (86%) SECONDARY | 3SL1 (84%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Making Things Right' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: The New Student
UPDATE bantrly.lesson SET lesson_description = '3R3 (91%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (84%) SECONDARY | 3R2 (80%) SECONDARY' WHERE lesson_name = 'The New Student' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (91%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (84%) SECONDARY | 3R2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The New Student' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: When It''s Hard to Focus
UPDATE bantrly.lesson SET lesson_description = '3R3 (90%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (83%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'When It''s Hard to Focus' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (90%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (83%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'When It''s Hard to Focus' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Two Friends, One Ball
UPDATE bantrly.lesson SET lesson_description = '3R3 (90%) PRIMARY | 3R9 (86%) SECONDARY | 3SL1 (83%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'Two Friends, One Ball' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (90%) PRIMARY | 3R9 (86%) SECONDARY | 3SL1 (83%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Two Friends, One Ball' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: The Big Test Worry
UPDATE bantrly.lesson SET lesson_description = '3R3 (89%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (83%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'The Big Test Worry' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (89%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (83%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Big Test Worry' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Noticing When Someone Is Sad
UPDATE bantrly.lesson SET lesson_description = '3R3 (89%) PRIMARY | 3R9 (86%) SECONDARY | 3SL1 (84%) SECONDARY | 3R2 (80%) SECONDARY' WHERE lesson_name = 'Noticing When Someone Is Sad' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (89%) PRIMARY | 3R9 (86%) SECONDARY | 3SL1 (84%) SECONDARY | 3R2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Noticing When Someone Is Sad' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Changing the Plan
UPDATE bantrly.lesson SET lesson_description = '3R3 (89%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (83%) SECONDARY | 3R2 (78%) SECONDARY' WHERE lesson_name = 'Changing the Plan' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (89%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (83%) SECONDARY | 3R2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Changing the Plan' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Standing Up for a Friend
UPDATE bantrly.lesson SET lesson_description = '3R3 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (84%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'Standing Up for a Friend' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3SL1 (84%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Standing Up for a Friend' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: A Pattern I Noticed in Myself
UPDATE bantrly.lesson SET lesson_description = '3R3 (89%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (84%) SECONDARY | 3SL1 (81%) SECONDARY' WHERE lesson_name = 'A Pattern I Noticed in Myself' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (89%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (84%) SECONDARY | 3SL1 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Pattern I Noticed in Myself' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Saying No Kindly
UPDATE bantrly.lesson SET lesson_description = '3R3 (89%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (83%) SECONDARY | 3SL1 (80%) SECONDARY' WHERE lesson_name = 'Saying No Kindly' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (89%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (83%) SECONDARY | 3SL1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Saying No Kindly' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: When the Rules Don''t Seem Fair
UPDATE bantrly.lesson SET lesson_description = '3R3 (88%) PRIMARY | 3R9 (86%) SECONDARY | 3R2 (83%) SECONDARY | 3SL1 (81%) SECONDARY' WHERE lesson_name = 'When the Rules Don''t Seem Fair' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (88%) PRIMARY | 3R9 (86%) SECONDARY | 3R2 (83%) SECONDARY | 3SL1 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'When the Rules Don''t Seem Fair' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Taking Care of Someone Else''s Feelings
UPDATE bantrly.lesson SET lesson_description = '3R3 (88%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (83%) SECONDARY | 3SL1 (80%) SECONDARY' WHERE lesson_name = 'Taking Care of Someone Else''s Feelings' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (88%) PRIMARY | 3R9 (87%) SECONDARY | 3R2 (83%) SECONDARY | 3SL1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Taking Care of Someone Else''s Feelings' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: A Long Wait
UPDATE bantrly.lesson SET lesson_description = '3R3 (87%) PRIMARY | 3R9 (86%) SECONDARY | 3R2 (83%) SECONDARY | 3SL1 (80%) SECONDARY' WHERE lesson_name = 'A Long Wait' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (87%) PRIMARY | 3R9 (86%) SECONDARY | 3R2 (83%) SECONDARY | 3SL1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Long Wait' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: Changing How I Think About Mistakes
UPDATE bantrly.lesson SET lesson_description = '3R3 (87%) PRIMARY | 3R9 (86%) SECONDARY | 3R2 (84%) SECONDARY | 3SL1 (80%) SECONDARY' WHERE lesson_name = 'Changing How I Think About Mistakes' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (87%) PRIMARY | 3R9 (86%) SECONDARY | 3R2 (84%) SECONDARY | 3SL1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Changing How I Think About Mistakes' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 1: The Group Decides Together
UPDATE bantrly.lesson SET lesson_description = '3R3 (87%) PRIMARY | 3R9 (88%) SECONDARY | 3R2 (85%) SECONDARY | 3SL1 (81%) SECONDARY' WHERE lesson_name = 'The Group Decides Together' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3R3 (87%) PRIMARY | 3R9 (88%) SECONDARY | 3R2 (85%) SECONDARY | 3SL1 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Group Decides Together' AND training_module_id = '1c83484e-7cf1-4e26-8503-62cff6d07789' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Garden Helper
UPDATE bantrly.lesson SET lesson_description = '3L6 (94%) PRIMARY | 3R1 (85%) SECONDARY | 3R3 (82%) SECONDARY' WHERE lesson_name = 'The Garden Helper' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (94%) PRIMARY | 3R1 (85%) SECONDARY | 3R3 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Garden Helper' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: A Trip to the Library
UPDATE bantrly.lesson SET lesson_description = '3L6 (93%) PRIMARY | 3R1 (84%) SECONDARY | 3R3 (81%) SECONDARY' WHERE lesson_name = 'A Trip to the Library' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (93%) PRIMARY | 3R1 (84%) SECONDARY | 3R3 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Trip to the Library' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Learning to Ride
UPDATE bantrly.lesson SET lesson_description = '3L6 (93%) PRIMARY | 3R1 (84%) SECONDARY | 3R3 (81%) SECONDARY' WHERE lesson_name = 'Learning to Ride' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (93%) PRIMARY | 3R1 (84%) SECONDARY | 3R3 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Learning to Ride' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Baking Day
UPDATE bantrly.lesson SET lesson_description = '3L6 (92%) PRIMARY | 3R1 (83%) SECONDARY | 3R3 (80%) SECONDARY' WHERE lesson_name = 'The Baking Day' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (92%) PRIMARY | 3R1 (83%) SECONDARY | 3R3 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Baking Day' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: A Sunny Walk
UPDATE bantrly.lesson SET lesson_description = '3L6 (92%) PRIMARY | 3R1 (83%) SECONDARY | 3R3 (80%) SECONDARY' WHERE lesson_name = 'A Sunny Walk' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (92%) PRIMARY | 3R1 (83%) SECONDARY | 3R3 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Sunny Walk' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Classroom Pet
UPDATE bantrly.lesson SET lesson_description = '3L6 (91%) PRIMARY | 3R1 (83%) SECONDARY | 3R3 (80%) SECONDARY' WHERE lesson_name = 'The Classroom Pet' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (91%) PRIMARY | 3R1 (83%) SECONDARY | 3R3 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Classroom Pet' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Storm at Sea
UPDATE bantrly.lesson SET lesson_description = '3L6 (92%) PRIMARY | 3R3 (84%) SECONDARY | 3R1 (82%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Storm at Sea' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (92%) PRIMARY | 3R3 (84%) SECONDARY | 3R1 (82%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Storm at Sea' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Ant Colony
UPDATE bantrly.lesson SET lesson_description = '3L6 (92%) PRIMARY | 3R3 (84%) SECONDARY | 3R1 (82%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'The Ant Colony' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (92%) PRIMARY | 3R3 (84%) SECONDARY | 3R1 (82%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Ant Colony' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: A New Pet Fish
UPDATE bantrly.lesson SET lesson_description = '3L6 (91%) PRIMARY | 3R3 (84%) SECONDARY | 3R1 (81%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'A New Pet Fish' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (91%) PRIMARY | 3R3 (84%) SECONDARY | 3R1 (81%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A New Pet Fish' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Desert Animals
UPDATE bantrly.lesson SET lesson_description = '3L6 (91%) PRIMARY | 3R3 (83%) SECONDARY | 3R1 (81%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Desert Animals' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (91%) PRIMARY | 3R3 (83%) SECONDARY | 3R1 (81%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Desert Animals' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Mail Carriers
UPDATE bantrly.lesson SET lesson_description = '3L6 (91%) PRIMARY | 3R3 (83%) SECONDARY | 3R1 (81%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Mail Carriers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (91%) PRIMARY | 3R3 (83%) SECONDARY | 3R1 (81%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Mail Carriers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Frozen Pond
UPDATE bantrly.lesson SET lesson_description = '3L6 (90%) PRIMARY | 3R3 (83%) SECONDARY | 3R1 (80%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'The Frozen Pond' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (90%) PRIMARY | 3R3 (83%) SECONDARY | 3R1 (80%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Frozen Pond' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: A Busy Market
UPDATE bantrly.lesson SET lesson_description = '3L6 (90%) PRIMARY | 3R3 (83%) SECONDARY | 3R1 (80%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'A Busy Market' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (90%) PRIMARY | 3R3 (83%) SECONDARY | 3R1 (80%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Busy Market' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Old Oak Tree
UPDATE bantrly.lesson SET lesson_description = '3L6 (90%) PRIMARY | 3R3 (82%) SECONDARY | 3R1 (80%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'The Old Oak Tree' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (90%) PRIMARY | 3R3 (82%) SECONDARY | 3R1 (80%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Old Oak Tree' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Rainy Season
UPDATE bantrly.lesson SET lesson_description = '3L6 (89%) PRIMARY | 3R3 (82%) SECONDARY | 3R1 (80%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'The Rainy Season' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (89%) PRIMARY | 3R3 (82%) SECONDARY | 3R1 (80%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Rainy Season' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Bees and Flowers
UPDATE bantrly.lesson SET lesson_description = '3L6 (91%) PRIMARY | 3R3 (86%) SECONDARY | 3R9 (82%) SECONDARY | 3L1 (80%) SECONDARY' WHERE lesson_name = 'Bees and Flowers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (91%) PRIMARY | 3R3 (86%) SECONDARY | 3R9 (82%) SECONDARY | 3L1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Bees and Flowers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Mountain Hikers
UPDATE bantrly.lesson SET lesson_description = '3L6 (91%) PRIMARY | 3R3 (86%) SECONDARY | 3R9 (81%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Mountain Hikers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (91%) PRIMARY | 3R3 (86%) SECONDARY | 3R9 (81%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Mountain Hikers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Robot Helper
UPDATE bantrly.lesson SET lesson_description = '3L6 (90%) PRIMARY | 3R3 (85%) SECONDARY | 3R9 (81%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'The Robot Helper' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (90%) PRIMARY | 3R3 (85%) SECONDARY | 3R9 (81%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Robot Helper' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: A Long Migration
UPDATE bantrly.lesson SET lesson_description = '3L6 (90%) PRIMARY | 3R3 (85%) SECONDARY | 3R9 (81%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'A Long Migration' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (90%) PRIMARY | 3R3 (85%) SECONDARY | 3R9 (81%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Long Migration' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The School Play
UPDATE bantrly.lesson SET lesson_description = '3L6 (89%) PRIMARY | 3R3 (84%) SECONDARY | 3R9 (80%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'The School Play' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (89%) PRIMARY | 3R3 (84%) SECONDARY | 3R9 (80%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The School Play' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Wind Energy
UPDATE bantrly.lesson SET lesson_description = '3L6 (89%) PRIMARY | 3R3 (84%) SECONDARY | 3R9 (80%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Wind Energy' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (89%) PRIMARY | 3R3 (84%) SECONDARY | 3R9 (80%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Wind Energy' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Ocean Explorers
UPDATE bantrly.lesson SET lesson_description = '3L6 (88%) PRIMARY | 3R3 (84%) SECONDARY | 3R9 (80%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Ocean Explorers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (88%) PRIMARY | 3R3 (84%) SECONDARY | 3R9 (80%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Ocean Explorers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: A Fire Station Visit
UPDATE bantrly.lesson SET lesson_description = '3L6 (88%) PRIMARY | 3R3 (83%) SECONDARY | 3R9 (80%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'A Fire Station Visit' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (88%) PRIMARY | 3R3 (83%) SECONDARY | 3R9 (80%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Fire Station Visit' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Democracy Vote
UPDATE bantrly.lesson SET lesson_description = '3L6 (90%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (83%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'The Democracy Vote' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (90%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (83%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Democracy Vote' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Saving Water
UPDATE bantrly.lesson SET lesson_description = '3L6 (90%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (83%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'Saving Water' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (90%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (83%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Saving Water' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Inventor''s Workshop
UPDATE bantrly.lesson SET lesson_description = '3L6 (89%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (82%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'The Inventor''s Workshop' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (89%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (82%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Inventor''s Workshop' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Wild Horses
UPDATE bantrly.lesson SET lesson_description = '3L6 (89%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (82%) SECONDARY | 3R2 (79%) SECONDARY' WHERE lesson_name = 'Wild Horses' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (89%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (82%) SECONDARY | 3R2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Wild Horses' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: Bridges and Engineers
UPDATE bantrly.lesson SET lesson_description = '3L6 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3R3 (82%) SECONDARY | 3R2 (78%) SECONDARY' WHERE lesson_name = 'Bridges and Engineers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3R3 (82%) SECONDARY | 3R2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Bridges and Engineers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: A Comet Passes By
UPDATE bantrly.lesson SET lesson_description = '3L6 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3R3 (82%) SECONDARY | 3R2 (78%) SECONDARY' WHERE lesson_name = 'A Comet Passes By' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3R3 (82%) SECONDARY | 3R2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Comet Passes By' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 2: The Rainforest Layers
UPDATE bantrly.lesson SET lesson_description = '3L6 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3R3 (81%) SECONDARY | 3R2 (78%) SECONDARY' WHERE lesson_name = 'The Rainforest Layers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3L6 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3R3 (81%) SECONDARY | 3R2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Rainforest Layers' AND training_module_id = 'ccff362e-8ca9-4b2c-ad37-faba8542543b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Morning Routine
UPDATE bantrly.lesson SET lesson_description = '3SL1 (91%) PRIMARY | 3L1 (85%) SECONDARY | 3SL6 (82%) SECONDARY' WHERE lesson_name = 'Morning Routine' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (91%) PRIMARY | 3L1 (85%) SECONDARY | 3SL6 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Morning Routine' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: School Day Basics
UPDATE bantrly.lesson SET lesson_description = '3SL1 (90%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (81%) SECONDARY' WHERE lesson_name = 'School Day Basics' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (90%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'School Day Basics' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Recess Fun
UPDATE bantrly.lesson SET lesson_description = '3SL1 (90%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (81%) SECONDARY' WHERE lesson_name = 'Recess Fun' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (90%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Recess Fun' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Favorite Foods
UPDATE bantrly.lesson SET lesson_description = '3SL1 (89%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (80%) SECONDARY' WHERE lesson_name = 'Favorite Foods' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (89%) PRIMARY | 3L1 (84%) SECONDARY | 3SL6 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Favorite Foods' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Weekend Activities
UPDATE bantrly.lesson SET lesson_description = '3SL1 (89%) PRIMARY | 3L1 (83%) SECONDARY | 3SL6 (80%) SECONDARY' WHERE lesson_name = 'Weekend Activities' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (89%) PRIMARY | 3L1 (83%) SECONDARY | 3SL6 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Weekend Activities' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: My Family
UPDATE bantrly.lesson SET lesson_description = '3SL1 (89%) PRIMARY | 3L1 (83%) SECONDARY | 3SL6 (80%) SECONDARY' WHERE lesson_name = 'My Family' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (89%) PRIMARY | 3L1 (83%) SECONDARY | 3SL6 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'My Family' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Being a Good Friend
UPDATE bantrly.lesson SET lesson_description = '3SL1 (89%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (80%) SECONDARY' WHERE lesson_name = 'Being a Good Friend' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (89%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Being a Good Friend' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Feelings Check-In
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'Feelings Check-In' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Feelings Check-In' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Learning Something New
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'Learning Something New' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (82%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Learning Something New' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: When I Need Help
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'When I Need Help' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'When I Need Help' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: My Community
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'My Community' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'My Community' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Favorite Animals
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (78%) SECONDARY' WHERE lesson_name = 'Favorite Animals' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (81%) SECONDARY | 3SL6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Favorite Animals' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Book Talk
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY' WHERE lesson_name = 'Book Talk' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Book Talk' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Problem-Solving
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY' WHERE lesson_name = 'Problem-Solving' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3R9 (83%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Problem-Solving' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Kindness in Action
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3R9 (82%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY' WHERE lesson_name = 'Kindness in Action' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3R9 (82%) SECONDARY | 3L1 (80%) SECONDARY | 3SL6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Kindness in Action' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Why Rules Matter
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (82%) SECONDARY | 3R3 (79%) SECONDARY' WHERE lesson_name = 'Why Rules Matter' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (82%) SECONDARY | 3R3 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why Rules Matter' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Being Responsible
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (82%) SECONDARY | 3R3 (79%) SECONDARY' WHERE lesson_name = 'Being Responsible' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (82%) SECONDARY | 3R3 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Being Responsible' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Different Kinds of Smart
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY' WHERE lesson_name = 'Different Kinds of Smart' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3R9 (85%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Different Kinds of Smart' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Taking Care of Our Earth
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY' WHERE lesson_name = 'Taking Care of Our Earth' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Taking Care of Our Earth' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Teamwork Stories
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY' WHERE lesson_name = 'Teamwork Stories' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (81%) SECONDARY | 3R3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Teamwork Stories' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Standing Up for What''s Right
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY' WHERE lesson_name = 'Standing Up for What''s Right' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Standing Up for What''s Right' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Habits That Help Me Learn
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY' WHERE lesson_name = 'Habits That Help Me Learn' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Habits That Help Me Learn' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: What Leaders Do
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY' WHERE lesson_name = 'What Leaders Do' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3R9 (84%) SECONDARY | 3L1 (80%) SECONDARY | 3R3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Leaders Do' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Making Hard Choices
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Making Hard Choices' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Making Hard Choices' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: How My Actions Affect Others
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'How My Actions Affect Others' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How My Actions Affect Others' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Learning from Mistakes
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Learning from Mistakes' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Learning from Mistakes' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: What It Means to Be Fair
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'What It Means to Be Fair' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3R9 (86%) SECONDARY | 3R3 (82%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What It Means to Be Fair' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: What I Want to Be
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'What I Want to Be' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What I Want to Be' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: Noticing Change Over Time
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Noticing Change Over Time' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Noticing Change Over Time' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 3: My Strengths and Challenges
UPDATE bantrly.lesson SET lesson_description = '3SL1 (84%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'My Strengths and Challenges' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (84%) PRIMARY | 3R9 (85%) SECONDARY | 3R3 (81%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'My Strengths and Challenges' AND training_module_id = 'be2bcdc0-3737-41a5-af5c-df6b61ed94c2' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: My Favorite Animal
UPDATE bantrly.lesson SET lesson_description = '3SL4 (94%) PRIMARY | 3L6 (85%) SECONDARY | 3L1 (82%) SECONDARY' WHERE lesson_name = 'My Favorite Animal' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (94%) PRIMARY | 3L6 (85%) SECONDARY | 3L1 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'My Favorite Animal' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: What I Did This Weekend
UPDATE bantrly.lesson SET lesson_description = '3SL4 (93%) PRIMARY | 3L6 (85%) SECONDARY | 3L1 (82%) SECONDARY' WHERE lesson_name = 'What I Did This Weekend' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (93%) PRIMARY | 3L6 (85%) SECONDARY | 3L1 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What I Did This Weekend' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Why We Need Rules in Games
UPDATE bantrly.lesson SET lesson_description = '3SL4 (93%) PRIMARY | 3L6 (84%) SECONDARY | 3L1 (81%) SECONDARY' WHERE lesson_name = 'Why We Need Rules in Games' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (93%) PRIMARY | 3L6 (84%) SECONDARY | 3L1 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why We Need Rules in Games' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: My Favorite Season
UPDATE bantrly.lesson SET lesson_description = '3SL4 (92%) PRIMARY | 3L6 (84%) SECONDARY | 3L1 (81%) SECONDARY' WHERE lesson_name = 'My Favorite Season' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (92%) PRIMARY | 3L6 (84%) SECONDARY | 3L1 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'My Favorite Season' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How to Be a Good Listener
UPDATE bantrly.lesson SET lesson_description = '3SL4 (92%) PRIMARY | 3L6 (83%) SECONDARY | 3L1 (80%) SECONDARY' WHERE lesson_name = 'How to Be a Good Listener' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (92%) PRIMARY | 3L6 (83%) SECONDARY | 3L1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How to Be a Good Listener' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Something I Am Good At
UPDATE bantrly.lesson SET lesson_description = '3SL4 (92%) PRIMARY | 3L6 (83%) SECONDARY | 3L1 (80%) SECONDARY' WHERE lesson_name = 'Something I Am Good At' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (92%) PRIMARY | 3L6 (83%) SECONDARY | 3L1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Something I Am Good At' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How Recycling Helps the Planet
UPDATE bantrly.lesson SET lesson_description = '3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3L6 (82%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'How Recycling Helps the Planet' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3L6 (82%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How Recycling Helps the Planet' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Why Sleep Is Important
UPDATE bantrly.lesson SET lesson_description = '3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3L6 (82%) SECONDARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Why Sleep Is Important' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (91%) PRIMARY | 3W2 (84%) SECONDARY | 3L6 (82%) SECONDARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why Sleep Is Important' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How to Stay Safe Online
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (81%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'How to Stay Safe Online' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (81%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How to Stay Safe Online' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Why Exercise Matters
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (81%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Why Exercise Matters' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (81%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why Exercise Matters' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How to Handle a Disagreement
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'How to Handle a Disagreement' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How to Handle a Disagreement' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Why Reading Every Day Helps
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Why Reading Every Day Helps' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why Reading Every Day Helps' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How Weather Affects Our Day
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'How Weather Affects Our Day' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3W2 (83%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How Weather Affects Our Day' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: What Makes a Good Team
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3W2 (82%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'What Makes a Good Team' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3W2 (82%) SECONDARY | 3L6 (80%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Makes a Good Team' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How Plants Make Food
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3W2 (82%) SECONDARY | 3L6 (79%) SECONDARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'How Plants Make Food' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3W2 (82%) SECONDARY | 3L6 (79%) SECONDARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How Plants Make Food' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How the Water Cycle Works
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY' WHERE lesson_name = 'How the Water Cycle Works' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How the Water Cycle Works' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Why Bees Are Important
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY' WHERE lesson_name = 'Why Bees Are Important' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why Bees Are Important' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How the Human Heart Works
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY' WHERE lesson_name = 'How the Human Heart Works' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How the Human Heart Works' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: What Causes Seasons to Change
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (79%) SECONDARY' WHERE lesson_name = 'What Causes Seasons to Change' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Causes Seasons to Change' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How Gravity Works
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (79%) SECONDARY' WHERE lesson_name = 'How Gravity Works' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How Gravity Works' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Why Endangered Animals Need Protection
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY' WHERE lesson_name = 'Why Endangered Animals Need Protection' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why Endangered Animals Need Protection' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How Sound Travels
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY' WHERE lesson_name = 'How Sound Travels' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How Sound Travels' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: What Makes a Community Strong
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY' WHERE lesson_name = 'What Makes a Community Strong' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3W2 (83%) SECONDARY | 3R7 (80%) SECONDARY | 3L6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Makes a Community Strong' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How the Brain Learns New Things
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L3 (79%) SECONDARY' WHERE lesson_name = 'How the Brain Learns New Things' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L3 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How the Brain Learns New Things' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Why the Ocean Matters to All of Us
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L3 (79%) SECONDARY' WHERE lesson_name = 'Why the Ocean Matters to All of Us' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (83%) SECONDARY | 3L3 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why the Ocean Matters to All of Us' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How Voting Shapes a Community
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY' WHERE lesson_name = 'How Voting Shapes a Community' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3W2 (85%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How Voting Shapes a Community' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: What Scientists Do When They Are Wrong
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY' WHERE lesson_name = 'What Scientists Do When They Are Wrong' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Scientists Do When They Are Wrong' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How Technology Changes the Way We Communicate
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (78%) SECONDARY' WHERE lesson_name = 'How Technology Changes the Way We Communicate' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How Technology Changes the Way We Communicate' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: Why Biodiversity Matters
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (78%) SECONDARY' WHERE lesson_name = 'Why Biodiversity Matters' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (82%) SECONDARY | 3L3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Why Biodiversity Matters' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 4: How Our Choices Affect Others
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L3 (78%) SECONDARY' WHERE lesson_name = 'How Our Choices Affect Others' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3W2 (84%) SECONDARY | 3R7 (81%) SECONDARY | 3L3 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How Our Choices Affect Others' AND training_module_id = 'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Bright Bees Buzz
UPDATE bantrly.lesson SET lesson_description = '3RF2 (94%) PRIMARY | 3L2 (86%) SECONDARY | 3SL6 (83%) SECONDARY' WHERE lesson_name = 'Bright Bees Buzz' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (94%) PRIMARY | 3L2 (86%) SECONDARY | 3SL6 (83%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Bright Bees Buzz' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Tiny Turtles Turn
UPDATE bantrly.lesson SET lesson_description = '3RF2 (93%) PRIMARY | 3L2 (85%) SECONDARY | 3SL6 (82%) SECONDARY' WHERE lesson_name = 'Tiny Turtles Turn' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (93%) PRIMARY | 3L2 (85%) SECONDARY | 3SL6 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Tiny Turtles Turn' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Silly Seals Slide
UPDATE bantrly.lesson SET lesson_description = '3RF2 (93%) PRIMARY | 3L2 (85%) SECONDARY | 3SL6 (82%) SECONDARY' WHERE lesson_name = 'Silly Seals Slide' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (93%) PRIMARY | 3L2 (85%) SECONDARY | 3SL6 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Silly Seals Slide' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Lovely Lions Lie
UPDATE bantrly.lesson SET lesson_description = '3RF2 (92%) PRIMARY | 3L2 (84%) SECONDARY | 3SL6 (82%) SECONDARY' WHERE lesson_name = 'Lovely Lions Lie' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (92%) PRIMARY | 3L2 (84%) SECONDARY | 3SL6 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Lovely Lions Lie' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Fluffy Frogs Flip
UPDATE bantrly.lesson SET lesson_description = '3RF2 (92%) PRIMARY | 3L2 (84%) SECONDARY | 3SL6 (81%) SECONDARY' WHERE lesson_name = 'Fluffy Frogs Flip' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (92%) PRIMARY | 3L2 (84%) SECONDARY | 3SL6 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Fluffy Frogs Flip' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Dandy Ducks Dive
UPDATE bantrly.lesson SET lesson_description = '3RF2 (92%) PRIMARY | 3L2 (84%) SECONDARY | 3SL6 (81%) SECONDARY' WHERE lesson_name = 'Dandy Ducks Dive' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (92%) PRIMARY | 3L2 (84%) SECONDARY | 3SL6 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Dandy Ducks Dive' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Giggling Geese Gather
UPDATE bantrly.lesson SET lesson_description = '3RF2 (91%) PRIMARY | 3L2 (84%) SECONDARY | 3SL6 (81%) SECONDARY' WHERE lesson_name = 'Giggling Geese Gather' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (91%) PRIMARY | 3L2 (84%) SECONDARY | 3SL6 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Giggling Geese Gather' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Clever Cats Climb
UPDATE bantrly.lesson SET lesson_description = '3RF2 (91%) PRIMARY | 3L2 (83%) SECONDARY | 3SL6 (80%) SECONDARY' WHERE lesson_name = 'Clever Cats Climb' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (91%) PRIMARY | 3L2 (83%) SECONDARY | 3SL6 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Clever Cats Climb' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Merry Mice Move
UPDATE bantrly.lesson SET lesson_description = '3RF2 (90%) PRIMARY | 3L2 (83%) SECONDARY | 3SL6 (80%) SECONDARY' WHERE lesson_name = 'Merry Mice Move' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (90%) PRIMARY | 3L2 (83%) SECONDARY | 3SL6 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Merry Mice Move' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Peaceful Puppies Play
UPDATE bantrly.lesson SET lesson_description = '3RF2 (90%) PRIMARY | 3L2 (83%) SECONDARY | 3SL6 (80%) SECONDARY' WHERE lesson_name = 'Peaceful Puppies Play' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (90%) PRIMARY | 3L2 (83%) SECONDARY | 3SL6 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Peaceful Puppies Play' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Seven Snug Squirrels
UPDATE bantrly.lesson SET lesson_description = '3RF2 (90%) PRIMARY | 3L2 (83%) SECONDARY | 3SL6 (80%) SECONDARY' WHERE lesson_name = 'Seven Snug Squirrels' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (90%) PRIMARY | 3L2 (83%) SECONDARY | 3SL6 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Seven Snug Squirrels' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Brave Bluebirds Bounce
UPDATE bantrly.lesson SET lesson_description = '3RF2 (89%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'Brave Bluebirds Bounce' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (89%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Brave Bluebirds Bounce' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Friendly Frogs Flip
UPDATE bantrly.lesson SET lesson_description = '3RF2 (89%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'Friendly Frogs Flip' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (89%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Friendly Frogs Flip' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Tall Tulips Twist
UPDATE bantrly.lesson SET lesson_description = '3RF2 (89%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'Tall Tulips Twist' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (89%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Tall Tulips Twist' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Lucky Lanterns Light
UPDATE bantrly.lesson SET lesson_description = '3RF2 (88%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'Lucky Lanterns Light' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (88%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Lucky Lanterns Light' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Crispy Crackers Crunch
UPDATE bantrly.lesson SET lesson_description = '3RF2 (88%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'Crispy Crackers Crunch' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (88%) PRIMARY | 3L2 (82%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Crispy Crackers Crunch' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Shrieking Shrimp Shuffle
UPDATE bantrly.lesson SET lesson_description = '3RF2 (88%) PRIMARY | 3L2 (81%) SECONDARY | 3SL6 (79%) SECONDARY' WHERE lesson_name = 'Shrieking Shrimp Shuffle' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (88%) PRIMARY | 3L2 (81%) SECONDARY | 3SL6 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Shrieking Shrimp Shuffle' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Slippery Snakes Slither
UPDATE bantrly.lesson SET lesson_description = '3RF2 (87%) PRIMARY | 3L2 (81%) SECONDARY | 3SL6 (78%) SECONDARY' WHERE lesson_name = 'Slippery Snakes Slither' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (87%) PRIMARY | 3L2 (81%) SECONDARY | 3SL6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Slippery Snakes Slither' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Glowing Glowworms Glow
UPDATE bantrly.lesson SET lesson_description = '3RF2 (87%) PRIMARY | 3L2 (81%) SECONDARY | 3SL6 (78%) SECONDARY' WHERE lesson_name = 'Glowing Glowworms Glow' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (87%) PRIMARY | 3L2 (81%) SECONDARY | 3SL6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Glowing Glowworms Glow' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Three Thin Threads
UPDATE bantrly.lesson SET lesson_description = '3RF2 (87%) PRIMARY | 3L2 (81%) SECONDARY | 3SL6 (78%) SECONDARY' WHERE lesson_name = 'Three Thin Threads' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (87%) PRIMARY | 3L2 (81%) SECONDARY | 3SL6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Three Thin Threads' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Sprinting Sprouts Spring
UPDATE bantrly.lesson SET lesson_description = '3RF2 (86%) PRIMARY | 3L2 (80%) SECONDARY | 3SL6 (78%) SECONDARY' WHERE lesson_name = 'Sprinting Sprouts Spring' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (86%) PRIMARY | 3L2 (80%) SECONDARY | 3SL6 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Sprinting Sprouts Spring' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Scrubbing Crabs Scrabble
UPDATE bantrly.lesson SET lesson_description = '3RF2 (86%) PRIMARY | 3L2 (80%) SECONDARY | 3SL6 (77%) SECONDARY' WHERE lesson_name = 'Scrubbing Crabs Scrabble' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (86%) PRIMARY | 3L2 (80%) SECONDARY | 3SL6 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Scrubbing Crabs Scrabble' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Twitching Twigs Twist
UPDATE bantrly.lesson SET lesson_description = '3RF2 (86%) PRIMARY | 3L2 (80%) SECONDARY | 3SL6 (77%) SECONDARY' WHERE lesson_name = 'Twitching Twigs Twist' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (86%) PRIMARY | 3L2 (80%) SECONDARY | 3SL6 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Twitching Twigs Twist' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Splitting Splinters Splashed
UPDATE bantrly.lesson SET lesson_description = '3RF2 (85%) PRIMARY | 3L2 (80%) SECONDARY | 3SL6 (77%) SECONDARY' WHERE lesson_name = 'Splitting Splinters Splashed' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (85%) PRIMARY | 3L2 (80%) SECONDARY | 3SL6 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Splitting Splinters Splashed' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Striking Streams Stream
UPDATE bantrly.lesson SET lesson_description = '3RF2 (85%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (77%) SECONDARY' WHERE lesson_name = 'Striking Streams Stream' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (85%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Striking Streams Stream' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Thrashing Thrushes Threw
UPDATE bantrly.lesson SET lesson_description = '3RF2 (85%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (76%) SECONDARY' WHERE lesson_name = 'Thrashing Thrushes Threw' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (85%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Thrashing Thrushes Threw' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Clinking Clocks Click
UPDATE bantrly.lesson SET lesson_description = '3RF2 (84%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (76%) SECONDARY' WHERE lesson_name = 'Clinking Clocks Click' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (84%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Clinking Clocks Click' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Sparkling Sprats Sprang
UPDATE bantrly.lesson SET lesson_description = '3RF2 (84%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (76%) SECONDARY' WHERE lesson_name = 'Sparkling Sprats Sprang' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (84%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Sparkling Sprats Sprang' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Gripping Grizzlies Growl
UPDATE bantrly.lesson SET lesson_description = '3RF2 (84%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (76%) SECONDARY' WHERE lesson_name = 'Gripping Grizzlies Growl' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (84%) PRIMARY | 3L2 (79%) SECONDARY | 3SL6 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Gripping Grizzlies Growl' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 5: Scratchy Scrub Brushes Scrub
UPDATE bantrly.lesson SET lesson_description = '3RF2 (84%) PRIMARY | 3L2 (78%) SECONDARY | 3SL6 (76%) SECONDARY' WHERE lesson_name = 'Scratchy Scrub Brushes Scrub' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3RF2 (84%) PRIMARY | 3L2 (78%) SECONDARY | 3SL6 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Scratchy Scrub Brushes Scrub' AND training_module_id = 'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Good Morning
UPDATE bantrly.lesson SET lesson_description = '3SL4 (93%) PRIMARY | 3SL6 (88%) PRIMARY | 3L2 (82%) SECONDARY' WHERE lesson_name = 'Good Morning' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (93%) PRIMARY | 3SL6 (88%) PRIMARY | 3L2 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Good Morning' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: My Voice
UPDATE bantrly.lesson SET lesson_description = '3SL4 (92%) PRIMARY | 3SL6 (87%) PRIMARY | 3L2 (81%) SECONDARY' WHERE lesson_name = 'My Voice' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (92%) PRIMARY | 3SL6 (87%) PRIMARY | 3L2 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'My Voice' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Listen Up
UPDATE bantrly.lesson SET lesson_description = '3SL4 (92%) PRIMARY | 3SL6 (87%) PRIMARY | 3L2 (81%) SECONDARY' WHERE lesson_name = 'Listen Up' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (92%) PRIMARY | 3SL6 (87%) PRIMARY | 3L2 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Listen Up' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Keep on Trying
UPDATE bantrly.lesson SET lesson_description = '3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (81%) SECONDARY' WHERE lesson_name = 'Keep on Trying' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Keep on Trying' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Reading Time
UPDATE bantrly.lesson SET lesson_description = '3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'Reading Time' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (91%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Reading Time' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Rain and Puddles
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'Rain and Puddles' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Rain and Puddles' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Brave Enough
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'Brave Enough' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Brave Enough' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: The Quiet Moment
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'The Quiet Moment' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3SL6 (85%) PRIMARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Quiet Moment' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: A Good Friend
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'A Good Friend' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Good Friend' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Classroom Voices
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'Classroom Voices' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Classroom Voices' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Make a Mistake
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'Make a Mistake' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Make a Mistake' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Sharing Space
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'Sharing Space' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3SL6 (84%) PRIMARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Sharing Space' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: The Stars at Night
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3SL6 (83%) PRIMARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'The Stars at Night' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3SL6 (83%) PRIMARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Stars at Night' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Helping Hands
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3SL6 (83%) PRIMARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'Helping Hands' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3SL6 (83%) PRIMARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Helping Hands' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Words Matter
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'Words Matter' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Words Matter' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: What Curiosity Feels Like
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'What Curiosity Feels Like' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3SL6 (83%) PRIMARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Curiosity Feels Like' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Growing Up Slowly
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'Growing Up Slowly' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3SL6 (82%) PRIMARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Growing Up Slowly' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: The Last Try
UPDATE bantrly.lesson SET lesson_description = '3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'The Last Try' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Last Try' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Inside the Story
UPDATE bantrly.lesson SET lesson_description = '3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'Inside the Story' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (86%) PRIMARY | 3SL6 (82%) PRIMARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Inside the Story' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: What Fairness Looks Like
UPDATE bantrly.lesson SET lesson_description = '3SL4 (86%) PRIMARY | 3SL6 (81%) PRIMARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'What Fairness Looks Like' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (86%) PRIMARY | 3SL6 (81%) PRIMARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Fairness Looks Like' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Paying Attention
UPDATE bantrly.lesson SET lesson_description = '3SL4 (86%) PRIMARY | 3SL6 (81%) PRIMARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'Paying Attention' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (86%) PRIMARY | 3SL6 (81%) PRIMARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Paying Attention' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Who I''m Becoming
UPDATE bantrly.lesson SET lesson_description = '3SL4 (85%) PRIMARY | 3SL6 (81%) PRIMARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'Who I''m Becoming' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (85%) PRIMARY | 3SL6 (81%) PRIMARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Who I''m Becoming' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: The Sound of Learning
UPDATE bantrly.lesson SET lesson_description = '3SL4 (85%) PRIMARY | 3SL6 (81%) PRIMARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'The Sound of Learning' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (85%) PRIMARY | 3SL6 (81%) PRIMARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Sound of Learning' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Roots and Wings
UPDATE bantrly.lesson SET lesson_description = '3SL4 (85%) PRIMARY | 3SL6 (80%) PRIMARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'Roots and Wings' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (85%) PRIMARY | 3SL6 (80%) PRIMARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Roots and Wings' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: The Shape of a Question
UPDATE bantrly.lesson SET lesson_description = '3SL4 (84%) PRIMARY | 3SL6 (80%) PRIMARY | 3L2 (76%) SECONDARY' WHERE lesson_name = 'The Shape of a Question' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (84%) PRIMARY | 3SL6 (80%) PRIMARY | 3L2 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Shape of a Question' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: What Silence Teaches
UPDATE bantrly.lesson SET lesson_description = '3SL4 (84%) PRIMARY | 3SL6 (80%) PRIMARY | 3L2 (76%) SECONDARY' WHERE lesson_name = 'What Silence Teaches' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (84%) PRIMARY | 3SL6 (80%) PRIMARY | 3L2 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Silence Teaches' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Both Things True
UPDATE bantrly.lesson SET lesson_description = '3SL4 (84%) PRIMARY | 3SL6 (79%) PRIMARY | 3L2 (76%) SECONDARY' WHERE lesson_name = 'Both Things True' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (84%) PRIMARY | 3SL6 (79%) PRIMARY | 3L2 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Both Things True' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: The Long Way Around
UPDATE bantrly.lesson SET lesson_description = '3SL4 (83%) PRIMARY | 3SL6 (79%) PRIMARY | 3L2 (76%) SECONDARY' WHERE lesson_name = 'The Long Way Around' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (83%) PRIMARY | 3SL6 (79%) PRIMARY | 3L2 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'The Long Way Around' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: What We Leave Behind
UPDATE bantrly.lesson SET lesson_description = '3SL4 (83%) PRIMARY | 3SL6 (79%) PRIMARY | 3L2 (76%) SECONDARY' WHERE lesson_name = 'What We Leave Behind' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (83%) PRIMARY | 3SL6 (79%) PRIMARY | 3L2 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What We Leave Behind' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 6: Making Meaning
UPDATE bantrly.lesson SET lesson_description = '3SL4 (83%) PRIMARY | 3SL6 (79%) PRIMARY | 3L2 (75%) SECONDARY' WHERE lesson_name = 'Making Meaning' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (83%) PRIMARY | 3SL6 (79%) PRIMARY | 3L2 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Making Meaning' AND training_module_id = '0a1c0321-81a1-465f-a8d1-11beec18c591' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Cats vs. Dogs
UPDATE bantrly.lesson SET lesson_description = '3SL1 (91%) PRIMARY | 3SL4 (85%) PRIMARY | 3L1 (80%) SECONDARY' WHERE lesson_name = 'Cats vs. Dogs' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (91%) PRIMARY | 3SL4 (85%) PRIMARY | 3L1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Cats vs. Dogs' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Summer vs. Winter
UPDATE bantrly.lesson SET lesson_description = '3SL1 (90%) PRIMARY | 3SL4 (85%) PRIMARY | 3L1 (80%) SECONDARY' WHERE lesson_name = 'Summer vs. Winter' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (90%) PRIMARY | 3SL4 (85%) PRIMARY | 3L1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Summer vs. Winter' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Pizza vs. Tacos
UPDATE bantrly.lesson SET lesson_description = '3SL1 (90%) PRIMARY | 3SL4 (84%) PRIMARY | 3L1 (80%) SECONDARY' WHERE lesson_name = 'Pizza vs. Tacos' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (90%) PRIMARY | 3SL4 (84%) PRIMARY | 3L1 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Pizza vs. Tacos' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Morning vs. Night
UPDATE bantrly.lesson SET lesson_description = '3SL1 (89%) PRIMARY | 3SL4 (84%) PRIMARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Morning vs. Night' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (89%) PRIMARY | 3SL4 (84%) PRIMARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Morning vs. Night' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Books vs. Movies
UPDATE bantrly.lesson SET lesson_description = '3SL1 (89%) PRIMARY | 3SL4 (84%) PRIMARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Books vs. Movies' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (89%) PRIMARY | 3SL4 (84%) PRIMARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Books vs. Movies' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Indoor Recess vs. Outdoor Recess
UPDATE bantrly.lesson SET lesson_description = '3SL1 (89%) PRIMARY | 3SL4 (83%) PRIMARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Indoor Recess vs. Outdoor Recess' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (89%) PRIMARY | 3SL4 (83%) PRIMARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Indoor Recess vs. Outdoor Recess' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Homework vs. No Homework
UPDATE bantrly.lesson SET lesson_description = '3SL1 (89%) PRIMARY | 3SL4 (83%) PRIMARY | 3L1 (79%) SECONDARY' WHERE lesson_name = 'Homework vs. No Homework' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (89%) PRIMARY | 3SL4 (83%) PRIMARY | 3L1 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Homework vs. No Homework' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Longer Lunch vs. Shorter Lunch
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3SL4 (83%) PRIMARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Longer Lunch vs. Shorter Lunch' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3SL4 (83%) PRIMARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Longer Lunch vs. Shorter Lunch' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Gym Class vs. Art Class
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3SL4 (82%) PRIMARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Gym Class vs. Art Class' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3SL4 (82%) PRIMARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Gym Class vs. Art Class' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Crunchy vs. Smooth Peanut Butter
UPDATE bantrly.lesson SET lesson_description = '3SL1 (88%) PRIMARY | 3SL4 (82%) PRIMARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Crunchy vs. Smooth Peanut Butter' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (88%) PRIMARY | 3SL4 (82%) PRIMARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Crunchy vs. Smooth Peanut Butter' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Class Pet vs. No Class Pet
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3SL4 (82%) PRIMARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Class Pet vs. No Class Pet' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3SL4 (82%) PRIMARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Class Pet vs. No Class Pet' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Stand-Up Desks vs. Regular Desks
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3SL4 (82%) PRIMARY | 3L1 (78%) SECONDARY' WHERE lesson_name = 'Stand-Up Desks vs. Regular Desks' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3SL4 (82%) PRIMARY | 3L1 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Stand-Up Desks vs. Regular Desks' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Technology in Class vs. No Screens
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3SL4 (81%) PRIMARY | 3L1 (77%) SECONDARY' WHERE lesson_name = 'Technology in Class vs. No Screens' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3SL4 (81%) PRIMARY | 3L1 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Technology in Class vs. No Screens' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: School Uniforms vs. Casual Clothes
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3SL4 (81%) PRIMARY | 3L1 (77%) SECONDARY' WHERE lesson_name = 'School Uniforms vs. Casual Clothes' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3SL4 (81%) PRIMARY | 3L1 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'School Uniforms vs. Casual Clothes' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Four-Day School Week vs. Five-Day
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3SL4 (81%) PRIMARY | 3L1 (77%) SECONDARY' WHERE lesson_name = 'Four-Day School Week vs. Five-Day' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3SL4 (81%) PRIMARY | 3L1 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Four-Day School Week vs. Five-Day' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Fast vs. Careful
UPDATE bantrly.lesson SET lesson_description = '3SL1 (87%) PRIMARY | 3SL4 (83%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (76%) SECONDARY' WHERE lesson_name = 'Fast vs. Careful' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (87%) PRIMARY | 3SL4 (83%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Fast vs. Careful' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Leaders vs. Followers
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (76%) SECONDARY' WHERE lesson_name = 'Leaders vs. Followers' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Leaders vs. Followers' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Group Work vs. Solo Work
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (76%) SECONDARY' WHERE lesson_name = 'Group Work vs. Solo Work' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Group Work vs. Solo Work' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Rules vs. No Rules
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (76%) SECONDARY' WHERE lesson_name = 'Rules vs. No Rules' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Rules vs. No Rules' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Trying New Things vs. Sticking with What You Know
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY' WHERE lesson_name = 'Trying New Things vs. Sticking with What You Know' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Trying New Things vs. Sticking with What You Know' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Learning from Mistakes vs. Learning from Success
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY' WHERE lesson_name = 'Learning from Mistakes vs. Learning from Success' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Learning from Mistakes vs. Learning from Success' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Asking for Help vs. Figuring It Out Yourself
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY' WHERE lesson_name = 'Asking for Help vs. Figuring It Out Yourself' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Asking for Help vs. Figuring It Out Yourself' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Effort vs. Natural Talent
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3SL4 (80%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY' WHERE lesson_name = 'Effort vs. Natural Talent' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3SL4 (80%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Effort vs. Natural Talent' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Fairness vs. Equality
UPDATE bantrly.lesson SET lesson_description = '3SL1 (86%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (79%) SECONDARY | 3L1 (76%) SECONDARY' WHERE lesson_name = 'Fairness vs. Equality' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (86%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (79%) SECONDARY | 3L1 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Fairness vs. Equality' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Changing the Rules vs. Following Them
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (79%) SECONDARY | 3L1 (76%) SECONDARY' WHERE lesson_name = 'Changing the Rules vs. Following Them' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3SL4 (82%) PRIMARY | 3R9 (79%) SECONDARY | 3L1 (76%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Changing the Rules vs. Following Them' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Individual vs. Team
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (75%) SECONDARY' WHERE lesson_name = 'Individual vs. Team' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Individual vs. Team' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Knowing vs. Understanding
UPDATE bantrly.lesson SET lesson_description = '3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (75%) SECONDARY' WHERE lesson_name = 'Knowing vs. Understanding' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (85%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Knowing vs. Understanding' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Short-Term vs. Long-Term Thinking
UPDATE bantrly.lesson SET lesson_description = '3SL1 (84%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (75%) SECONDARY' WHERE lesson_name = 'Short-Term vs. Long-Term Thinking' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (84%) PRIMARY | 3SL4 (81%) PRIMARY | 3R9 (78%) SECONDARY | 3L1 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Short-Term vs. Long-Term Thinking' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: Saying Something vs. Staying Quiet
UPDATE bantrly.lesson SET lesson_description = '3SL1 (84%) PRIMARY | 3SL4 (80%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY' WHERE lesson_name = 'Saying Something vs. Staying Quiet' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (84%) PRIMARY | 3SL4 (80%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (75%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Saying Something vs. Staying Quiet' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 7: One Strong Voice vs. Many Small Voices
UPDATE bantrly.lesson SET lesson_description = '3SL1 (84%) PRIMARY | 3SL4 (80%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (74%) SECONDARY' WHERE lesson_name = 'One Strong Voice vs. Many Small Voices' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL1 (84%) PRIMARY | 3SL4 (80%) PRIMARY | 3R9 (77%) SECONDARY | 3L1 (74%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'One Strong Voice vs. Many Small Voices' AND training_module_id = '8addaf36-3881-49d8-ab34-444c399bf432' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Morning Stretch
UPDATE bantrly.lesson SET lesson_description = '3SL4 (93%) PRIMARY | 3SL6 (89%) PRIMARY | 3L2 (83%) SECONDARY' WHERE lesson_name = 'A Morning Stretch' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (93%) PRIMARY | 3SL6 (89%) PRIMARY | 3L2 (83%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Morning Stretch' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: My Favorite Snack
UPDATE bantrly.lesson SET lesson_description = '3SL4 (92%) PRIMARY | 3SL6 (88%) PRIMARY | 3L2 (82%) SECONDARY' WHERE lesson_name = 'My Favorite Snack' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (92%) PRIMARY | 3SL6 (88%) PRIMARY | 3L2 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'My Favorite Snack' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Sound I Like
UPDATE bantrly.lesson SET lesson_description = '3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L2 (82%) SECONDARY' WHERE lesson_name = 'A Sound I Like' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L2 (82%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Sound I Like' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Outside After School
UPDATE bantrly.lesson SET lesson_description = '3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L2 (81%) SECONDARY' WHERE lesson_name = 'Outside After School' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (91%) PRIMARY | 3SL6 (87%) PRIMARY | 3L2 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Outside After School' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Something That Made Me Laugh
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (81%) SECONDARY' WHERE lesson_name = 'Something That Made Me Laugh' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Something That Made Me Laugh' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: My Favorite Spot at Home
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'My Favorite Spot at Home' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3SL6 (86%) PRIMARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'My Favorite Spot at Home' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Something I Learned This Week
UPDATE bantrly.lesson SET lesson_description = '3SL4 (90%) PRIMARY | 3SL6 (85%) SECONDARY | 3L2 (81%) SECONDARY' WHERE lesson_name = 'Something I Learned This Week' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (90%) PRIMARY | 3SL6 (85%) SECONDARY | 3L2 (81%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Something I Learned This Week' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Small Problem I Solved
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3SL6 (85%) SECONDARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'A Small Problem I Solved' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3SL6 (85%) SECONDARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Small Problem I Solved' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Place I Visited
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3SL6 (84%) SECONDARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'A Place I Visited' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3SL6 (84%) SECONDARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Place I Visited' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Feeling I Had Today
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3SL6 (84%) SECONDARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'A Feeling I Had Today' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3SL6 (84%) SECONDARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Feeling I Had Today' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: What Teamwork Looked Like Today
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3SL6 (84%) SECONDARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'What Teamwork Looked Like Today' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3SL6 (84%) SECONDARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Teamwork Looked Like Today' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Something in Nature I Noticed
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'Something in Nature I Noticed' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Something in Nature I Noticed' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Someone I Appreciate
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'Someone I Appreciate' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Someone I Appreciate' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Question I Can''t Stop Thinking About
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'A Question I Can''t Stop Thinking About' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Question I Can''t Stop Thinking About' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Something I Got Better At
UPDATE bantrly.lesson SET lesson_description = '3SL4 (88%) PRIMARY | 3SL6 (84%) SECONDARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'Something I Got Better At' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (88%) PRIMARY | 3SL6 (84%) SECONDARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Something I Got Better At' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Change I Noticed Over Time
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'A Change I Noticed Over Time' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Change I Noticed Over Time' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Moment When I Felt Proud
UPDATE bantrly.lesson SET lesson_description = '3SL4 (87%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'A Moment When I Felt Proud' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (87%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Moment When I Felt Proud' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Something That Confused Me (and Then Clicked)
UPDATE bantrly.lesson SET lesson_description = '3SL4 (86%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'Something That Confused Me (and Then Clicked)' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (86%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Something That Confused Me (and Then Clicked)' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: How I Help at Home
UPDATE bantrly.lesson SET lesson_description = '3SL4 (86%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'How I Help at Home' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (86%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How I Help at Home' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: What I Notice About My Community
UPDATE bantrly.lesson SET lesson_description = '3SL4 (86%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'What I Notice About My Community' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (86%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What I Notice About My Community' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Memory That Stuck
UPDATE bantrly.lesson SET lesson_description = '3SL4 (85%) PRIMARY | 3SL6 (81%) SECONDARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'A Memory That Stuck' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (85%) PRIMARY | 3SL6 (81%) SECONDARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Memory That Stuck' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: What Learning Feels Like From the Inside
UPDATE bantrly.lesson SET lesson_description = '3SL4 (86%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY' WHERE lesson_name = 'What Learning Feels Like From the Inside' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (86%) PRIMARY | 3SL6 (83%) SECONDARY | 3L2 (79%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What Learning Feels Like From the Inside' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Something I Changed My Mind About
UPDATE bantrly.lesson SET lesson_description = '3SL4 (85%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'Something I Changed My Mind About' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (85%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Something I Changed My Mind About' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: What I Would Tell My Younger Self
UPDATE bantrly.lesson SET lesson_description = '3SL4 (85%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'What I Would Tell My Younger Self' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (85%) PRIMARY | 3SL6 (82%) SECONDARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What I Would Tell My Younger Self' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Question I''m Still Sitting With
UPDATE bantrly.lesson SET lesson_description = '3SL4 (85%) PRIMARY | 3SL6 (81%) SECONDARY | 3L2 (78%) SECONDARY' WHERE lesson_name = 'A Question I''m Still Sitting With' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (85%) PRIMARY | 3SL6 (81%) SECONDARY | 3L2 (78%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Question I''m Still Sitting With' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: What I Want to Be Known For
UPDATE bantrly.lesson SET lesson_description = '3SL4 (84%) PRIMARY | 3SL6 (81%) SECONDARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'What I Want to Be Known For' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (84%) PRIMARY | 3SL6 (81%) SECONDARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What I Want to Be Known For' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: How a Small Moment Taught Me Something Big
UPDATE bantrly.lesson SET lesson_description = '3SL4 (84%) PRIMARY | 3SL6 (80%) SECONDARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'How a Small Moment Taught Me Something Big' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (84%) PRIMARY | 3SL6 (80%) SECONDARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'How a Small Moment Taught Me Something Big' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: What I''m Still Learning About Myself
UPDATE bantrly.lesson SET lesson_description = '3SL4 (84%) PRIMARY | 3SL6 (80%) SECONDARY | 3L2 (77%) SECONDARY' WHERE lesson_name = 'What I''m Still Learning About Myself' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (84%) PRIMARY | 3SL6 (80%) SECONDARY | 3L2 (77%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'What I''m Still Learning About Myself' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: A Sound That Tells a Story
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'A Sound That Tells a Story' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3SL6 (85%) PRIMARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'A Sound That Tells a Story' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

-- Module 8: Something I Keep Coming Back To
UPDATE bantrly.lesson SET lesson_description = '3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L2 (80%) SECONDARY' WHERE lesson_name = 'Something I Keep Coming Back To' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
UPDATE bantrly.lesson_version_new SET content = jsonb_set(content::jsonb, '{lesson_description}', '"3SL4 (89%) PRIMARY | 3SL6 (84%) PRIMARY | 3L2 (80%) SECONDARY"') WHERE lesson_id = (SELECT lesson_id FROM bantrly.lesson WHERE lesson_name = 'Something I Keep Coming Back To' AND training_module_id = 'e39352c6-f890-464f-be63-557fe374362a' AND created_by = 'ee42009d-d83e-4c12-abd1-2d8fff809b18' LIMIT 1) AND is_latest = true;

END $$;