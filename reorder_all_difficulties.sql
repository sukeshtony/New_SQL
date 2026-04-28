-- Reorder modules to the same sequence across EASY, MEDIUM, HARD
--
-- Target order (all difficulties):
--   1. Reading a Paragraph       (M1)
--   2. Build a Story w/ Keywords (M2)
--   3. Tongue Twister            (M5)
--   4. Silly Topic Discussion    (M7)
--   5. Recite a Poem             (M6)
--   6. Short Informative Pres.   (M4)
--   7. Rapid Fire                (M3)
--   8. Audio Postcard            (M8)
--
-- NOTE: If you already ran reorder_medium_m3_m4_m5.sql, do NOT run this script
--       as the MEDIUM deltas here assume the original sort_orders from the SQL files.
--       Run this script only once from the original database state.
--
-- Lesson types per difficulty:
--   lesson_type              | Easy/Medium | Hard
--   -------------------------|-------------|----------------------
--   M1 Reading Paragraph     | Paragraph Reading Test | Reading Comprehension
--   M3 QA Bursts / Rapid Fire| Quick Thinking         | Listening Comprehension
--   M4 Presentation          | Presentation Skill     | Informative Presentation
--   M5 Tongue Twisters       | Pronunciation Diction  | Pronunciation Diction (same)
--   M6 Poems                 | Vocal Variety Emotion  | Vocal Variety Emotion (same)
--   M7 Silly Topics          | Silly Topic Debate     | Silly Topic Debate (same)
--   M8 Audio Postcards       | Personal Expression    | Personal Expression (same)

BEGIN;

-- ============================================================
-- EASY  (M5 already at slot 3 — only M3, M4, M6, M7 change)
--   M3 Quick Thinking:       4 → 7  (+3)
--   M4 Presentation Skill:   5 → 6  (+1)
--   M6 Vocal Variety Emotion: 6 → 5  (-1)
--   M7 Silly Topic Debate:   7 → 4  (-3)
-- ============================================================
UPDATE bantrly.program_lesson_sequence_new pls
SET sort_order = CASE pls.lesson_type
    WHEN 'Quick Thinking'        THEN pls.sort_order + 3   -- M3: 4→7, 12→15, 20→23 …
    WHEN 'Presentation Skill'    THEN pls.sort_order + 1   -- M4: 5→6, 13→14, 21→22 …
    WHEN 'Vocal Variety Emotion' THEN pls.sort_order - 1   -- M6: 6→5, 14→13, 22→21 …
    WHEN 'Silly Topic Debate'    THEN pls.sort_order - 3   -- M7: 7→4, 15→12, 23→20 …
END
FROM bantrly.lesson l
WHERE pls.lesson_id        = l.lesson_id
  AND pls.difficulty_level = 'EASY'
  AND l.created_by         = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
  AND l.created_by_role    = 'TEACHER'
  AND pls.lesson_type      IN ('Quick Thinking', 'Presentation Skill',
                               'Vocal Variety Emotion', 'Silly Topic Debate');

-- ============================================================
-- MEDIUM  (M5 was at slot 5 — M3, M4, M5, M6, M7 all change)
--   M3 Quick Thinking:        3 → 7  (+4)
--   M4 Presentation Skill:    4 → 6  (+2)
--   M5 Pronunciation Diction: 5 → 3  (-2)
--   M6 Vocal Variety Emotion: 6 → 5  (-1)
--   M7 Silly Topic Debate:    7 → 4  (-3)
-- ============================================================
UPDATE bantrly.program_lesson_sequence_new pls
SET sort_order = CASE pls.lesson_type
    WHEN 'Quick Thinking'        THEN pls.sort_order + 4   -- M3: 3→7, 11→15, 19→23 …
    WHEN 'Presentation Skill'    THEN pls.sort_order + 2   -- M4: 4→6, 12→14, 20→22 …
    WHEN 'Pronunciation Diction' THEN pls.sort_order - 2   -- M5: 5→3, 13→11, 21→19 …
    WHEN 'Vocal Variety Emotion' THEN pls.sort_order - 1   -- M6: 6→5, 14→13, 22→21 …
    WHEN 'Silly Topic Debate'    THEN pls.sort_order - 3   -- M7: 7→4, 15→12, 23→20 …
END
FROM bantrly.lesson l
WHERE pls.lesson_id        = l.lesson_id
  AND pls.difficulty_level = 'MEDIUM'
  AND l.created_by         = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
  AND l.created_by_role    = 'TEACHER'
  AND pls.lesson_type      IN ('Quick Thinking', 'Presentation Skill', 'Pronunciation Diction',
                               'Vocal Variety Emotion', 'Silly Topic Debate');

-- ============================================================
-- HARD  (M5 already at slot 3 — only M3, M4, M6, M7 change)
--   M3 Listening Comprehension:   4 → 7  (+3)
--   M4 Informative Presentation:  5 → 6  (+1)
--   M6 Vocal Variety Emotion:     6 → 5  (-1)
--   M7 Silly Topic Debate:        7 → 4  (-3)
-- ============================================================
UPDATE bantrly.program_lesson_sequence_new pls
SET sort_order = CASE pls.lesson_type
    WHEN 'Listening Comprehension'  THEN pls.sort_order + 3   -- M3: 4→7, 12→15, 20→23 …
    WHEN 'Informative Presentation' THEN pls.sort_order + 1   -- M4: 5→6, 13→14, 21→22 …
    WHEN 'Vocal Variety Emotion'    THEN pls.sort_order - 1   -- M6: 6→5, 14→13, 22→21 …
    WHEN 'Silly Topic Debate'       THEN pls.sort_order - 3   -- M7: 7→4, 15→12, 23→20 …
END
FROM bantrly.lesson l
WHERE pls.lesson_id        = l.lesson_id
  AND pls.difficulty_level = 'HARD'
  AND l.created_by         = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
  AND l.created_by_role    = 'TEACHER'
  AND pls.lesson_type      IN ('Listening Comprehension', 'Informative Presentation',
                               'Vocal Variety Emotion', 'Silly Topic Debate');

-- ============================================================
-- Verify: should show slot 1-8 in order for each difficulty
-- ============================================================
SELECT
    pls.difficulty_level,
    MIN(pls.sort_order)  AS slot,
    pls.lesson_type
FROM bantrly.program_lesson_sequence_new pls
JOIN bantrly.lesson l ON pls.lesson_id = l.lesson_id
WHERE l.created_by      = 'ee42009d-d83e-4c12-abd1-2d8fff809b18'
  AND l.created_by_role = 'TEACHER'
GROUP BY pls.difficulty_level, pls.lesson_type
ORDER BY pls.difficulty_level, MIN(pls.sort_order);

COMMIT;
