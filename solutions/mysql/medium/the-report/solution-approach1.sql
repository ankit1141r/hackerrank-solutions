-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
-- Problem     The Report
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-30, 12:01 a.m.
-- ──────────────────────────────────────────────────

SELECT 
    CASE 
        WHEN g.Grade < 8 THEN 'NULL'
        ELSE s.Name
    END AS Name,
    g.Grade,
    s.Marks
FROM Students s
JOIN Grades g
  ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY 
    g.Grade DESC,
    CASE 
        WHEN g.Grade >= 8 THEN s.Name
        ELSE NULL
    END ASC,
    CASE 
        WHEN g.Grade < 8 THEN s.Marks
        ELSE NULL
    END ASC;
