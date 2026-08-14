-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
-- Problem     Weather Observation Station 13
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-14, 03:00 p.m.
-- ──────────────────────────────────────────────────

SELECT TRUNCATE(SUM(LAT_N), 4) AS total_lat
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;
