
-- Create Customer with CustID as PK
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(20),
    CustomerAddress VARCHAR(30),
    CustomerCity VARCHAR(20),
    CustomerState VARCHAR(15),
    CustomerPostalCode VARCHAR(15),
    CustomerEmail VARCHAR(30),
    CustomerUserName VARCHAR(30),
    CustomerPassword VARCHAR(20)
);
  
-- Create product line with PK Prod Line ID     
CREATE TABLE ProductLine (
    ProductLineID INT PRIMARY KEY,
    ProductLineName VARCHAR(30)
);

-- Create Product with PK ProdID and FK ProdLineID
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(30),
    ProductFinish VARCHAR(20),
    ProductStandardPrice NUMBER(10,2),
    ProductLineID INT,
    Photo VARCHAR(20),
    FOREIGN KEY(ProductLineID) REFERENCES ProductLine(ProductLineID)
);


-- create orders table with PK order ID and FK Customer ID
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
);

-- Create Orderline with PK OrderID as FK from Orders and FK ProductID from Product
CREATE TABLE OrderLine (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    OrderedQuantity INT,
    SalePrice NUMBER(10,2),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
);

-- Create PriceUpd table PK PriceUpdateID no FKs
CREATE TABLE PriceUpdate(
    PriceUpdateID INT PRIMARY KEY,
    DateChanged DATE,
    OldPrice NUMBER(10,2),
    NewPrice NUMBER(10,2)
);


-- Create territory with PK TerritoryID
CREATE TABLE Territory(
    TerritoryID INT PRIMARY KEY,
    TerritoryName VARCHAR(30)
);

-- create relation DoesBusIn PK (as FK) customer ID, FK TerritoryID
CREATE TABLE DoesBusinessIn (
    CustomerID INT PRIMARY KEY,
    TerritoryID INT,
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY(TerritoryID) REFERENCES Territory(TerritoryID)
);

-- Create salesPerson PK SalesPersId and FK TerritoryID
CREATE TABLE Salesperson(
    SalespersonID INT PRIMARY KEY,
    SalespersonName VARCHAR(20),
    SalespersonPhone VARCHAR(15),
    SalespersonEmail VARCHAR(30),
    SalespersonUserName VARCHAR(20),
    SalespersonPassword VARCHAR(20),
    TerritoryID INT,
    FOREIGN KEY(TerritoryID) REFERENCES Territory(TerritoryID)
);


-- Create Customer with CustID as PK
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(20),
    CustomerAddress VARCHAR(30),
    CustomerCity VARCHAR(20),
    CustomerState VARCHAR(15),
    CustomerPostalCode VARCHAR(15),
    CustomerEmail VARCHAR(30),
    CustomerUserName VARCHAR(30),
    CustomerPassword VARCHAR(20)
);
  
-- Create product line with PK Prod Line ID     
CREATE TABLE ProductLine (
    ProductLineID INT PRIMARY KEY,
    ProductLineName VARCHAR(30)
);

-- Create Product with PK ProdID and FK ProdLineID
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(30),
    ProductFinish VARCHAR(20),
    ProductStandardPrice NUMBER(10,2),
    ProductLineID INT,
    Photo VARCHAR(20),
    FOREIGN KEY(ProductLineID) REFERENCES ProductLine(ProductLineID)
);


-- create orders table with PK order ID and FK Customer ID
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
);

-- Create Orderline with PK OrderID as FK from Orders and FK ProductID from Product
CREATE TABLE OrderLine (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    OrderedQuantity INT,
    SalePrice NUMBER(10,2),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
);

-- Create PriceUpd table PK PriceUpdateID no FKs
CREATE TABLE PriceUpdate(
    PriceUpdateID INT PRIMARY KEY,
    DateChanged DATE,
    OldPrice NUMBER(10,2),
    NewPrice NUMBER(10,2)
);


-- Create territory with PK TerritoryID
CREATE TABLE Territory(
    TerritoryID INT PRIMARY KEY,
    TerritoryName VARCHAR(30)
);

-- create relation DoesBusIn PK (as FK) customer ID, FK TerritoryID
CREATE TABLE DoesBusinessIn (
    CustomerID INT PRIMARY KEY,
    TerritoryID INT,
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY(TerritoryID) REFERENCES Territory(TerritoryID)
);

