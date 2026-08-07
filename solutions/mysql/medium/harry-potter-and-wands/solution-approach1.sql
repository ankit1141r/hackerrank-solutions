-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
-- Problem     Ollivander's Inventory
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-08, 01:04 a.m.
-- ──────────────────────────────────────────────────

SELECT w.id, wp.age, w.coins_needed, w.power
FROM Wands w
JOIN Wands_Property wp
  ON w.code = wp.code
WHERE wp.is_evil = 0
  AND w.coins_needed = (
    SELECT MIN(w1.coins_needed)
    FROM Wands w1
    JOIN Wands_Property wp1
      ON w1.code = wp1.code
    WHERE w1.power = w.power
      AND wp1.age = wp.age
  )
ORDER BY w.power DESC, wp.age DESC;
