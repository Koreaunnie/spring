USE w3schools;

# <, <=, >, >=, <>, !=, LIKE

# AND OR NOT
SELECT *
FROM Products
WHERE Price > 10.00
  AND Price < 20.00
ORDER BY Price;

SELECT *
FROM Customers
WHERE Country = 'Mexico'
   OR Country = 'USA'
ORDER BY Country;

SELECT *
FROM Customers
WHERE Country != 'Mexico';

SELECT *
FROM Customers
WHERE NOT Country = 'Mexico';

# AND OR NOT 여러번 조합할 시 () 사용해서 읽기 편하게 작성

# 멕시코나 미국이 아닌 국가의 고객들
SELECT *
FROM Customers
WHERE NOT (Country = 'Mexico' AND Country = 'USA')
ORDER BY Country;

# 멕시코나 미국이 아닌 국가의 고객들 (위와 동일)
SELECT *
FROM Customers
WHERE Country != 'Mexico'
  AND Country != 'USA'
ORDER BY Country;

# 미국이나 브라질에 사는 이름이 G로 시작하는 고객 검색
SELECT *
FROM Customers
WHERE CustomerName LIKE 'G%'
  AND (Country = 'USA'
    OR Country = 'Brazil');

# 1950년대 태어난 직원들 조회
SELECT *
FROM Employees
WHERE BirthDate >= '1950-01-01'
  AND BirthDate < '1950-01-01'
ORDER BY BirthDate;

# 1950년대 태어난 직원들 조회 (위와 동일)
SELECT *
FROM Employees
WHERE BirthDate >= '195_-__-__'
ORDER BY BirthDate;

#1997년 7월에 주문된 주문들
SELECT *
FROM Orders
WHERE OrderDate LIKE '1997-07-__';

# 가격이 10.00 보다 작거나 100.00 보다 큰 상품
SELECT *
FROM Products
WHERE Price < 10.00
   OR Price > 100.00
ORDER BY Price;

# 가격이 10.00 보다 작거나 100.00 보다 큰 상품 (위와 동일)
SELECT *
FROM Products
WHERE NOT (Price >= 10.00
    AND Price <= 100.00)
ORDER BY Price;

SELECT *
FROM Suppliers
WHERE Country = 'USA'
   OR Country = 'UK'
ORDER BY Country;