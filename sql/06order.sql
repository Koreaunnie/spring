USE w3schools;

# ORDER BY : 조회 결과의 순서를 결정
# ORDER BY 컬럼명

SELECT *
FROM Products
ORDER BY Price;

SELECT *
FROM Employees
ORDER BY BirthDate;

SELECT *
FROM Customers
ORDER BY CustomerName;

SELECT *
FROM Customers
WHERE Country = 'USA'
ORDER BY CustomerName;

SELECT *
FROM Products
WHERE CategoryID = 1
ORDER BY Price;

# DESC 내림차순
SELECT *
FROM Products
ORDER BY Price DESC;

SELECT *
FROM Employees
ORDER BY BirthDate DESC;

SELECT *
FROM Customers
ORDER BY CustomerName DESC;

# ASC 오름차순 (생략 가능)
SELECT *
FROM OrderDetails
WHERE OrderID = '10248'
ORDER BY Quantity ASC;

SELECT *
FROM Products
WHERE SupplierID = '1'
ORDER BY ProductName;

# ORDER BY 컬럼, 컬럼, 컬럼 : 여러 컬럼 기준으로 정렬

SELECT CustomerName, City, Country
FROM Customers
ORDER BY Country, City;

SELECT CustomerName, City, Country
FROM Customers
ORDER BY Country, City, CustomerName;

SELECT CustomerName, City, Country
FROM Customers
ORDER BY Country ASC, City DESC, CustomerName DESC;

SELECT CustomerName, City, Country
FROM Customers
ORDER BY Country, City DESC, CustomerName DESC;

SELECT *
FROM Products
WHERE CategoryID = 1
ORDER BY SupplierID, Price DESC;

# 컬럼명 대신 컬럼 인덱스 사용 가능
# (테이블의 컬럼순서가 아닌 SELECT 절의 컬럼 순서)

SELECT *
FROM Products
WHERE CategoryID = 1
ORDER BY 3, 6 DESC;

SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price
FROM Products
WHERE CategoryID = 1
ORDER BY 3, 6 DESC;

SELECT SupplierID, Price, ProductID, ProductName, CategoryID, Unit
FROM Products
WHERE CategoryID = 1
ORDER BY 1, 2 DESC;