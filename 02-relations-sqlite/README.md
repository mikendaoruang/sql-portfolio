# 02 – Create relations in SQLite

Udemy certification project: *SQL for Data Science (with Python)*.

**Goal:** organise the database from project 01 into related tables.

**Steps:**
- Create a `ceremonies` table (year and host of each ceremony)
- Rebuild the `nominations` table with a foreign key to `ceremonies` (one-to-many relation)
- Use an `INNER JOIN` to fill the new table, then drop and rename tables
- Create `movies`, `actors` and a join table `movies_actors` (many-to-many relation)
- Check the structure with `PRAGMA table_info` and `PRAGMA foreign_key_list`

**Result:** a database with linked tables, ready for queries across several tables.

**To run it:** first run project 01 to create `nominations.db`, then place the file in this folder.

**Tools:** Python, SQLite
