-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-11, 02:03 a.m.
-- ──────────────────────────────────────────────────

SELECT SUM(ci.population)
FROM city ci
JOIN country co 
  ON ci.countrycode = co.code
WHERE co.continent = 'Asia';