-- Create salesPerson PK SalesPersId and FK TerritoryID
CREATE TABLE Salesperson(
    SalespersonID INT PRIMARY KEY,
    SalespersonName VARCHAR(20),
    SalespersonPhone VARCHAR(15),
    SalespersonEmail VARCHAR(30),
    SalespersonUserName VARCHAR(20),
    SalespersonPassword VARCHAR(20),
    TerritoryID INT,
    FOREIGN KEY(TerritoryID) REFERENCES Territory(TerritoryID)
);




-- Create Customer with CustID as PK
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(20),
    CustomerAddress VARCHAR(30),
    CustomerCity VARCHAR(20),
    CustomerState VARCHAR(15),
    CustomerPostalCode VARCHAR(15),
    CustomerEmail VARCHAR(30),
    CustomerUserName VARCHAR(30),
    CustomerPassword VARCHAR(20)
);
  
-- Create product line with PK Prod Line ID     
CREATE TABLE ProductLine (
    ProductLineID INT PRIMARY KEY,
    ProductLineName VARCHAR(30)
);

-- Create Product with PK ProdID and FK ProdLineID
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(30),
    ProductFinish VARCHAR(20),
    ProductStandardPrice NUMBER(10,2),
    ProductLineID INT,
    Photo VARCHAR(20),
    FOREIGN KEY(ProductLineID) REFERENCES ProductLine(ProductLineID)
);


-- create orders table with PK order ID and FK Customer ID
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
);

-- Create Orderline with PK OrderID as FK from Orders and FK ProductID from Product
CREATE TABLE OrderLine (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    OrderedQuantity INT,
    SalePrice NUMBER(10,2),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
);

-- Create PriceUpd table PK PriceUpdateID no FKs
CREATE TABLE PriceUpdate(
    PriceUpdateID INT PRIMARY KEY,
    DateChanged DATE,
    OldPrice NUMBER(10,2),
    NewPrice NUMBER(10,2)
);


-- Create territory with PK TerritoryID
CREATE TABLE Territory(
    TerritoryID INT PRIMARY KEY,
    TerritoryName VARCHAR(30)
);

-- create relation DoesBusIn PK (as FK) customer ID, FK TerritoryID
CREATE TABLE DoesBusinessIn (
    CustomerID INT PRIMARY KEY,
    TerritoryID INT,
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY(TerritoryID) REFERENCES Territory(TerritoryID)
);

-- Create salesPerson PK SalesPersId and FK TerritoryID
CREATE TABLE Salesperson(
    SalespersonID INT PRIMARY KEY,
    SalespersonName VARCHAR(20),
    SalespersonPhone VARCHAR(15),
    SalespersonEmail VARCHAR(30),
    SalespersonUserName VARCHAR(20),
    SalespersonPassword VARCHAR(20),
    TerritoryID INT,
    FOREIGN KEY(TerritoryID) REFERENCES Territory(TerritoryID)
);


/*PRODUCT SALES REPORT*/
CREATE VIEW ProductSales(ProductID,TotalSales) AS 
    SELECT O.ProductID, SUM(O.OrderedQuantity) FROM OrderLine O, Product P
    WHERE P.ProductID = O.ProductID GROUP BY O.ProductID;

/*PRODUCT VALUES REPORT VIEW*/                      
CREATE VIEW ProductValue(ProductID,TotalValue) AS 
    SELECT O.ProductID, SUM(O.OrderedQuantity*P.ProductStandardPrice) FROM OrderLine O, Product P
    WHERE P.ProductID = O.ProductID GROUP BY O.ProductID;
                      
/*DATA FOR CUSTOMER REPORT PRODUCTS AND PRICES IN TERRITORY*/
CREATE VIEW TerritoryProducts(ProductName,Price) AS 
    SELECT P.ProductName, P.ProductStandardPrice FROM Product P;


/*CREATE VIEW FOR COUNT CUSTOMER BY STATES*/
CREATE VIEW CustomerByStates(CustomerState,CustomerCount) AS 
    SELECT C.CustomerState, COUNT(C.CustomerID)
    FROM Customer C
    GROUP BY C.CustomerState;


/*CREATE VIEW FOR PAST PURCHASE  HISTORY*/
CREATE VIEW PastPurchaseHistory(OrderData,Quantity,Price, ProductName) AS 
    SELECT O.OrderDate, L.OrderedQuantity, P.ProductStandardPrice, P.ProductName
    FROM Orders O, OrderLine L, Product P
    WHERE O.OrderID = L.OrderID;            

