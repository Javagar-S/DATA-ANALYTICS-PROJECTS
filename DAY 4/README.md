# Netflix Data Analysis - SQL Queries

This repository presents a collection of well-structured SQL queries aimed at performing insightful analysis on a Netflix dataset. These queries illustrate fundamental to intermediate SQL concepts such as filtering, grouping, aggregation, subqueries, joins, and view creation. They serve as practical examples for extracting meaningful patterns and summaries from streaming content data.

---

## Dataset Structure

The main table is `netflix` with the following relevant columns:

- `show_id` (VARCHAR)
- `type` (VARCHAR) - 'Movie' or 'TV Show'
- `title` (VARCHAR)
- `director` (VARCHAR)
- `casts` (VARCHAR)
- `country` (VARCHAR)
- `date_added` (VARCHAR)
- `release_year` (INT)
- `rating` (VARCHAR)
- `duration` (VARCHAR) - e.g. "90 min", "2 Seasons"
- `listed_in` (VARCHAR)
- `description` (VARCHAR)

There is also a secondary table assumed called `directors` for join queries:

- `director_name` (VARCHAR)
- `country_of_origin` (VARCHAR)

---

## SQL Queries

### 1. Count Movies and TV Shows

```sql
SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;
```
![1](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/857cbcb3d5255da9403a7eba0eaac3934c0391d8/DAY4/1image%20output.png)


## 2. List All Movies Released in 2020

```sql
SELECT *
FROM netflix
WHERE type = 'Movie' AND release_year = 2020;
```
![2](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/857cbcb3d5255da9403a7eba0eaac3934c0391d8/DAY4/2%20image%20output.png)

## 3. Find Top 3 Countries with Most Content

```sql
SELECT TRIM(country_name) AS country, COUNT(*) AS total_content
FROM (
    SELECT UNNEST(STRING_TO_ARRAY(country, ',')) AS country_name
    FROM netflix
) AS sub
GROUP BY country
ORDER BY total_content DESC
LIMIT 3;
```
![3](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/857cbcb3d5255da9403a7eba0eaac3934c0391d8/DAY4/3%20image%20output.png)

## 4. Simple Subquery: Find Average Duration of Movies

```sql
SELECT AVG(CAST(SPLIT_PART(duration, ' ', 1) AS INT)) AS avg_duration_minutes
FROM netflix
WHERE type = 'Movie' AND duration LIKE '%min%';

```
![4](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/857cbcb3d5255da9403a7eba0eaac3934c0391d8/DAY4/4%20image%20output.png)

## 5. Create a Simple View for Indian Movies

```sql
CREATE VIEW indian_movies AS
SELECT *
FROM netflix
WHERE country LIKE '%India%' AND type = 'Movie';
SELECT * FROM indian_movies;
```
![5](https://github.com/Javagar-S/DATA-ANALYTICS-PROJECTS/blob/857cbcb3d5255da9403a7eba0eaac3934c0391d8/DAY4/5%20image%20output.png)
