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

### 2. **API Integration**
The application will fetch supplier details from an external API endpoint (`/api/supplierData`) in **JSON** format. The response will be parsed and mapped to update the database if the supplier does not exist.

#### Example API Response:
```json
{
  "supplierId": 101,
  "supplierName": "Global Supplies Inc.",
  "contact": "contact@globalsupplies.com"
}
```
### 3. XML File Handling
The application will read and write XML files for bulk product updates and transaction summaries.

Read: Parse an XML file containing bulk product updates.
Write: After processing transactions, generate an XML file summarizing the transactions.  

Example Input XML File:

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

### 4. Text File Handling
The application will handle text files containing product descriptions and export product data to a text file.

Read: Load a text file containing product descriptions and store them in the database.
Write: Export a summary of all products to a text file.  

Example Input Text File:
```text
1,Widget A,High-quality widget
2,Widget B,Economical widget
```

Example Output Text File:
```text
Product ID: 1, Name: Widget A, Description: High-quality widget
Product ID: 2, Name: Widget B, Description: Economical widget
```

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

## Code Flow

### API Endpoint for Transactions
- **POST** `/api/processTransactions`: Reads an XML file, validates data, and processes transactions.

### Database Logic
- Fetch product details using **Spring Data JPA**.
- Validate cross-entity relationships (e.g., product and supplier).
- Update database records based on input and business logic.

### File Handling
- **Read XML**: Use **JAXB** or **Jackson** to parse the XML file and map it to objects.
- **Write XML**: Serialize transaction summaries to XML format.
- **Read Text**: Use Java’s file handling utilities to process line-by-line input.
- **Write Text**: Use **BufferedWriter** to create an output summary file.

### API Integration
- Use **Spring’s RestTemplate** or **WebClient** to fetch supplier details from an external API.
- Parse the API response and update the database if the supplier is not already present.

### Custom Exceptions and Validation
- Validate incoming data (e.g., file content, API response, database relationships).
- Throw and handle custom exceptions as needed.

### Testing
- Use **H2** for integration tests involving the database.
- Mock file operations to test XML and text file handling without relying on actual files.
- Mock API calls and validate response handling.
