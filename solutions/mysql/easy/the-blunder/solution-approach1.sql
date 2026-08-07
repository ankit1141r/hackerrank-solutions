-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- Problem     The Blunder
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-07, 11:45 p.m.
-- ──────────────────────────────────────────────────

SELECT CEIL(ABS(AVG(Salary) - AVG(CAST(REPLACE(Salary, '0', '') AS UNSIGNED)))) AS ErrorAmount
FROM EMPLOYEES;

