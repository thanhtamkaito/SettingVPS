
CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    CreatedDate DATETIME DEFAULT GETDATE()
);


CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100),
    SupplierID INT,
    Price DECIMAL(10, 2),
    CreatedDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE Suppliers (
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierName NVARCHAR(100),
    ContactEmail NVARCHAR(100),
    CreatedDate DATETIME DEFAULT GETDATE()
);


CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE OrderItems (
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);





SET NOCOUNT ON;
DECLARE @i INT = 1;
WHILE @i <= 1000
BEGIN
    INSERT INTO Suppliers (SupplierName, ContactEmail)
    VALUES ('Supplier' + CAST(@i AS NVARCHAR(50)), 'supplier' + CAST(@i AS NVARCHAR(50)) + '@example.com');
    SET @i = @i + 1;
END;

SET @i = 1;
WHILE @i <= 10000
BEGIN
    INSERT INTO Products (ProductName, SupplierID, Price)
    VALUES ('Product' + CAST(@i AS NVARCHAR(50)), FLOOR(RAND() * 1000) + 1, RAND() * 100);
    SET @i = @i + 1;
END;

SET @i = 1;
WHILE @i <= 5000
BEGIN
    INSERT INTO Customers (FirstName, LastName, Email)
    VALUES ('FirstName' + CAST(@i AS NVARCHAR(50)), 'LastName' + CAST(@i AS NVARCHAR(50)), 'customer' + CAST(@i AS NVARCHAR(50)) + '@example.com');
    SET @i = @i + 1;
END;

SET @i = 1;
WHILE @i <= 50000
BEGIN
    INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
    VALUES (FLOOR(RAND() * 5000) + 1, DATEADD(DAY, -FLOOR(RAND() * 365), GETDATE()), RAND() * 1000);
    SET @i = @i + 1;
END;


SET @i = 1;
WHILE @i <= 200000
BEGIN
    INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price)
    VALUES (FLOOR(RAND() * 50000) + 1, FLOOR(RAND() * 10000) + 1, FLOOR(RAND() * 10) + 1, RAND() * 100);
    SET @i = @i + 1;
END;
SET NOCOUNT OFF;
