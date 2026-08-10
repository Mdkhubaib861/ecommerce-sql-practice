use ecommercedb;

-- SELECT * FROM products;
-- SELECT * FROM categories;
/*
SELECT c.categoryname, p.productname, CONCAT(LEFT(c.categoryname, 3), LEFT(p.productname, 3)) AS result 
FROM categories c INNER JOIN products p 
ON c.categoryID = p.categoryID ;

SELECT categoryID, Lpad(categoryID,4,'0') as CAT_NAME
FROM categories;

SELECT productName, LOCATE('o',productName) AS O_POS
FROM PRODUCTS;

SELECT CategoryName, REPLACE(CategoryName,"e","x") AS NEW_NAME
FROM categories;

SELECT productName, LOCATE('o',productName) AS O_POS
FROM PRODUCTS
WHERE LOCATE('o',productName) !=0;
*/

