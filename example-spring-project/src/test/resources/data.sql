INSERT INTO Supplier (name, email, phone) VALUES ('Global Supplies Inc.', 'contact@globalsupplies.com', '123-456-7890');
INSERT INTO Product (name, description, quantity, status, supplier_id) VALUES ('Widget A', 'High-quality widget', 100, 'In Stock', 1);

INSERT INTO Transaction (product_id, transaction_type, quantity, status) VALUES (1, 'ADD_STOCK', 50, 'Completed');
INSERT INTO Transaction (product_id, transaction_type, quantity, status) VALUES (1, 'ADD_STOCK', 100, 'Ready');
INSERT INTO Transaction (product_id, transaction_type, quantity, status) VALUES (1, 'REMOVE_STOCK', 101, 'Ready');
INSERT INTO Transaction (product_id, transaction_type, quantity, status) VALUES (1, 'REMOVE_STOCK', 300, 'Ready');

