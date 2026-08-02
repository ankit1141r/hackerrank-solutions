-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-02, 11:38 p.m.
-- ──────────────────────────────────────────────────

SELECT MAX(total_earnings) AS max_total_earnings,
       COUNT(*) AS num_employees
FROM (
    SELECT employee_id, (months * salary) AS total_earnings
    FROM Employee
) AS earnings
WHERE total_earnings = (
    SELECT MAX(months * salary)
    FROM Employee
);
