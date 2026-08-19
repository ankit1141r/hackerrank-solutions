-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
-- Problem     Weather Observation Station 16
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-19, 11:53 p.m.
-- ──────────────────────────────────────────────────

SELECT ROUND(MIN(LAT_N), 4) AS smallest_lat
FROM STATION
WHERE LAT_N > 38.7780;
