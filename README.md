# SQL Practice

A collection of SQL scripts for practicing and learning SQL concepts.

## Files

### `inner_join.sql`

Demonstrates **INNER JOIN** operations using a bookstore schema.

- **Tables:** `authors`, `books`, `categories`, `book_categories`
- **Concepts covered:**
  - Basic `INNER JOIN` between two tables
  - Aliasing tables with `AS`
  - Multi-table joins (3+ tables)
  - `GROUP BY` with aggregate functions (`COUNT`, `GROUP_CONCAT`)
  - `HAVING` clause to filter grouped results
  - `WHERE` with join queries for conditional filtering
  - `ORDER BY` with `DESC` sorting
  - Composite primary keys (`book_categories`)
  - Using `CURDATE()` and `YEAR()` for date-based filtering
- **Key note:** `INNER JOIN` excludes rows with `NULL` values in the join column — use `LEFT` or `RIGHT JOIN` to include them.
