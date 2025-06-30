## SQL Joins (INNER, LEFT, RIGHT, FULL)

**Objective**: Merge data from related tables using JOINs.

**Tables Used**:
- `Customers(CustomerID, CustomerName, City)`
- `Orders(OrderID, OrderDate, CustomerID, Amount)`

**JOINs Practiced**:
- `INNER JOIN`: Matching records only
- `LEFT JOIN`: All customers, even if no orders
- `RIGHT JOIN`: All orders, even if customer not found
- `FULL OUTER JOIN`: All records from both tables (using UNION in MySQL)

**Note**: SQLite doesn’t support RIGHT or FULL JOIN — workaround used with `UNION`.

**Tool**: MySQL Workbench / SQLite
