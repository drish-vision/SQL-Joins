CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1, 'Alice', 'Chennai'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Delhi'),
(4, 'David', 'Kolkata');

INSERT INTO Orders (OrderID, OrderDate, CustomerID, Amount) VALUES
(101, '2025-06-01', 1, 500.00),
(102, '2025-06-02', 2, 150.00),
(103, '2025-06-03', 1, 200.00),
(104, '2025-06-04', 5, 300.00);  -- Order placed by unknown customer


SELECT 
    Customers.CustomerName, 
    Orders.OrderID, 
    Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT 
    Customers.CustomerName, 
    Orders.OrderID, 
    Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


SELECT 
    Customers.CustomerName, 
    Orders.OrderID, 
    Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT 
    Customers.CustomerName, 
    Orders.OrderID, 
    Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT 
    Customers.CustomerName, 
    Orders.OrderID, 
    Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
