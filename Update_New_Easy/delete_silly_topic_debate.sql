-- =====================================================
-- Delete Script: Remove all Module 7 (Silly Topic Debate) lessons
-- This script uses comprehensive filtering to be 100% surgical:
-- 1. Creator: ee42009d-d83e-4c12-abd1-2d8fff809b18
-- 2. Role: TEACHER
-- 3. Lesson Type: 'Silly Topic Debate'
-- 4. Difficulty: 'EASY'
-- 5. Training Module: Module 7 specific
-- =====================================================

DO $$
DECLARE
  -- Target constraints taken directly from your requirements
  v_created_by UUID := 'ee42009d-d83e-4c12-abd1-2d8fff809b18';
  v_role TEXT := 'TEACHER';
  v_lesson_type TEXT := 'Silly Topic Debate';
  v_difficulty TEXT := 'EASY';
  v_training_module_id UUID := '8addaf36-3881-49d8-ab34-444c399bf432';
  v_version_id UUID := '6b135adf-fbba-433b-9516-355f970801e4';
  v_deleted_count INTEGER;
BEGIN

  -- 1. Remove from program_lesson_sequence_new
  DELETE FROM bantrly.program_lesson_sequence_new 
  WHERE version_id = v_version_id
    AND lesson_id IN (
      SELECT lesson_id FROM bantrly.lesson 
      WHERE training_module_id = v_training_module_id 
        AND lesson_type = v_lesson_type
        AND difficulty_level = v_difficulty
        AND created_by = v_created_by
        AND created_by_role = v_role
    );

  -- 2. Remove from lesson_version_new
  DELETE FROM bantrly.lesson_version_new 
  WHERE lesson_id IN (
    SELECT lesson_id FROM bantrly.lesson 
    WHERE training_module_id = v_training_module_id 
      AND lesson_type = v_lesson_type
      AND difficulty_level = v_difficulty
      AND created_by = v_created_by
      AND created_by_role = v_role
  );

  -- 3. Remove from lesson_content
  DELETE FROM bantrly.lesson_content 
  WHERE lesson_id IN (
    SELECT lesson_id FROM bantrly.lesson 
    WHERE training_module_id = v_training_module_id 
      AND lesson_type = v_lesson_type
      AND difficulty_level = v_difficulty
      AND created_by = v_created_by
      AND created_by_role = v_role
  );

  -- 4. Remove from lesson main table
  WITH deleted_rows AS (
    DELETE FROM bantrly.lesson 
    WHERE training_module_id = v_training_module_id 
      AND lesson_type = v_lesson_type
      AND difficulty_level = v_difficulty
      AND created_by = v_created_by
      AND created_by_role = v_role
    RETURNING lesson_id
  )
  SELECT COUNT(*) INTO v_deleted_count FROM deleted_rows;

  RAISE NOTICE 'Successfully removed % Silly Topic Debate lessons matching Creator % and Level %.', v_deleted_count, v_created_by, v_difficulty;
END $$;
