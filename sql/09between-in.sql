USE w3schools;

# BETWEEN 값1 AND 값2 : 값1과 값2 사이 (값1, 값2 포함)
# 열 >= 값1 AND 열 <= 값2
SELECT *
FROM Products
WHERE Price >= 10
  AND Price <= 20
ORDER BY Price;

SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;

# 열 IN (값1, 값2, 값3) : 값1 이거나 값2 이거나 값3 이거나
# 열 = 값1 OR 열 = 값2 OR 열 = 값3
SELECT *
FROM Customers
WHERE Country = 'USA'
   OR Country = 'Mexico'
   OR Country = 'Brazil'
ORDER BY Country;

SELECT *
FROM Customers
WHERE Country IN ('USA', 'Mexico', 'Brazil')
ORDER BY Country;

# 1997년에 주문된 주문들
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

SELECT *
FROM Orders
WHERE OrderDate >= '1997-01-01'
  AND OrderDate <= '1997-12-31';

# 미국이나 영국에 있는 공급자들
SELECT *
FROM Suppliers
WHERE Country IN ('USA', 'UK')
ORDER BY Country;

SELECT *
FROM Suppliers
WHERE Country = 'USA'
   OR Country = 'UK'
ORDER BY Country;
