-- 1. How many orders were shipped by Speedy Express in total?
SELECT *
FROM Orders
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE Shippers.ShipperID = 1;

-- 1. Answer: 54 orders were shipped by Speedy Express.

-- 2. What is the last name of the employee with the most orders?

SELECT Employees.EmployeeID, Employees.LastName,
COUNT(*) AS OrderCount
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.EmployeeID;

-- Answer: The employee's last name is Peacock.

-- 3. What product was ordered the most by customers in Germany?

SELECT ProductName, Country,
COUNT(*) AS OrderCount
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Country = "Germany"
GROUP BY ProductName
ORDER BY OrderCount DESC;

-- Answer: The product ordered most in Germany is Gorgonzola Telino.
