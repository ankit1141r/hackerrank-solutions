-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
-- Problem     Weather Observation Station 14
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-16, 10:17 p.m.
-- ──────────────────────────────────────────────────

SELECT TRUNCATE(MAX(LAT_N), 4) AS max_lat
FROM STATION
WHERE LAT_N < 137.2345;
