USE w3schools;

# HAVING : 집계 결과에 조건을 주기 위한 키워드
SELECT Country, COUNT(CustomerID) 인원
FROM Customers
GROUP BY Country
HAVING 인원 > 5;

SELECT Country, COUNT(CustomerID)
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

# 카테고리별 상품 평균 금액
SELECT CategoryID, AVG(Price)
FROM Products
GROUP BY CategoryID
HAVING AVG(Price) > 30;

SELECT c.CategoryID, c.CategoryName, AVG(Price)
FROM Products p
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID
HAVING AVG(Price) >= 30;

# 직원별 주문건수 조회 (단, 100건 이상 처리한 직원만)
SELECT e.EmployeeID, LastName, FirstName, COUNT(o.OrderID)
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING COUNT(o.OrderID) > 100
ORDER BY COUNT(o.OrderID) ASC;


