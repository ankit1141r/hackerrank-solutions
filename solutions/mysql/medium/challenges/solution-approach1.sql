-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
-- Problem     Challenges
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-22, 08:08 p.m.
-- ──────────────────────────────────────────────────

SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS total_challenges
FROM Hackers h
JOIN Challenges c
  ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING COUNT(c.challenge_id) = (
          SELECT MAX(ch_count)
          FROM (
              SELECT COUNT(*) AS ch_count
              FROM Challenges
              GROUP BY hacker_id
          ) AS sub
      )
   OR COUNT(c.challenge_id) IN (
          SELECT ch_count
          FROM (
              SELECT COUNT(*) AS ch_count
              FROM Challenges
              GROUP BY hacker_id
          ) AS sub
          GROUP BY ch_count
          HAVING COUNT(*) = 1
      )
ORDER BY total_challenges DESC, h.hacker_id;
