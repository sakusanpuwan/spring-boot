# Project Brief: Inventory Management System for a Logistics Company

## Project Context
This project involves developing a **Spring Boot application** for an **Inventory Management System** designed for a logistics company. The application will manage inventory, process data from external APIs, and interact with various file formats such as XML and text. The primary goal is to provide a comprehensive solution that allows for efficient database operations, API integration, file handling, and robust exception handling, while also incorporating unit testing and core Java programming principles.

## Key Features and Requirements

### 1. **Database Operations**
The application will interact with an Oracle database to store and retrieve product and transaction information. The entities and their relationships are as follows:

#### Entities:
- **Product**: Represents items in the inventory.
- **Supplier**: Represents suppliers for the products.
- **Transaction**: Represents transactions involving products, such as stock updates.

#### Entity Definitions and Fields

##### 1. Product
Represents an item in the inventory.

| Field Name        | Data Type        | Description                                                      |
|-------------------|------------------|------------------------------------------------------------------|
| `id`              | `Long`           | Unique identifier for the product (Primary Key).                |
| `name`            | `String`         | Name of the product.                                            |
| `description`     | `String`         | A brief description of the product.                             |
| `quantity`        | `Integer`        | Quantity of the product in stock.                               |
| `status`          | `String`         | Status of the product ("In Stock", "Out of Stock", etc.).       |
| `supplier`        | `Supplier`       | Associated supplier (Many-to-One relationship).                  |
| `createdDate`     | `LocalDateTime`  | Timestamp of when the product was created.                      |
| `lastUpdatedDate` | `LocalDateTime`  | Timestamp of the last update to the product.                    |

---

##### 2. Supplier
Represents a supplier who provides products.

| Field Name        | Data Type        | Description                                                      |
|-------------------|------------------|------------------------------------------------------------------|
| `id`              | `Long`           | Unique identifier for the supplier (Primary Key).               |
| `name`            | `String`         | Name of the supplier.                                           |
| `email`           | `String`         | Contact email for the supplier.                                 |
| `phone`           | `String`         | Contact phone number for the supplier.                          |
| `createdDate`     | `LocalDateTime`  | Timestamp of when the supplier was created.                     |

---

##### 3. Transaction
Represents a transaction performed on the inventory.

| Field Name        | Data Type        | Description                                                      |
|-------------------|------------------|------------------------------------------------------------------|
| `id`              | `Long`           | Unique identifier for the transaction (Primary Key).            |
| `product`         | `Product`        | The product involved in the transaction (Many-to-One relationship). |
| `transactionType` | `String`         | Type of transaction ("ADD_STOCK", "REMOVE_STOCK", etc.).        |
| `quantity`        | `Integer`        | Quantity of product affected by the transaction.                |
| `status`          | `String`         | Status of the transaction ("Completed", "Failed", etc.).        |
| `transactionDate` | `LocalDateTime`  | Timestamp of when the transaction was performed.                |


#### Relationships:
- A **Product** is associated with a **Supplier** through a **Many-to-One** relationship.
- An **InventoryTransaction** is linked to a **Product** through a **Many-to-One** relationship.

#### Logic:
- Fetch products from the database using **Spring Data JPA** queries.
- Update the status of a product (e.g., "In Stock", "Out of Stock").
- Implement **cross-table validation**: Before processing a transaction, ensure that the associated supplier is valid and correctly linked to the product.

---

### 2. Update quantity & Load new supplier and product details
The application will read XML files for bulk product quantity updates, text files with new supplier and product details.
Example input bulk product quantity update XML file:

```xml
<products>
  <product>
    <id>1</id>
    <name>Widget A</name>
    <quantity>50</quantity>
  </product>
  <product>
    <id>2</id>
    <name>Widget B</name>
    <quantity>20</quantity>
  </product>
</products>
```

Add as new transaction with type ADD_STOCK

Example input new supplier text file:
```text
<NAME>,<EMAIL>,<PHONE>
Global Supplies Inc,email@gmail.com,000-000-0000
Supplies Ltd,email@gmail.com,000-000-0000
```

Example input new product text file:
```text
<NAME>,<DESC>,<QUANTITY>,<SUPPLIER>
Widget A,High-quality widget,150,Global Supplies Inc
Widget B,Economical widget,200, Supplies Ltd
```

### 3. Process transactions 
Load transactions with status READY/FAILED and validate if quantity can be processed before updating status.  

Once transaction is processed, create xml file with transaction details. 

Example Output XML File:
```xml
<transactionSummary>
  <transaction>
    <productId>1</productId>
    <status>Completed</status>
  </transaction>
  <transaction>
    <productId>2</productId>
    <status>Insufficient Stock</status>
  </transaction>
</transactionSummary>
```

### 4. End of run activities
Once all valid transactions have been loaded, update bulk quantity xml.  
Publish text file with all suppliers and products in database with date stamp.

### 5. Exception Handling
The application will implement custom exceptions to handle various errors and provide meaningful messages:

ProductNotFoundException  
InvalidSupplierException  
FileProcessingException

### 6. Unit Testing and Mocking
The application will include unit tests for service layer methods and mock external dependencies.

Unit Tests:
* Test CRUD operations in the service layer.
* Test custom query methods using in-memory databases like H2.

Mocking:
* Mock external API responses.
* Mock file operations to validate XML and text file handling without relying on actual files.

Frameworks: Use JUnit 5 and Mockito for unit testing and mocking.

