-- 1️⃣ Create a view to show customer orders with product details
CREATE VIEW CustomerOrders AS
SELECT c.name AS customer_name, o.order_id, p.product_name, oi.quantity, o.status
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id;

-- 2️⃣ Select from the view
SELECT * FROM CustomerOrders;

-- 3️⃣ Create a secure view (hides emails & phone numbers)
CREATE VIEW CustomerPublic AS
SELECT customer_id, name
FROM Customers;

-- 4️⃣ Create a summary view (category stock levels)
CREATE VIEW CategoryStock AS
SELECT cat.category_name, SUM(p.stock) AS total_stock
FROM Categories cat
JOIN Products p ON cat.category_id = p.category_id
GROUP BY cat.category_name;
