I use SQL Views for better abstraction, readability, and security.

**What I Did**

->Created views using CREATE VIEW with complex SELECT queries.

->Used views to simplify queries and hide underlying table details.

->Applied views to ensure data security (e.g., exposing only necessary columns).

**Interview Questions**

1.What is a view?
A view is a virtual table based on a SELECT query. It doesn’t store data, only the query logic.

2.Can we update data through a view?
Yes, but only if the view is updatable (based on a single table, no aggregates, no GROUP BY, no DISTINCT).
Complex views (with joins, aggregates) usually cannot be updated.

3.What is a materialized view?
A materialized view stores the query result physically like a table.

Normal view = virtual,updates dynamically.

Materialized view = physical, needs manual refresh.

4.Difference between view and table?

Table → stores actual data.

View → stores only query logic (virtual).

5.How to drop a view?

drop view view_name;

6.Why use views?

To Simplify complex queries.
To Provide security (hide sensitive columns).
To Improve readability & abstraction.
Reuse common queries.

7.Can we create indexed views?
Yes, in some databases (like SQL Server) we can create indexed views for performance.
In MySQL, indexing is not supported on views.

8.How to secure data using views?
Create a view that only selects non-sensitive columns and share that view with users instead of raw tables.

9.What are limitations of views?
Performance overhead for very complex queries.
Not all views are updatable.
No direct indexing in MySQL views.
Dependency issues (dropping base tables breaks views).

10.How does WITH CHECK OPTION work?
When creating a view with WITH CHECK OPTION, any insert/update through the view must satisfy the view’s condition.

Example:
CREATE VIEW ActiveOrders AS
SELECT * FROM Orders WHERE status = 'Active'
WITH CHECK OPTION;
