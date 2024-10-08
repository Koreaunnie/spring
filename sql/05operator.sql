USE w3schools;

# SELECT 컬럼명 FROM 테이블명 WHERE 조건

# 컬럼명 = '값'
SELECT FirstName, LastName, BirthDate
FROM Employees
WHERE BirthDate = '1963-08-30';

# >, <, >=, <=, !=
SELECT *
FROM Employees
WHERE BirthDate > '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate < '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate >= '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate <= '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate != '1963-08-30';

SELECT *
FROM Employees
WHERE BirthDate <> '1963-08-30'; # != 과 동일

SELECT *
FROM Products
WHERE Price > 10.00;

SELECT *
FROM Customers
WHERE CustomerName >= 'D';

SELECT *
FROM Customers
WHERE CustomerName >= 'd';

SELECT *
FROM Customers
WHERE CustomerName < 'd'; # a, b, c 만 출력

SELECT *
FROM Orders
WHERE OrderDate >= '1998-01-01';

SELECT *
FROM OrderDetails
WHERE Quantity < 10;

SELECT *
FROM Products
WHERE CategoryID <= 3;