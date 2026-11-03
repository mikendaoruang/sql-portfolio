-- Project: dvdrental analysis (PostgreSQL)
-- Part 9: LEFT OUTER JOIN
-- A LEFT JOIN keeps all rows of the left table, even without a match in the right table. Unmatched rows get NULL values, so filtering on IS NULL finds what is missing.

-- Q1: Which films are in the catalog but have no copy in any store?
SELECT f.film_id, title, inventory_id, store_id
FROM film AS f
LEFT OUTER JOIN inventory AS i ON f.film_id = i.film_id
WHERE i.film_id IS NULL;
-- Result: 42 films have no copy in inventory, for example Alice Fantasia, Apollo Teen, Argonauts Town, Ark Ridgemont and Arsenic Independence. This is the opposite of the INNER JOIN in part 8, which hides these films.
