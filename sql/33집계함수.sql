# 집계함수 (그룹함수)
# COUNT, AVG, SUM, MAX, MIN
# 집계함수 사용시 NULL 은 포함되지 않음

USE w3schools;

# COUNT : 개수
SELECT COUNT(*)
FROM Customers;

SELECT COUNT(CustomerID)
FROM Customers;

SELECT COUNT(CustomerName)
FROM Customers;

SELECT COUNT(DISTINCT Country)
FROM Customers;

SELECT SUM(Price)
FROM Products;

SELECT MAX(Price)
FROM Products;

SELECT MIN(Price)
FROM Products;

SELECT AVG(Price)
FROM Products;

# GROUP BY : 소계
SELECT COUNT(CustomerID)
FROM Customers;

SELECT Country, COUNT(CustomerID) 인원
FROM Customers
GROUP BY Country
ORDER BY 인원 DESC
LIMIT 5;

# 카테고리별 평균 상품 가격
SELECT CategoryID, AVG(Price)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID, MAX(Price)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID, MIN(Price)
FROM Products
GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, AVG(Price)
FROM Products p
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID;

# 직원별 주문처리건수 (Employees, Orders)
# 직원의 이름과 처리건수 조회, 직원 first name 순 정렬
SELECT LastName, FirstName, COUNT(OrderID)
FROM Orders o
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY e.FirstName;

# 고객별 주문 건수 (한 번도 주문하지 않은 고객도 포함)
SELECT c.CustomerID, c.CustomerName, COUNT(o.OrderID)
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY 3 DESC;

# 1997년 1월에 주문 처리 건수를 직원별로 조회
SELECT o.OrderDate, e.EmployeeID, e.FirstName, e.LastName, COUNT(o.OrderID)
FROM Orders o
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
WHERE OrderDate LIKE '1997-01-__'
GROUP BY e.EmployeeID;

SELECT e.EmployeeID, e.FirstName, COUNT(OrderID)
FROM (SELECT *
      FROM Orders
      WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31') AS JanuaryOrders
         RIGHT JOIN Employees e
                    ON JanuaryOrders.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID;
