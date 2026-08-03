# 🛒 E-Commerce SQL Database & JOIN Practice

This project is a complete, beginner-to-intermediate level practice repository designed to help understand relational databases, schema design, and SQL JOIN operations using an E-Commerce domain.

---

## 📐 Database Schema & ER Diagram

The database consists of 5 core tables linked with Primary Keys (PK) and Foreign Keys (FK):

1. **`Categories`** (PK: `CategoryID`)
2. **`Products`** (PK: `ProductID`, FK: `CategoryID`)
3. **`Customers`** (PK: `CustomerID`)
4. **`Orders`** (PK: `OrderID`, FK: `CustomerID`)
5. **`OrderItems`** (PK: `OrderItemID`, FK: `OrderID`, FK: `ProductID`)

### Visual ER Diagram
```text
+-------------------+       +-------------------+       +-------------------+
|     Customers     |       |      Orders       |       |    OrderItems     |
+-------------------+       +-------------------+       +-------------------+
| PK  CustomerID    |<------+ PK  OrderID       |<------+ PK  OrderItemID   |
|     CustomerName  |       | FK  CustomerID    |       | FK  OrderID       |
|     Email         |       |     OrderDate     |       | FK  ProductID     |
|     City          |       +-------------------+       |     Quantity      |
+-------------------+                                   +-------------------+
                                                                  |
                                                                  |
+-------------------+                                   +-------------------+
|    Categories     |                                   |     Products      |
+-------------------+       +-------------------+       +-------------------+
| PK  CategoryID    |<------+ PK  CategoryID    |<------+ PK  ProductID     |
|     CategoryName  |       |     ProductName   |       |     ProductName   |
+-------------------+       |     Price         |       |     Price         |
                            +-------------------+       +-------------------+
