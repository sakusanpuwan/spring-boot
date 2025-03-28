CREATE TABLE SUPPLIER (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    email VARCHAR2(255),
    phone VARCHAR2(20),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Product (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    description VARCHAR2(1000),
    quantity NUMBER NOT NULL,
    status VARCHAR2(50),
    supplier_id NUMBER,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_product_supplier FOREIGN KEY (supplier_id)
        REFERENCES Supplier (id) ON DELETE SET NULL
);

CREATE TABLE TRANSACTION (
    id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    product_id NUMBER NOT NULL,
    transaction_type VARCHAR2(50) NOT NULL,
    quantity NUMBER NOT NULL,
    status VARCHAR2(50),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_transaction_product FOREIGN KEY (product_id)
        REFERENCES Product (id) ON DELETE CASCADE
);

DESC SUPPLIER;
DESC PRODUCT;
DESC TRANSACTION;

INSERT INTO Supplier (name, email, phone) VALUES ('Global Supplies Inc.', 'contact@globalsupplies.com', '123-456-7890');
INSERT INTO Product (name, description, quantity, status, supplier_id) VALUES ('Widget A', 'High-quality widget', 100, 'In Stock', 1);
INSERT INTO Transaction (product_id, transaction_type, quantity, status) VALUES (1, 'ADD_STOCK', 50, 'Completed');

INSERT INTO Transaction (product_id, transaction_type, quantity, status) VALUES (21, 'ADD_STOCK', 100, 'Ready');
INSERT INTO Transaction (product_id, transaction_type, quantity, status) VALUES (21, 'REMOVE_STOCK', 101, 'Ready');
INSERT INTO Transaction (product_id, transaction_type, quantity, status) VALUES (21, 'REMOVE_STOCK', 300, 'Ready');


SELECT * FROM SUPPLIER;
SELECT * FROM PRODUCT;
SELECT * FROM TRANSACTION WHERE STATUS = 'Insufficient' OR STATUS = 'Ready';
