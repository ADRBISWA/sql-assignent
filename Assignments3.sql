USE SQL_Assignment
GO
--Display the orders placed by customers not in London

SELECT * FROM Customer
WHERE City NOT IN('LONDON')



--write a query to display the orders placed by customer with phone number 1234567890

SELECT * FROM Customer
WHERE Phone ='1234567890';

--selects all the order which are placed for the product Chai.

SELECT * FROM ProductTable
WHERE ProductName ='CHAI';





--fetching all the products which are available under Category ‘Seafood’.

SELECT * FROM ProductTable
WHERE ProductName ='SeaFood';


