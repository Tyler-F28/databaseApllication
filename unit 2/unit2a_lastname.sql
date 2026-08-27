-- =====================================================================
-- Unit 2a — Getting Data Out
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Table: teams
--
-- Rename this file with your last name before you start.
-- Write each query below its number. Test it in DB Browser's
-- Execute SQL tab before you move on.
--
-- Read unit2a_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. List every team's full name.
Atlanta Hawks
Boston Celtics
Cleveland Cavaliers
New Orleans Pelicans
Chicago Bulls
Dallas Mavericks
Denver Nuggets
Golden State Warriors
Houston Rockets
Los Angeles Clippers
Los Angeles Lakers
Miami Heat
Milwaukee Bucks
Minnesota Timberwolves
Brooklyn Nets
New York Knicks
Orlando Magic
Indiana Pacers
Philadelphia 76ers
Phoenix Suns
Portland Trail Blazers
Sacramento Kings
San Antonio Spurs
Oklahoma City Thunder
Toronto Raptors
Utah Jazz
Memphis Grizzlies
Washington Wizards
Detroit Pistons
Charlotte Hornets


-- 2. Show the full name, city, and state of every team.
Atlanta Hawks	Atlanta	Georgia
Boston Celtics	Boston	Massachusetts
Cleveland Cavaliers	Cleveland	Ohio
New Orleans Pelicans	New Orleans	Louisiana
Chicago Bulls	Chicago	Illinois
Dallas Mavericks	Dallas	Texas
Denver Nuggets	Denver	Colorado
Golden State Warriors	San Francisco	California
Houston Rockets	Houston	Texas
Los Angeles Clippers	Los Angeles	California
Los Angeles Lakers	Los Angeles	California
Miami Heat	Miami	Florida
Milwaukee Bucks	Milwaukee	Wisconsin
Minnesota Timberwolves	Minnesota	Minnesota
Brooklyn Nets	Brooklyn	New York
New York Knicks	New York	New York
Orlando Magic	Orlando	Florida
Indiana Pacers	Indiana	Indiana
Philadelphia 76ers	Philadelphia	Pennsylvania
Phoenix Suns	Phoenix	Arizona
Portland Trail Blazers	Portland	Oregon
Sacramento Kings	Sacramento	California
San Antonio Spurs	San Antonio	Texas
Oklahoma City Thunder	Oklahoma City	Oklahoma
Toronto Raptors	Toronto	Ontario
Utah Jazz	Utah	Utah
Memphis Grizzlies	Memphis	Tennessee
Washington Wizards	Washington	District of Columbia
Detroit Pistons	Detroit	Michigan
Charlotte Hornets	Charlotte	North Carolina


-- 3. Show the full name and city of every team in Ohio.
SELECT  full_name, city
FROM    teams
WHERE   state = 'Ohio';


-- 4. Show the full name and founding year of teams founded before 1950.
Boston Celtics	1946
Golden State Warriors	1946
New York Knicks	1946
Los Angeles Lakers	1948
Sacramento Kings	1948
Detroit Pistons	1948
Atlanta Hawks	1949
Philadelphia 76ers	1949


-- 5. List every team's name and founding year, oldest team first.
Boston Celtics	1946
Golden State Warriors	1946
New York Knicks	1946
Los Angeles Lakers	1948
Sacramento Kings	1948
Detroit Pistons	1948
Atlanta Hawks	1949
Philadelphia 76ers	1949
Washington Wizards	1961
Chicago Bulls	1966
Houston Rockets	1967
Oklahoma City Thunder	1967
Milwaukee Bucks	1968
Phoenix Suns	1968
Cleveland Cavaliers	1970
Los Angeles Clippers	1970
Portland Trail Blazers	1970
Utah Jazz	1974
Denver Nuggets	1976
Brooklyn Nets	1976
Indiana Pacers	1976
San Antonio Spurs	1976
Dallas Mavericks	1980
Miami Heat	1988
Charlotte Hornets	1988
Minnesota Timberwolves	1989
Orlando Magic	1989
Toronto Raptors	1995
Memphis Grizzlies	1995
New Orleans Pelicans	2002


-- 6. Show the five most recently founded teams, with their founding years.
New Orleans Pelicans	2002
Toronto Raptors	1995
Memphis Grizzlies	1995
Minnesota Timberwolves	1989
Orlando Magic	1989


-- =====================================================================
-- CHECK YOUR WORK
-- Answer each question in a sentence or two, as a comment.
-- =====================================================================

-- How many teams are in Ohio?
--There is 1 team in Ohio, the Cleveland Cavaliers.

-- What's the oldest team in the league, and what year?
-- The oldest team in the league is the Boston Celtics, founded in 1946.


-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Query:
-- a search of a database for specific information, often using SQL commands.

-- Clause:
-- a part of a SQL statement that performs a specific function, such as WHERE or ORDER BY.

-- Alias (AS):
-- a temporary name given to a column or table in a SQL statement for easier reference.
