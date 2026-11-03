-- Project: dvdrental analysis (PostgreSQL)
-- Part 10: JOIN challenge (several tables)

-- Q1: Show all films with their category and their language. Film and category are linked through the film_category table.
SELECT title, c.name AS Category, l.name AS Movie_language
FROM film AS f
INNER JOIN film_category AS fc ON f.film_id = fc.film_id
INNER JOIN category AS c ON c.category_id = fc.category_id
INNER JOIN language AS l ON l.language_id = f.language_id;
-- Result: 1,000 rows, one per film. Examples: "Academy Dinosaur" (Documentary, English), "Ace Goldfinger" (Horror, English), "African Egg" (Family, English).
