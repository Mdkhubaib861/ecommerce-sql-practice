use ecommercedb;

-- SELECT * FROM products;
-- SELECT * FROM categories;
SELECT c.categoryname, p.productname, CONCAT(LEFT(c.categoryname, 3), LEFT(p.productname, 3)) AS result 
FROM categories c INNER JOIN products p 
ON c.categoryID = p.categoryID ;
