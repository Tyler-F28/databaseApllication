-- =====================================================================
-- Unit 2g — Keeping the Unmatched Rows
-- Database Applications Development · MCCC
--
-- Databases: nba_5seasons.db for 1-3, movies_small.db for 4-5
--
-- Rename this file with your last name before you start.
--
-- Read unit2g_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. Using an INNER JOIN, count how many players have stats for the
--    2025-26 season.
select count(*) as num_players
FROM players p
JOIN player_season_stats s
  ON s.player_id = p.player_id AND s.season = '2025-26';

-- 2. Using a LEFT JOIN from players, count how many rows you get for
--    the same thing.
select count(*) as num_players
FROM players p
LEFT JOIN player_season_stats s
  ON s.player_id = p.player_id AND s.season = '2025-26';

-- 3. List the names of players who have no 2025-26 season stats.
SELECT p.full_name
FROM   players p
LEFT JOIN player_season_stats s
  ON s.player_id = p.player_id AND s.season = '2025-26'
WHERE  s.player_id IS NULL;

-- 4. In movies_small.db, count how many rows in roles have no
--    character name recorded.
SELECT count(*)
FROM   movies
LEFT JOIN roles s
  ON s.roles = p.roles AND s.movie_id = m.movie_id
WHERE  s.roles IS NULL;

-- 5. Show ten people from movies_small.db who have no birth year
--    recorded.
SELECT *
FROM   people
WHERE  birth_year IS NULL
LIMIT 10;

-- 6. Pick any query from this unit you found interesting, run it, and
--    export the results to CSV. Name the file
--    unit2_report_lastname.csv and commit it alongside this file.


-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Queries 1 and 2 return different numbers. What are they, and what
-- does the difference represent?
the difference represents the number of players who do not have stats for the 2025-26 season. Query 1 counts only players with stats (INNER JOIN), while Query 2 counts all players, including those without stats (LEFT JOIN).

-- In query 3 you filtered with IS NULL. Which table did that NULL
-- come from, and why is it NULL?
null came from the player_season_stats table. It is NULL because those players do not have any corresponding records in the player_season_stats table for the 2025-26 season, indicating they did not play or have stats recorded for that season.

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- LEFT JOIN:
a left join returns all records from the left table and the matched records from the right table. If there is no match, the result is NULL on the right side.

-- Export:
allows you to save the results of a query into a file format (like CSV) for use outside the database, such as in spreadsheets or reports.
