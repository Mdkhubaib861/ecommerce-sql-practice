USE ECOMMERCEDB;
/*
SELECT * FROM customers;
SELECT * FROM Orders;
-- Display the total number of orders placed by each customer.
SELECT c.customerID, count(orderID) orders
FROM customers c INNER JOIN ORDERS o
ON c.customerID=o.customerID
GROUP BY customerID;

-- Display the total quantity ordered for each product.
SELECT productName, SUM(o.quantity) AS total_quantity
FROM Products p INNER JOIN Orderitems o
on P.productID = o.productID
GROUP BY productName;

-- Display the customers who placed orders after '2026-07-01'.
SELECT DISTINCT c.customerID, c.customerName
FROM customers c
INNER JOIN orders o ON c.customerID = o.customerID
WHERE o.orderDate > '2026-07-01';

SELECT * FROM categories;
SELECT * FROM products;
SELECT c.categoryName, COUNT(p.productName) AS P_count
FROM categories AS c INNER JOIN products AS p
ON c.categoryID = p.categoryID
GROUP BY (c.categoryName)
HAVING COUNT(p.productName) > 5;

SELECT c.customerName, SUM(od.Quantity) AS TotalOrderedQuantity
FROM customers AS c INNER JOIN orders AS o 
ON c.CustomerID = o.CustomerID INNER JOIN orderitems AS od 
ON o.OrderID = od.OrderID
GROUP BY (c.customerName)
HAVING SUM(od.Quantity) >= 5;
-- Display all customers along with their orders, including customers who have not placed any orders.
SELECT c.CustomerID, c.customerName, o.OrderID, o.OrderDate
FROM customers AS c LEFT OUTER JOIN orders AS o
ON c.CustomerID = o.CustomerID;

-- Display all categories and their products, including categories that do not have any products
SELECT c.categoryName, p.productName
FROM categories AS c LEFT OUTER JOIN products AS p
ON c.categoryID = p.categoryID;

-- Display all products and the quantities ordered, including products that have never been ordered.
SELECT p.productName, od.Quantity
FROM products AS p
LEFT OUTER JOIN orderitems AS od
ON p.productID = od.productID;
*/
-- Display all orders along with their customer names.
SELECT o.OrderID, o.OrderDate, c.customerName
FROM customers AS c RIGHT OUTER JOIN orders AS o
ON c.CustomerID = o.CustomerID;