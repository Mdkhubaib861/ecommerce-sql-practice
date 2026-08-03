-- CREATE DATABASE EcommerceDB;
USE EcommerceDB;
/*
SHOW databases;

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Categories (CategoryID, CategoryName) VALUES 
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Books'),
(5, 'Sports');

INSERT INTO Products (ProductID, ProductName, Price, CategoryID) VALUES 
(101, 'Smartphone', 500.00, 1),
(102, 'Laptop', 1000.00, 1),
(103, 'Wireless Mouse', 25.00, 1),
(104, 'T-Shirt', 20.00, 2),
(105, 'Jeans', 40.00, 2),
(106, 'Jacket', 80.00, 2),
(107, 'Blender', 60.00, 3),
(108, 'Coffee Maker', 120.00, 3),
(109, 'SQL Programming Guide', 35.00, 4),
(110, 'Cricket Bat', 150.00, 5);

INSERT INTO Customers (CustomerID, CustomerName, Email, City) VALUES 
(1, 'Rahul Sharma', 'rahul@email.com', 'Mumbai'),
(2, 'Priya Singh', 'priya@email.com', 'Delhi'),
(3, 'Amit Kumar', 'amit@email.com', 'Pune'),
(4, 'Neha Verma', 'neha@email.com', 'Bangalore'),
(5, 'Rohit Gupta', 'rohit@email.com', 'Kolkata'),
(6, 'Pooja Patel', 'pooja@email.com', 'Ahmedabad'),
(7, 'Vikas Joshi', 'vikas@email.com', 'Jaipur'),
(8, 'Anjali Mehta', 'anjali@email.com', 'Chennai'),
(9, 'Karan Malhotra', 'karan@email.com', 'Hyderabad'),
(10, 'Sneha Reddi', 'sneha@email.com', 'Bangalore');

INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES 
(1001, 1, '2026-06-01'),
(1002, 1, '2026-06-03'),
(1003, 2, '2026-06-04'),
(1004, 3, '2026-06-05'),
(1005, 4, '2026-06-06'),
(1006, 2, '2026-06-07'),
(1007, 5, '2026-06-08'),
(1008, 6, '2026-06-09'),
(1009, 7, '2026-06-10'),
(1010, 8, '2026-06-11'),
(1011, 4, '2026-06-12'),
(1012, 1, '2026-06-13');

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES 
(1, 1001, 101, 1),
(2, 1001, 103, 2),
(3, 1002, 102, 1),
(4, 1003, 104, 1),
(5, 1004, 107, 1),
(6, 1005, 109, 2),
(7, 1006, 105, 3),
(8, 1007, 110, 1),
(9, 1008, 106, 1),
(10, 1009, 108, 1),
(11, 1010, 103, 1),
(12, 1011, 101, 1),
(13, 1012, 104, 2),
(14, 1012, 109, 1),
(15, 1006, 103, 1);

 INSERT INTO Categories (CategoryID, CategoryName) VALUES 
(6, 'Toys & Games'),
(7, 'Beauty & Personal Care'),
(8, 'Groceries');

INSERT INTO Products (ProductID, ProductName, Price, CategoryID) VALUES 
(111, 'Remote Control Car', 45.00, 6),
(112, 'Board Game', 25.00, 6),
(113, 'Face Cream', 15.00, 7),
(114, 'Shampoo', 8.00, 7),
(115, 'Organic Honey', 12.00, 8),
(116, 'Green Tea', 10.00, 8),
(117, 'Bluetooth Speaker', 55.00, 1),
(118, 'Sports Shoes', 70.00, 5);

INSERT INTO Customers (CustomerID, CustomerName, Email, City) VALUES 
(11, 'Manoj Kumar', 'manoj@email.com', 'Patna'),
(12, 'Sunita Rao', 'sunita@email.com', 'Lucknow'),
(13, 'Deepak Sharma', 'deepak@email.com', 'Jaipur'),
(14, 'Ritu Sen', 'ritu@email.com', 'Kolkata'),
(15, 'Vikram Rathod', 'vikram@email.com', 'Surat'),
(16, 'Alok Verma', 'alok@email.com', 'Bhopal'),
(17, 'Divya Nair', 'divya@email.com', 'Kochi'),
(18, 'Sanjay Gupta', 'sanjay@email.com', 'Kanpur');

INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES 
(1013, 11, '2026-06-14'),
(1014, 12, '2026-06-15'),
(1015, 13, '2026-06-16'),
(1016, 14, '2026-06-17'),
(1017, 15, '2026-06-18'),
(1018, 11, '2026-06-19'),
(1019, 16, '2026-06-20'),
(1020, 17, '2026-06-21'),
(1021, 12, '2026-06-22'),
(1022, 18, '2026-06-23');

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES 
(16, 1013, 111, 2),
(17, 1013, 112, 1),
(18, 1014, 113, 1),
(19, 1015, 115, 3),
(20, 1016, 117, 1),
(21, 1017, 118, 1),
(22, 1018, 114, 2),
(23, 1019, 116, 4),
(24, 1020, 111, 1),
(25, 1021, 113, 2),
(26, 1022, 118, 1),
(27, 1022, 112, 1);

INSERT INTO Categories (CategoryID, CategoryName) VALUES 
(9, 'Musical Instruments'),
(10, 'Gardening');

INSERT INTO Products (ProductID, ProductName, Price, CategoryID) VALUES 
(201, 'Acoustic Guitar', 120.00, 9),
(202, 'Keyboard Piano', 250.00, 9),
(203, 'Flute', 30.00, 9),
(204, 'Violin', 180.00, 9),
(205, 'Garden Hose', 25.00, 10),
(206, 'Plant Pot', 15.00, 10),
(207, 'Lawn Mower', 300.00, 10),
(208, 'Pruning Shears', 18.00, 10),
(209, 'Gaming Mouse', 45.00, 1),
(210, 'Mechanical Keyboard', 75.00, 1),
(211, 'Monitor 24 inch', 150.00, 1),
(212, 'USB Hub', 15.00, 1),
(213, 'Formal Shirt', 35.00, 2),
(214, 'Formal Trousers', 45.00, 2),
(215, 'Hoodie', 50.00, 2),
(216, 'Winter Coat', 110.00, 2),
(217, 'Non-Stick Pan', 40.00, 3),
(218, 'Dinner Set', 85.00, 3),
(219, 'Water Bottle', 12.00, 3),
(220, 'Knife Set', 55.00, 3),
(221, 'Python Programming', 40.00, 4),
(222, 'Data Structures Book', 45.00, 4),
(223, 'Football', 25.00, 5),
(224, 'Badminton Racket', 35.00, 5),
(225, 'Tennis Ball Box', 10.00, 5);

INSERT INTO Customers (CustomerID, CustomerName, Email, City) VALUES 
(19, 'Aakash Verma', 'aakash@email.com', 'Delhi'),
(20, 'Bhavana Shah', 'bhavana@email.com', 'Mumbai'),
(21, 'Chetan Bhagat', 'chetan@email.com', 'Pune'),
(22, 'Deepika Padukone', 'deepika@email.com', 'Bangalore'),
(23, 'Esha Gupta', 'esha@email.com', 'Kolkata'),
(24, 'Farhan Akhtar', 'farhan@email.com', 'Hyderabad'),
(25, 'Gaurav Khanna', 'gaurav@email.com', 'Chennai'),
(26, 'Hema Malini', 'hema@email.com', 'Jaipur'),
(27, 'Imran Khan', 'imran@email.com', 'Ahmedabad'),
(28, 'Jaya Bachchan', 'jaya@email.com', 'Lucknow'),
(29, 'Kabir Bedi', 'kabir@email.com', 'Surat'),
(30, 'Lata Mangeshkar', 'lata@email.com', 'Indore'),
(31, 'Manish Malhotra', 'manish@email.com', 'Bhopal'),
(32, 'Nawazuddin Siddiqui', 'nawaz@email.com', 'Patna'),
(33, 'Om Puri', 'om@email.com', 'Vadodara'),
(34, 'Preity Zinta', 'preity@email.com', 'Chandigarh'),
(35, 'Qadir Ali', 'qadir@email.com', 'Agra'),
(36, 'Rekha Ganesan', 'rekha@email.com', 'Varanasi'),
(37, 'Salman Khan', 'salman@email.com', 'Mumbai'),
(38, 'Tabu Hashmi', 'tabu@email.com', 'Hyderabad');

INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES 
(1023, 19, '2026-06-24'),
(1024, 20, '2026-06-24'),
(1025, 21, '2026-06-25'),
(1026, 22, '2026-06-26'),
(1027, 23, '2026-06-26'),
(1028, 24, '2026-06-27'),
(1029, 25, '2026-06-27'),
(1030, 26, '2026-06-28'),
(1031, 27, '2026-06-28'),
(1032, 28, '2026-06-29'),
(1033, 29, '2026-06-29'),
(1034, 30, '2026-06-30'),
(1035, 31, '2026-06-30'),
(1036, 32, '2026-07-01'),
(1037, 33, '2026-07-01'),
(1038, 34, '2026-07-02'),
(1039, 35, '2026-07-02'),
(1040, 36, '2026-07-03'),
(1041, 37, '2026-07-03'),
(1042, 38, '2026-07-04');

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES 
(28, 1023, 201, 1),
(29, 1023, 209, 1),
(30, 1024, 205, 2),
(31, 1025, 202, 1),
(32, 1026, 213, 2),
(33, 1026, 214, 1),
(34, 1027, 217, 1),
(35, 1028, 221, 1),
(36, 1029, 223, 2),
(37, 1030, 203, 1),
(38, 1031, 206, 3),
(39, 1032, 210, 1),
(40, 1033, 215, 1),
(41, 1034, 218, 1),
(42, 1035, 222, 1),
(43, 1036, 224, 1),
(44, 1037, 204, 1),
(45, 1038, 207, 1),
(46, 1039, 211, 1),
(47, 1040, 216, 1),
(48, 1041, 219, 4),
(49, 1042, 220, 1),
(50, 1042, 225, 2),
(51, 1024, 208, 1),
(52, 1025, 212, 2);

SELECT 
    Orders.OrderID, 
    Orders.OrderDate, 
    Customers.CustomerName, 
    Customers.City
FROM Orders
INNER JOIN Customers 
    ON Orders.CustomerID = Customers.CustomerID;
    
SELECT 
    OrderItems.OrderID,
    Products.ProductName,
    OrderItems.Quantity,
    Products.Price
FROM OrderItems
INNER JOIN Products 
    ON OrderItems.ProductID = Products.ProductID
WHERE OrderItems.OrderID = 101;
*/