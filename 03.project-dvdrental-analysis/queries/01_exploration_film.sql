-- Projet : analyse de la base dvdrental (PostgreSQL)
-- Partie 1 : explorer la table film

-- Q1 : À quoi ressemble la table film ?
SELECT * FROM film;

-- Q2 : Quelles classifications (rating) existent ?
SELECT DISTINCT rating FROM film;

-- Q3 : Quels tarifs de location existent ?
SELECT DISTINCT rental_rate FROM film;

-- Q4 : Combien de films par classification ?
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating DESC;

-- Q5 : Combien de films par tarif de location ?
SELECT rental_rate, COUNT(rental_rate)
FROM film
GROUP BY rental_rate
ORDER BY rental_rate DESC;
