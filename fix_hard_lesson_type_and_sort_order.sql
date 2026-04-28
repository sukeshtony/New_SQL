-- Fix program_lesson_sequence_new for HARD:
-- 1. Rename lesson_type to match Easy/Medium
-- 2. Apply sort_order shift for M3 and M4 at the same time
--
--   M1  Reading Comprehension   → Paragraph Reading Test  (sort_order unchanged, slot 1)
--   M3  Listening Comprehension → Quick Thinking          (sort_order +3, slot 4→7)
--   M4  Informative Presentation→ Presentation Skill      (sort_order +1, slot 5→6)

BEGIN;

UPDATE bantrly.program_lesson_sequence_new
SET
    lesson_type = CASE lesson_type
        WHEN 'Reading Comprehension'    THEN 'Paragraph Reading Test'
        WHEN 'Listening Comprehension'  THEN 'Quick Thinking'
        WHEN 'Informative Presentation' THEN 'Presentation Skill'
    END,
    sort_order = CASE lesson_type
        WHEN 'Listening Comprehension'  THEN sort_order + 3   -- M3: 4→7, 12→15, 20→23 …
        WHEN 'Informative Presentation' THEN sort_order + 1   -- M4: 5→6, 13→14, 21→22 …
        ELSE sort_order                                        -- M1: no change
    END
WHERE difficulty_level = 'HARD'
  AND lesson_type IN (
      'Reading Comprehension',
      'Listening Comprehension',
      'Informative Presentation'
  );

-- Verify
SELECT lesson_type, MIN(sort_order) AS slot, COUNT(*) AS lessons
FROM bantrly.program_lesson_sequence_new
WHERE difficulty_level = 'HARD'
  AND lesson_type IN ('Paragraph Reading Test', 'Quick Thinking', 'Presentation Skill')
GROUP BY lesson_type
ORDER BY MIN(sort_order);

COMMIT;
