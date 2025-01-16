# Project Example: Database Operations

This document explains the example dataset for a project involving database operations. The provided tables, `T1` and `T2`, are used to demonstrate various SQL queries and relational database concepts.

## Tables Overview

### Table: T1
| A   | B       | C   | D   |
|-----|---------|-----|-----|
| 1   | blau    | 10  | X   |
| 2   | blau    | 40  | X   |
| 3   | rosa    | 30  | S   |
| 4   | orange  | 10  | M   |
| 5   | orange  | 20  | M   |
| 6   | orange  | 50  | X   |
| 7   | orange  | 50  | X   |
| 8   | magenta | 50  | S   |
| 9   | magenta | 40  | S   |
| 10  | violett | 10  | XXL |
| 11  | violett | 10  | XXL |
| 12  | violett | 10  | M   |

### Table: T2
| E   | B       | C   |
|-----|---------|-----|
| 2   | blau    | 20  |
| 4   | blau    | 40  |
| 4   | blau    | 50  |
| 6   | orange  | 20  |
| 6   | orange  | 50  |
| 8   | orange  | 50  |

## Use Case

This dataset is designed to showcase the following operations:

1. **Join Operations:**
   - Demonstrating inner joins, outer joins, and cross joins between `T1` and `T2`.
2. **Filtering and Aggregation:**
   - Filtering rows based on specific conditions.
   - Aggregating data using functions like `SUM`, `COUNT`, or `AVG`.
3. **Group By Operations:**
   - Grouping rows and performing aggregate operations.
4. **Data Comparison:**
   - Comparing values across `T1` and `T2`.

## Example Queries

### Query 1: Inner Join Between `T1` and `T2`
Find all rows where `B` and `C` match between `T1` and `T2`:
```sql
SELECT T1.A, T1.B, T1.C, T1.D, T2.E
FROM T1
JOIN T2 ON T1.B = T2.B AND T1.C = T2.C;
```

### Query 2: Filter Rows in `T1`
Retrieve rows from `T1` where `D = 'X'`:
```sql
SELECT *
FROM T1
WHERE D = 'X';
```

### Query 3: Group By and Aggregate
Find the count of rows grouped by `B` in `T1`:
```sql
SELECT B, COUNT(*) AS RowCount
FROM T1
GROUP BY B;
```

### Query 4: Comparison Between Tables
List entries in `T1` where `B` exists in `T2` but `C` does not match:
```sql
SELECT T1.A, T1.B, T1.C
FROM T1
WHERE T1.B IN (SELECT B FROM T2)
  AND T1.C NOT IN (SELECT C FROM T2);
```

## Potential Applications

- **Learning SQL Basics:**
  - Ideal for beginners to practice basic SQL commands.
- **Database Query Optimization:**
  - Experimenting with indexes and optimized query structures.
- **Data Analysis:**
  - Using SQL to extract insights from tabular data.

## Conclusion

This example provides a small but meaningful dataset to explore relational database concepts. It can be extended or modified to suit more complex scenarios, making it a versatile tool for both teaching and practice.
