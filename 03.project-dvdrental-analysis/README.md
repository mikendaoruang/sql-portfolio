# DVD Rental Analysis (PostgreSQL)

SQL queries on the `dvdrental` sample database, written in pgAdmin 4 with PostgreSQL 18. The database models a DVD rental store: films, actors, customers, rentals and payments.

This project follows the PostgreSQL section of my Udemy SQL course. I add the queries here as I finish each lesson.

## Database

`dvdrental` has 15 tables, including `film`, `actor`, `category`, `customer`, `rental`, `payment` and `store`.

To restore it, create an empty database named `dvdrental`, then run in the terminal:

```bash
pg_restore -U postgres -d dvdrental -v "path/to/dvdrental.tar"
```

## Progress

| Topic | Status | File |
|-------|--------|------|
| Exploration with DISTINCT, COUNT, GROUP BY, ORDER BY | Done | [01_exploration_film.sql](queries/01_exploration_film.sql) |
| EXTRACT | Done | [02_extract_rental.sql](queries/02_extract_rental.sql) |
| WHERE, IN, LIKE | Done | [03_where.sql](queries/03_where.sql)<br>[04_in.sql](queries/04_in.sql)<br>[05_like.sql](queries/05_like.sql) |
| GROUP BY and HAVING challenges | DONE | [06_group_by_challenge.sql](queries/06_group_by_challenge.sql)<br>[07_having_challenge.sql](queries/07_having_challenge.sql) |
| JOINS (INNER and OUTER) | Done | [08_inner_join.sql](queries/08_inner_join.sql)<br>[09_outer_join.sql](queries/09_outer_join.sql) |
| JOINS challenge | Done | [10_join_challenge.sql](queries/10_join_challenge.sql) |
| Marketing challenges (best-earning films, best store, rentals by category, promo for customers with 40+ rentals) | To do | [11_marketing_challenge_1.sql](queries/11_marketing_challenge_1.sql)<br>[12_marketing_challenge_2.sql](queries/12_marketing_challenge_2.sql)<br>[13_marketing_challenge_3.sql](queries/13_marketing_challenge_3.sql)<br>[14_marketing_challenge_4.sql](queries/14_marketing_challenge_4.sql)|
## Questions answered so far

**Exploration of the `film` table**

- Which ratings and rental rates exist in the catalog? (`DISTINCT`)
- How many films are there for each rating? (`GROUP BY rating`)
- How many films are there for each rental rate? (`GROUP BY rental_rate`)

Result: films are spread almost evenly across the three rental rates: 0.99 (341 films), 4.99 (336 films) and 2.99 (323 films).

## Tools

PostgreSQL 18 · pgAdmin 4
