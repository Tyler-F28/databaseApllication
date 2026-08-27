-- =====================================================================
-- Unit 2b — Filtering with Logic
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, players
--
-- Rename this file with your last name before you start.
--
-- Read unit2b_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. Show every team in Ohio or California, with its state.
SELECT full_name, state
FROM teams
WHERE(state = 'Ohio' OR state = 'California')

-- 2. Show teams founded between 1960 and 1980, with their founding
--    years. Use BETWEEN.
SELECT full_name, year_founded
FROM teams
WHERE year_founded BETWEEN 1960 AND 1980

-- 3. Show teams in Texas, Florida, or New York, with their states.
--    Use IN.

SELECT full_name, state
FROM teams
WHERE state IN ('Texas', 'Florida', 'New York')

-- 4. Show teams whose nickname starts with the letter C.
SELECT full_name, nickname
FROM teams
WHERE nickname LIKE 'C%' 

-- 5. Find every player whose name contains "James".
SELECT full_name
FROM players
WHERE full_name LIKE '%James%'

-- 6. List each state that has at least one team — each state only
--    once, sorted alphabetically.

SELECT DISTINCT state
FROM teams
ORDER BY state

-- 7. Show every team that is NOT in California. Use NOT.
SELECT full_name, state
FROM   teams
WHERE  NOT (state = 'California');

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Query 5 returns more than just LeBron. Who else shows up, and why?
Various others because they have James as a first or last name, such as James Harden, James Wiseman, and James Johnson.

-- Query 6 returns fewer rows than there are teams. Why?
because some states have more than one team, so DISTINCT only returns each state once.

-- Query 7 could also be written with <> instead of NOT. Why do they
-- give the same result?
because <> means "not equal to" and NOT means "not", so they both filter out California teams.

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Boolean logic:
a Boolean logic is a form of algebra in which all values are either TRUE or FALSE. It is used to create logical statements and conditions in programming and database queries.

-- Wildcard:
a wildcard is a character that represents one or more unknown characters in a pattern, commonly used in SQL LIKE clauses.

-- NULL:
a NULL value represents the absence of a value in a database field. It is not the same as zero or an empty string.