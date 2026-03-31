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

### `left_join.sql`

Demonstrates **LEFT JOIN** operations using a customer-orders-shipping schema.

- **Tables:** `customers`, `orders`, `shipping`
- **Concepts covered:**
  - Basic `LEFT JOIN` to include all rows from the left table (with `NULL` for non-matching right rows)
  - Multi-table left joins (3 tables: customers → orders → shipping)
  - Filtering with `ON` clause vs. `WHERE` clause in joins
  - Using subqueries in the `FROM` clause for optimized pre-filtering
  - `GROUP BY` with `MAX()` aggregate to find latest order dates
  - `HAVING` with `IS NULL` and `DATE_SUB()` for date-based filtering
  - Foreign key constraints between tables
- **Key note:** Filtering in the `ON` clause vs. a subquery matters for performance — pre-filtering with a subquery is more optimized than filtering after the join.
