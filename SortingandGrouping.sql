# DATACAMP - INTRODUCTION TO SQL | CHAPTER 4 SORTING AND GROUPING

-- Sorting single columns
    -- Get the names of people from the people table, sorted alphabetically.
    SELECT name
    FROM people
    ORDER BY name

    -- Get the names of people, sorted by birth date.
    SELECT name 
    FROM people
    ORDER BY birthdate

    -- Get the birth date and name for every person, in order of when they were born.
    SELECT birthdate, name
    FROM people
    ORDER BY birthdate

-- Sorting single columns (2)
    -- Get the title of films released in 2000 or 2012, in the order they were released.
    SELECT title
    FROM films
    WHERE release_year IN (2000, 2012)
    ORDER BY release_year

    -- Get all details for all films except those released in 2015 and order them by duration.
    SELECT *
    FROM films
    WHERE release_year <> 2015
    ORDER BY duration

    -- Get the title and gross earnings for movies which begin with the letter 'M' and order the results alphabetically.
    SELECT title, gross
    FROM films
    WHERE title like 'M%'
    ORDER BY title

-- Sorting single columns (DESC)
    -- Get the IMDB score and film ID for every film from the reviews table, sorted from highest to lowest score.
    SELECT imdb_score, film_id
    FROM reviews
    ORDER BY imdb_score DESC

    -- Get the title for every film, in reverse order.
    SELECT title
    FROM films
    ORDER BY title DESC

    -- Get the title and duration for every film, in order of longest duration to shortest.
    SELECT title, duration
    FROM films
    ORDER BY duration DESC

-- Sorting multiple columns
    -- Get the birth date and name of people in the people table, in order of when they were born and alphabetically by name.
    SELECT birthdate, name
    FROM people
    ORDER BY birthdate, name

    -- Get the release year, duration, and title of films ordered by their release year and duration.
    SELECT release_year, duration, title
    FROM films
    ORDER BY release_year, duration

    -- Get certifications, release years, and titles of films ordered by certification (alphabetically) and release year.
    SELECT certification, release_year, title
    FROM films
    ORDER BY certification, release_year

    -- Get the names and birthdates of people ordered by name and birth date.
    SELECT name, birthdate
    FROM people
    ORDER BY name, birthdate

-- GROUP BY practice
    -- Get the release year and count of films released in each year.
    SELECT release_year, COUNT (title)
    FROM films
    GROUP BY release_year

    -- Get the release year and average duration of all films, grouped by release year.
    SELECT release_year, AVG(duration)
    FROM films
    GROUP BY release_year

    -- Get the release year and largest budget for all films, grouped by release year.
    SELECT release_year, MAX(budget)
    FROM films
    GROUP BY release_year

    -- Get the IMDB score and count of film reviews grouped by IMDB score in the reviews table.
    SELECT imdb_score, COUNT (*)
    FROM reviews
    GROUP BY imdb_score

-- GROUP BY practice (2)
    -- Get the release year and lowest gross earnings per release year.
    SELECT release_year, MIN(gross)
    FROM films
    GROUP BY release_year

    -- Get the language and total gross amount films in each language made.
    SELECT language, SUM(gross)
    FROM films
    GROUP BY language

    -- Get the country and total budget spent making movies in each country.
    SELECT country, SUM(budget)
    FROM films
    GROUP BY country

    -- Get the release year, country, and highest budget spent making a film for each year, for each country. Sort your results by release year and country.
    SELECT release_year, country, MAX(budget)
    FROM films
    GROUP BY release_year, country
    ORDER BY release_year, country

    -- Get the country, release year, and lowest amount grossed per release year per country. Order your results by country and release year.
    SELECT release_year, country, MIN(gross)
    FROM films
    GROUP BY release_year, country
    ORDER BY country, release_year

-- HAVING a great time
SELECT release_year
FROM films
GROUP BY release_year
HAVING COUNT(title) > 200

-- All together now
    -- Get the release year, budget and gross earnings for each film in the films table.
    SELECT release_year, budget, gross
    FROM films

    -- Modify your query so that only records with a release_year after 1990 are included.
    SELECT release_year, budget, gross
    FROM films
    WHERE release_year > 1990

    -- Remove the budget and gross columns, and group your results by release year.
    SELECT release_year
    FROM films
    WHERE release_year > 1990
    GROUP BY release_year

    -- Modify your query to include the average budget and average gross earnings for the results you have so far. Alias the average budget as avg_budget; alias the average gross earnings as avg_gross.
    SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
    FROM films
    WHERE release_year > 1990
    GROUP BY release_year

    -- Modify your query so that only years with an average budget of greater than $60 million are included.
    SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
    FROM films
    WHERE release_year > 1990
    GROUP BY release_year
    HAVING AVG(budget) > 60000000

    -- Finally, modify your query to order the results from highest average gross earnings to lowest.
    SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
    FROM films
    WHERE release_year > 1990
    GROUP BY release_year
    HAVING AVG(budget) > 60000000
    ORDER BY avg_gross DESC

-- All together now (2)
-- select country, average budget, 
--     and average gross
SELECT country, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
-- from the films table
FROM films
-- group by country 
GROUP BY country
-- where the country has more than 10 titles
HAVING COUNT(title) > 10
-- order by country
ORDER BY country
-- limit to only show 5 results
LIMIT 5;

-- A taste of things to come
-- Submit the code in the editor and inspect the results.
SELECT title, imdb_score
FROM films
JOIN reviews
ON films.id = reviews.film_id
WHERE title = 'To Kill a Mockingbird'
