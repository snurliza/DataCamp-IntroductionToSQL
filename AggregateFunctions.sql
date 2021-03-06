# DATACAMP - INTRODUCTION TO SQL | CHAPTER 3 AGGREGATE FUNCTIONS

-- Aggregate functions
-- Use the SUM() function to get the total duration of all films.
SELECT SUM(duration)
FROM film

    -- Get the average duration of all films.
    SELECT AVG(duration)
    FROM films

    -- Get the duration of the shortest film.
    SELECT MIN(duration)
    FROM films

    -- Get the duration of the longest film.
    SELECT MAX(duration)
    FROM films

-- Aggregate functions practice
-- Use the SUM() function to get the total amount grossed by all films.
SELECT SUM(gross)
FROM films

    -- Get the average amount grossed by all films.
    SELECT AVG(gross)
    FROM films

    -- Get the amount grossed by the worst performing film.
    SELECT MIN(gross)
    FROM films
    
    -- Get the amount grossed by the best performing film.
    SELECT MAX(gross)
    FROM films

-- Combining aggregate functions with WHERE
-- Use the SUM() function to get the total amount grossed by all films made in the year 2000 or later.
SELECT SUM (gross)
FROM films
WHERE release_year >=2000

    -- Get the average amount grossed by all films whose titles start with the letter 'A'.
    SELECT AVG (gross)
    FROM films
    WHERE title LIKE 'A%'

    -- Get the amount grossed by the worst performing film in 1994.
    SELECT MIN(gross)
    FROM films
    WHERE release_year = 1994

    -- Get the amount grossed by the best performing film between 2000 and 2012, inclusive.
    SELECT MAX(gross)
    FROM films
    WHERE release_year BETWEEN 2000 AND 2012

-- A note on arithmetic
-- What is the result of SELECT (10 / 3);?
SELECT (10/ 3) AS result;

-- It's AS simple AS aliasing
-- Get the title and net profit (the amount a film grossed, minus its budget) for all films. Alias the net profit as net_profit.
SELECT title, gross - budget AS net_profit
FROM films

    -- Get the title and duration in hours for all films. The duration is in minutes, so you'll need to divide by 60.0 to get the duration in hours. Alias the duration in hours as duration_hours.
    SELECT title, duration / 60.0 AS duration_hours
    FROM films

    -- Get the average duration in hours for all films, aliased as avg_duration_hours.
    SELECT AVG (duration) / 60.0 AS avg_duration_hours
    FROM films

-- Even more aliasing
-- Get the percentage of people who are no longer alive. Alias the result as percentage_dead. Remember to use 100.0 and not 100!
-- get the count(deathdate) and multiply by 100.0
-- then divide by count(*)
SELECT COUNT(deathdate) * 100.0 / COUNT(*) AS percentage_dead
FROM people

    -- Get the number of years between the newest film and oldest film. Alias the result as difference.
    SELECT MAX(release_year) - MIN(release_year) AS difference
    FROM films

    -- Get the number of decades the films table covers. Alias the result as number_of_decades. The top half of your fraction should be enclosed in parentheses.
    SELECT (MAX(release_year) - MIN(release_year)) / 10.0 AS number_of_decades
    FROM films

    
