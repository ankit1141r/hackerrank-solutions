-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-08-08, 01:02 a.m.
-- ──────────────────────────────────────────────────

select ci.name 
from city ci
join country co
on ci.countrycode=co.code
where co.continent='Africa';
