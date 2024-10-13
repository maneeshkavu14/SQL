CREATE TABLE Products (
    ProductID INT PRIMARY KEY,ProductName VARCHAR(100),Category VARCHAR(50),Price INT,StockQuantity INT,Supplier VARCHAR(100),Description VARCHAR(255),
    SKU VARCHAR(50),CreatedDate VARCHAR(20), AvailabilityStatus VARCHAR(20));


INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Description, SKU, CreatedDate, AvailabilityStatus) VALUES
(1, 'Laptop', 'Electronics', 80000, 50, 'Tech Suppliers', 'High performance laptop', 'LAP123', '2024-01-01', 'Available'),
(2, 'Phone', 'Electronics', 30000, 100, 'Mobile Inc.', 'Latest smartphone model', 'PHN456', '2024-01-05', 'Available'),
(3, 'Headphones', 'Audio', 15000, 200, 'Sound Co.', 'Noise-canceling headphones', 'HP789', '2024-01-10', 'Available'),
(4, 'Desk', 'Furniture', 20000, 30, 'Office Goods', 'Ergonomic office desk', 'DSK101', '2024-01-15', 'Available'),
(5, 'Chair', 'Furniture', 8000, 75, 'Office Goods', 'Comfortable office chair', 'CHR202', '2024-01-20', 'Available'),
(6, 'Monitor', 'Electronics', 22000, 60, 'Tech Suppliers', '27-inch monitor', 'MNT303', '2024-01-25', 'Available'),
(7, 'Printer', 'Electronics', 12000, 40, 'Tech Suppliers', 'All-in-one printer', 'PRT404', '2024-01-30', 'Available'),
(8, 'Keyboard', 'Electronics', 3000, 150, 'Tech Suppliers', 'Wireless keyboard', 'KYB505', '2024-01-31', 'Available'),
(9, 'Mouse', 'Electronics', 1500, 200, 'Tech Suppliers', 'Wireless mouse', 'MOU606', '2024-02-01', 'Available'),
(10, 'Webcam', 'Electronics', 5000, 80, 'Tech Suppliers', 'HD webcam', 'WBC707', '2024-02-02', 'Available');


CREATE TABLE Orders (OrderID INT PRIMARY KEY,CustomerName VARCHAR(100),ProductID INT,Quantity INT,TotalPrice INT,OrderStatus VARCHAR(50),OrderDate VARCHAR(20), PaymentMethod VARCHAR(50),
ShippingAddress VARCHAR(255),DeliveryStatus VARCHAR(20));


INSERT INTO Orders (OrderID, CustomerName, ProductID, Quantity, TotalPrice, OrderStatus, OrderDate, PaymentMethod, ShippingAddress, DeliveryStatus) VALUES
(1, 'Alice', 1, 1, 80000, 'Completed', '2024-01-02', 'Credit Card', '123 Main St', 'Delivered'),
(2, 'Bob', 2, 2, 60000, 'Pending', '2024-01-03', 'PayPal', '456 Elm St', 'Pending'),
(3, 'Charlie', 3, 3, 45000, 'Completed', '2024-01-04', 'Debit Card', '789 Pine St', 'Delivered'),
(4, 'David', 4, 1, 20000, 'Shipped', '2024-01-05', 'Credit Card', '101 Oak St', 'In Transit'),
(5, 'Eva', 5, 2, 16000, 'Completed', '2024-01-06', 'Credit Card', '202 Maple St', 'Delivered'),
(6, 'Frank', 6, 1, 22000, 'Pending', '2024-01-07', 'Debit Card', '303 Birch St', 'Pending'),
(7, 'Grace', 7, 1, 12000, 'Shipped', '2024-01-08', 'PayPal', '404 Cedar St', 'Delivered'),
(8, 'Hannah', 8, 3, 9000, 'Completed', '2024-01-09', 'Credit Card', '505 Spruce St', 'Delivered'),
(9, 'Ian', 9, 5, 7500, 'Pending', '2024-01-10', 'Debit Card', '606 Willow St', 'Pending'),
(10, 'Jack', 10, 2, 10000, 'Shipped', '2024-01-11', 'Credit Card', '707 Palm St', 'In Transit');


CREATE TABLE Customers (CustomerID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Email VARCHAR(100),Phone VARCHAR(15),Address VARCHAR(255),City VARCHAR(50),State VARCHAR(50),ZipCode VARCHAR(10),JoinDate VARCHAR(20));


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, ZipCode, JoinDate) VALUES
(1, 'Alice', 'Williams', 'alice.williams@example.com', '555-1001', '123 Main St', 'New York', 'NY', '10001', '2024-01-01'),
(2, 'Bob', 'Johnson', 'bob.johnson@example.com', '555-1002', '456 Elm St', 'Los Angeles', 'CA', '90001', '2024-01-05'),
(3, 'Charlie', 'Brown', 'charlie.brown@example.com', '555-1003', '789 Pine St', 'Chicago', 'IL', '60601', '2024-01-10'),
(4, 'David', 'Smith', 'david.smith@example.com', '555-1004', '101 Oak St', 'Houston', 'TX', '77001', '2024-01-15'),
(5, 'Eva', 'Garcia', 'eva.garcia@example.com', '555-1005', '202 Maple St', 'Phoenix', 'AZ', '85001', '2024-01-20'),
(6, 'Frank', 'Martinez', 'frank.martinez@example.com', '555-1006', '303 Birch St', 'Philadelphia', 'PA', '19101', '2024-01-25'),
(7, 'Grace', 'Davis', 'grace.davis@example.com', '555-1007', '404 Cedar St', 'San Antonio', 'TX', '78201', '2024-01-30'),
(8, 'Hannah', 'Lopez', 'hannah.lopez@example.com', '555-1008', '505 Spruce St', 'San Diego', 'CA', '92101', '2024-01-31'),
(9, 'Ian', 'Hernandez', 'ian.hernandez@example.com', '555-1009', '606 Willow St', 'Dallas', 'TX', '75201', '2024-02-01'),
(10, 'Jack', 'Wilson', 'jack.wilson@example.com', '555-1010', '707 Palm St', 'San Jose', 'CA', '95101', '2024-02-02');


SELECT * FROM products;

UPDATE Products SET Price = 75000 WHERE Category = 'Electronics' AND StockQuantity < 50;
UPDATE Products SET AvailabilityStatus = 'Available' WHERE ProductID = 3 OR StockQuantity = 0;
UPDATE Products SET AvailabilityStatus = 'Out of Stock' WHERE ProductID IN (3, 7, 10);



SELECT * FROM ORDERS;
UPDATE Orders SET OrderStatus = 'Cancelled' WHERE PaymentMethod = 'Debit Card' AND DeliveryStatus = 'Pending';
UPDATE Orders SET OrderStatus = 'Cancelled' WHERE PaymentMethod = 'Credit Card' OR Quantity > 2;
UPDATE Orders SET OrderStatus = 'Shipped' WHERE OrderID IN (2, 5, 9);



SELECT * FROM Customers;
UPDATE Customers SET City = 'San Francisco' WHERE State = 'CA' OR ZipCode IN ('95101', '92101');
UPDATE Customers SET City = 'San Francisco' WHERE State = 'IL' OR ZipCode = '60601';
UPDATE Customers SET City = 'San Francisco' WHERE ZipCode IN ('95101', '92101');



DELETE FROM Products WHERE ProductID IN (5, 8, 10);
ROLLBACK ;

DELETE FROM orders WHERE OrderID = 6;
ROLLBACK;
COMMIT;

DELETE FROM Customers WHERE CustomerID = 7;
ROLLBACK;
COMMIT;



