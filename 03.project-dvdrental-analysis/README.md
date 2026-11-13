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
| GROUP BY and HAVING challenges | Done | [06_group_by_challenge.sql](queries/06_group_by_challenge.sql)<br>[07_having_challenge.sql](queries/07_having_challenge.sql) |
| JOINS (INNER and OUTER) | Done | [08_inner_join.sql](queries/08_inner_join.sql)<br>[09_outer_join.sql](queries/09_outer_join.sql) |
| JOINS challenge | Done | [10_join_challenge.sql](queries/10_join_challenge.sql) |
| Marketing challenges (best-earning films, best store, rentals by category, promo for customers with 40+ rentals) | Done | [11_marketing_challenge_1.sql](queries/11_marketing_challenge_1.sql)<br>[12_marketing_challenge_2.sql](queries/12_marketing_challenge_2.sql)<br>[13_marketing_challenge_3.sql](queries/13_marketing_challenge_3.sql)<br>[14_marketing_challenge_4.sql](queries/14_marketing_challenge_4.sql)|
## Questions answered so far

## Questions answered

### Exploration (`DISTINCT`, `COUNT`, `GROUP BY`, `ORDER BY`)
- How many films are there for each rental rate? Almost evenly spread: 0.99 (341 films), 4.99 (336) and 2.99 (323).

### Dates (`EXTRACT`)
- How many rentals per month, and how many rentals per customer? July 2005 is the busiest month (6,709 rentals, 11.2 per customer), followed by August 2005 (5,686). February 2006 has only 182 rentals, so the data is probably incomplete for that month.

### Filtering (`WHERE`, `IN`, `LIKE`)
- What is the description of the film "Texas Watch"? Found with `WHERE title = ...`.
- Which rentals belong to customers 5, 9 and 10? 86 rentals, 2 of them not returned yet (`return_date` is `NULL`).
- Which names start with "Jen"? Jennifer, Jennie and Jenny.
- How many actors have a last name starting with "P"? 14. How many films have "Truman" in the title? 5.

### Grouping and filtering groups (`GROUP BY`, `HAVING`)
- How much did each staff member sell? Staff 1: 7,292 payments for 30,252.12. Staff 2: 7,304 payments for 31,059.92.
- What is the average replacement cost per rating? From 18.96 (PG) to 20.40 (PG-13).
- Who are the 5 best customers? Customers 148 (211.55), 526 (208.58), 178 (194.61), 137 (191.62) and 144 (189.60).
- Which customers made more than 30 payments? 67 customers. Which ratings have an average rental duration above 5 days? NC-17, PG and PG-13.

### Joins (`INNER JOIN`, `LEFT JOIN`)
- How many copies of each film does each store have? 1,521 film-and-store combinations.
- Which films have no copy in any store? 42 films (found with a `LEFT JOIN` and `IS NULL`).
- What are the category and the language of every film? 1,000 films, joined across 4 tables.

### Marketing challenges
1. **Which films earn the most?** "Bucket Brotherhood" (34 rentals, 169.66), then "Scalawag Duck" (32 rentals, 159.68). Revenue is an estimate: number of rentals x rental rate.
2. **Which store sold the most?** Store 2 with 30,683.13, against 30,628.91 for store 1.
3. **How many rentals for Action, Comedy and Animation?** Animation 1,166, Action 1,112, Comedy 941.
4. **Which customers should get a promo offer?** The 7 customers with at least 40 rentals. The top two are Eleanor Hunt (46) and Karl Seal (45).

## Tools

PostgreSQL 18 · pgAdmin 4
