USE SQL_Assignment
GO
--Display the details from Customer table who is from country Germany
select * from Customer;

SELECT * FROM Customer
WHERE Country='USA';

select * from OrderTable

update OrderTable
set OrderDate='20220402'
where OrderId=3

CREATE TABLE Employee(
EmployeeId int IDENTITY(1,1) PRIMARY KEY,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(40),);



INSERT INTO dbo.Employee(FirstName,LastName,City,Country,Phone)
VALUES ('ADRIJA','BISWAS','KOLKATA','INDIA','123455676'),
('RAM','ROY','MUMBAI','INDIA','39293390'),
('SHYAM','DEB','CHEENAI','INDIA','2374321'),
('MADHU','SARKAR','BANGALORE','INDIA','5661230'),
('NITU','SEN','PUNE','INDIA','1234567890');

select * from Employee;

--Display the  customer details  who has Fax number

SELECT * FROM Customer 
WHERE FaxNumber like '[+]%'or FaxNumber like '%-%'

--display the customer details whose name holds second letter as U

SELECT * FROM Customer
WHERE LastName LIKE '%U'

--select order Details where unit price is greater than 100 and less than 200
select * from OrderItemTable;

SELECT * FROM OrderItemTable
WHERE UnitPrice > 100 AND UnitPrice < 200

--Display order details which contains shipping date and arrange the order by date

SELECT OrderDate AS SHIPPING_DATE 
FROM OrderTable
ORDER BY OrderDate ASC



--Print the products supplied by 'Exotic Liquids'

SELECT * FROM ProductTable where
 Package ='EXOTIC LIQUIDS';

--print the average quantity ordered for every product

SELECT AVG(QUANTITY) AS Avg_Quantity
FROM OrderItemTable
GROUP BY ProductId


--Print all Employees with Manager Name
select * from Employee;
select * from Manager;
select Employee.FirstName, Manager.Name from Employee inner join Manager on Employee.FirstName=manager.name;

--Print the bill for a given order id .bill should contain Productname, Categoryname,price after discount

SELECT OI.OrderId,P.ProductName,P.Category,P.Discount
FROM ProductTable P INNER JOIN OrderItemTable OI
ON P.ProductId=OI.ProductId

