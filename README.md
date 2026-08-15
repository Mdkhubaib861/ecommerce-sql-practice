# 🛒 E-Commerce SQL Database & JOIN Practice

This project is a complete practice repository designed to build and demonstrate practical knowledge of relational databases, schema design, subqueries, aggregate operations, and SQL JOINs using an E-Commerce domain.

---

## 📐 Database Schema & ER Diagram

The database architecture consists of 5 core normalized tables linked via Primary Key (PK) and Foreign Key (FK) constraints:

* **Categories**: Holds product categorization information.
* **Products**: Stores catalog items, pricing details, and maps each item to a category.
* **Customers**: Contains user profiles and contact details.
* **Orders**: Logs general order records tied to specific customers.
* **OrderItems**: Bridge table mapping items and ordered quantities to specific order IDs.

### Visual ER Diagram

```mermaid
erDiagram
    CUSTOMERS ||--o{ ORDERS : places
    ORDERS ||--o{ ORDER_ITEMS : contains
    PRODUCTS ||--o{ ORDER_ITEMS : includes
    CATEGORIES ||--o{ PRODUCTS : belongs_to

    CUSTOMERS {
        int CustomerID PK
        string CustomerName
        string Email
        string City
    }
    ORDERS {
        int OrderID PK
        int CustomerID FK
        date OrderDate
    }
    ORDER_ITEMS {
        int OrderItemID PK
        int OrderID FK
        int ProductID FK
        int Quantity
    }
    PRODUCTS {
        int ProductID PK
        int CategoryID FK
        string ProductName
        decimal Price
    }
    CATEGORIES {
        int CategoryID PK
        string CategoryName
    }
