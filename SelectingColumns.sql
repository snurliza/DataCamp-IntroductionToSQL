# DATACAMP - INTRODUCTION TO SQL | CHAPTER 1 SELECTING COLUMNS

-- Onboarding | Tables
SELECT *
FROM people

-- Onboarding | Query Result
SELECT *
FROM PEOPLE

-- Onboarding | Errors
SELECT 'DataCamp <3 SQL'
AS result

-- Onboarding | Multi-step Exercises
SELECT 'SQL'
AS result

    -- Now change 'SQL' to 'SQL is' and click Submit!
    SELECT 'SQL'
    AS result

    -- Finally, change 'SQL is' to 'SQL is cool' and click Submit!
    SELECT 'SQL is cool'
    AS result

-- SELECTing single columns
-- Select the title column from the films table.
SELECT title
from films

    -- Select the release_year column from the films table.
    SELECT release_year
    from films

    -- Select the name of each person in the people table.
    SELECT name
    from people

-- SELECTing multiple columns
-- Get the title of every film from the films table.
SELECT title
FROM films

    -- Get the title and release year for every film.
    SELECT title
    FROM films

    -- Get the title, release year and country for every film.
    SELECT title, release_year, country
    FROM films

    -- Get all columns from the films table.
    SELECT *
    FROM films

-- SELECT DISTINCT
-- Get all the unique countries represented in the films table.
SELECT DISTINCT country
FROM films

    -- Get all the different film certifications from the films table.
    SELECT DISTINCT certification
    FROM films

    -- Get the different types of film roles from the roles table.
    SELECT DISTINCT role
    FROM roles

-- Learning to COUNT
SELECT COUNT(*)
FROM reviews

-- Practice with COUNT
-- Count the number of rows in the people table.
SELECT COUNT(*)
FROM people

    -- Count the number of (non-missing) birth dates in the people table.
    SELECT COUNT(birthdate)
    FROM people

    -- Count the number of unique birth dates in the people table.
    SELECT COUNT(DISTINCT birthdate)
    FROM people

    -- Count the number of unique languages in the films table.
    SELECT COUNT(DISTINCT language)
    FROM films

    -- Count the number of unique countries in the films table.
    SELECT COUNT(DISTINCT country)
    FROM films


