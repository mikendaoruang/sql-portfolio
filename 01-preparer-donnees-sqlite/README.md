# 01 – Prepare data for SQLite

Udemy certification project: *SQL for Data Science (with Python)*.

**Goal:** clean an Academy Awards dataset with pandas and load it into a SQLite database.

**Steps:**
- Remove the empty "Unnamed" columns
- Keep only the years after 2000 and the 4 acting categories
- Convert the YES/NO column into 1/0
- Split the "Additional Info" column into movie name and character name
- Export the final table into a SQLite database (`nominations.db`)

**Result:** a clean `nominations` table with 200 rows and 6 columns, ready for SQL queries.

**Tools:** Python, pandas, SQLite
