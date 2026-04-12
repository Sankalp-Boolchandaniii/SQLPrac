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

### `right_join.sql`

Demonstrates **RIGHT JOIN** operations using a housing society schema.

- **Tables:** `apartments`, `residents`, `maintenance_requests`
- **Concepts covered:**
  - Basic `RIGHT JOIN` to include all rows from the right table (with `NULL` for non-matching left rows)
  - Finding unoccupied apartments using `RIGHT JOIN` + `WHERE ... IS NULL`
  - `COUNT` and `GROUP_CONCAT` with `RIGHT JOIN` to aggregate residents per apartment
  - `ENUM` column type for status fields
  - Foreign key constraints between tables
- **Key note:** `RIGHT JOIN` is the mirror of `LEFT JOIN` — it ensures all rows from the right table appear, even if there's no matching row on the left.

### `union_unionall.sql`

Demonstrates **UNION** and **UNION ALL** operations using an employee-customer schema.

- **Tables:** `headquarters_employees`, `branch_employees`, `customers`
- **Concepts covered:**
  - `UNION` to combine result sets and remove duplicates
  - `UNION ALL` to combine result sets while keeping duplicates
  - Adding a descriptor/type column (e.g., `'employee'`, `'customer'`) to distinguish sources
  - `ORDER BY` applied after a `UNION` to sort the combined result
  - Filtering with `WHERE` before `UNION`
  - Handling different table structures by padding with `NULL` columns
  - Finding unique values across tables using `UNION`
  - Finding common values across tables using `UNION ALL` + `GROUP BY` + `HAVING`
- **Key note:** `UNION` requires all queries to have the same number of columns with compatible data types; column names are taken from the first `SELECT`.

### `full_join.sql`

Demonstrates **FULL JOIN** emulation in MySQL using a Friends-themed schema.

- **Tables:** `characters`, `apartments`
- **Concepts covered:**
  - Emulating `FULL JOIN` in MySQL using `UNION` of `LEFT JOIN` and `RIGHT JOIN`
  - Comparison of `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL JOIN` results
  - Filtering unmatched rows from either side using `WHERE ... IS NULL`
  - Combining two `IS NULL` filters with `UNION` to find all unmatched records from both tables
  - PostgreSQL native `FULL JOIN` syntax (shown as reference in comments)
- **Key note:** MySQL does not natively support `FULL JOIN` — emulate it by `UNION`-ing a `LEFT JOIN` and a `RIGHT JOIN` on the same condition.

### `cross_join.sql`

Demonstrates **CROSS JOIN** (Cartesian product) using a product catalog schema.

- **Tables:** `products`, `colors`, `sizes`
- **Concepts covered:**
  - Basic `CROSS JOIN` between two tables to generate all combinations
  - Multi-table `CROSS JOIN` (3 tables) to generate all product variations
  - Using `CONCAT` to build descriptive labels from combined rows
  - Filtering a Cartesian product with `WHERE` to limit results
  - Using `EXPLAIN` to inspect the query execution plan
- **Key note:** `CROSS JOIN` produces a Cartesian product — the result set size is the product of all row counts (e.g., 4 × 5 × 4 = 80 rows), so use it carefully on large tables.
