CREATE DATABASE SQL_Assignment
use SQL_Assignment
/*Customer Table*/

CREATE TABLE Customer(
CustomerId int PRIMARY KEY,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(40),);

--Index for customer name
CREATE INDEX Index OrderCustomerId
ON Customer(FirstName,LastName);

--insert data into customer table

INSERT INTO dbo.Customer(CustomerId,FirstName,LastName,City,Country,Phone)
VALUES (1,'ADRIJA','BISWAS','KOLKATA','INDIA','123455676'),
(2,'RAM','ROY','MUMBAI','INDIA','39293390'),
(3,'SHYAM','DEB','CHEENAI','INDIA','2374321'),
(4,'MADHU','SARKAR','BANGALORE','INDIA','5661230'),
(5,'NITU','SEN','PUNE','INDIA','1234567890');


INSERT INTO dbo.Customer(CustomerId,FirstName,LastName,City,Country,Phone)
VALUES (6,'RITA','SEN','PUNE','USA','0321456789'),
(7,'SITA','SARKAR','MUMBAI','INDIA','8639293390');

INSERT INTO dbo.Customer(CustomerId,FirstName,LastName,City,Country,Phone)
VALUES ('10','prir','SEN','PUNE','Germeny','0321456789'),
('11','SIya','SARKAR','MUMBAI','INDIA','8639293390');


SELECT * FROM Customer;


/*OrderTable*/


CREATE TABLE OrderTable(

OrderId int PRIMARY KEY,
OrderDate datetime,
OrderNumber nvarchar(40),
CustomerId int FOREIGN KEY REFERENCES Customer(CustomerId),
TotalAmount decimal(12,2));

--insert data into Order

INSERT INTO OrderTable(OrderId,OrderDate,OrderNumber,CustomerId,TotalAmount)
values (4,05-04-2022,101,1,100.00),
(5,01-04-2022,101,1,200.00),
(6,02-04-2022,101,1,100.00);

--create index 

CREATE INDEX IndexOrderCustomerId
ON OrderTable(CustomerId);
CREATE INDEX IndexOrderOrderDate
ON OrderTable(OrderDate);

select * from OrderTable;

/*product table*/
CREATE TABLE ProductTable(
ProductId int PRIMARY KEY,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit);

--insert data into product

INSERT INTO ProductTable(ProductId,ProductName,UnitPrice,Package,IsDiscontinued)
VALUES (1,'SEAFOOD',100.00,'EXOTIC LIQIDS',0),
(2,'TOYS',180.00,'ABC PACKAGE',0),
(3,'SEAFOOD',250.00,'XYZ',0);

INSERT INTO ProductTable(ProductId,ProductName,UnitPrice,Package,IsDiscontinued)
VALUES (4,'DRESS',689.00,'PACKAGE','5');
INSERT INTO ProductTable(ProductId,ProductName,UnitPrice,Package,IsDiscontinued)
VALUES (5,'Chai',70.00,'Liquid','2');

select * from ProductTable;



--create index 

CREATE INDEX IndexProductSupplierId
ON ProductTable(ProductId);
CREATE INDEX IndexProductName
ON ProductTable(ProductName);



/*Orderitemtable*/
CREATE TABLE OrderItemTable(
OrderItemId int PRIMARY KEY,
OrderId int FOREIGN KEY REFERENCES OrderTable(OrderId),
ProductId int FOREIGN KEY REFERENCES ProductTable(ProductId),
UnitPrice decimal(12,2),
Quantity int);
--insert data into OrderItem
select * from ProductTable;
select * from OrderTable;
INSERT INTO OrderItemTable(OrderItemId,OrderId,ProductId,UnitPrice,Quantity)
VALUES('70','1','1','100','25');
INSERT INTO OrderItemTable(OrderItemId,OrderId,ProductId,UnitPrice,Quantity)
VALUES('71','2','2','180','35'),('72','3','3','250','40');
--create index 

CREATE INDEX IndexOrderItemOrderId
ON OrderItemTable(OrderItemId);
CREATE INDEX IndexOrderItemProductId
ON OrderItemTable(ProductID);




--Display Customer details

SELECT * FROM Customer;

--DISPLAY COUNTER NAME STARTS WITH A OR I
SELECT Country FROM Customer
WHERE LastName like 'A%' or LastName like '%I%'

-- DISPLAY WHOSE NAME THIRD LETTER IS 'I'
SELECT Customer.FirstName,Customer.LastName
FROM dbo.Customer 
WHERE LastName LIKE '__I%';



--Alter customer firstname and OrderTable by adding not null

ALTER TABLE dbo.Customer
Alter Column FirstName nvarchar(40) Not NULL;

--Alter customer OrderTable by adding not null DateTime

ALTER TABLE OrderTable
Alter Column OrderDate DateTime Not NULL;


CREATE TABLE Manager(
ManagerId int PRIMARY KEY,
Name varchar(40));

INSERT INTO Manager(ManagerID,Name)
VALUES('101','ttrteytfu'),('102','ftfytu'),('103','hutuyrtyfy');