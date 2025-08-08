-- Retrieve the total number of Netflix entries grouped by content type (`Movie` or `TV Show`).

SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;

-- List All Movies Released in 2020
-- Get detailed information for movies released in the year 2020.

SELECT *
FROM netflix
WHERE type = 'Movie' AND release_year = 2020;

-- 3. Find Top 3 Countries with Most Content
-- Identify the top three countries producing the most Netflix content.

SELECT TRIM(country_name) AS country, COUNT(*) AS total_content
FROM (
    SELECT UNNEST(STRING_TO_ARRAY(country, ',')) AS country_name
    FROM netflix
) AS sub
GROUP BY country
ORDER BY total_content DESC
LIMIT 3;

-- 4. Simple Subquery: Find Average Duration of Movies
-- Calculate the average duration (in minutes) of movies on Netflix.

SELECT AVG(CAST(SPLIT_PART(duration, ' ', 1) AS INT)) AS avg_duration_minutes
FROM netflix
WHERE type = 'Movie' AND duration LIKE '%min%';

-- 5. Create a Simple View for Indian Movies
-- Create a reusable view to simplify querying Indian movies on Netflix.

CREATE OR REPLACE VIEW indian_movies AS
SELECT *
FROM netflix
WHERE country LIKE '%India%' AND type = 'Movie';

-- Query the view

SELECT * FROM indian_movies;
