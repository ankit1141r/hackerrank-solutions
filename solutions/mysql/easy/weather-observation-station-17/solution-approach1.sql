-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
-- Problem     Weather Observation Station 17
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-19, 11:54 p.m.
-- ──────────────────────────────────────────────────

SELECT ROUND(LONG_W, 4) AS longitude
FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N)
    FROM STATION
    WHERE LAT_N > 38.7780
);
