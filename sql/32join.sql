USE w3schools;

# 1996-07-04에 어떤 고객이 어떤 상품을 몇개 주문했는지 조회
SELECT o.OrderDate, c.CustomerName, p.ProductName, od.Quantity
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Customers c
              ON c.CustomerID = o.CustomerID
         JOIN Products p
              ON od.ProductID = p.ProductID
WHERE OrderDate = '1996-07-04';

# 1996-07-04 주문된 상품과 카테고리 정보 조회
SELECT o.OrderDate, p.ProductName, c.CategoryName
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
WHERE OrderDate = '1996-07-04';

# 5번 직원이 처리한 주문의 주문날짜와 주문된 상품 조회
SELECT e.EmployeeID, e.FirstName, e.LastName, o.OrderDate, p.ProductName
FROM Orders o
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
WHERE e.EmployeeID = 5
ORDER BY o.OrderDate DESC;
