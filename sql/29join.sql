USE db1;

CREATE TABLE my_table48
(
    a    INT,
    name VARCHAR(20)
);

CREATE TABLE my_table49
(
    B    INT,
    note VARCHAR(20)
);

INSERT INTO my_table48
VALUES (3, 'kim'),
       (4, 'lee'),
       (5, 'park'),
       (6, 'choi');

INSERT INTO my_table49
VALUES (4, '노벨상'),
       (5, '최우수상'),
       (6, '대상'),
       (7, '장려상'),
       (8, '참가상');

# 카테시안 곱
SELECT *
FROM my_table48
         JOIN my_table49;

# INNER JOIN
SELECT *
FROM my_table48 t48
         JOIN my_table49 t49
              ON t48.a = t49.b;

# LEFT (OUTER) JOIN
SELECT *
FROM my_table48 t48
         LEFT JOIN my_table49 t49
                   ON t48.a = t49.b;

# RIGHT (OUTER) JOIN
SELECT *
FROM my_table48 t48
         RIGHT JOIN my_table49 t49
                    ON t48.a = t49.b;

# 왼쪽 테이블에만 있는 레코드들
SELECT *
FROM my_table48 t48
         LEFT JOIN my_table49 t49 ON t48.a = t49.b
WHERE b IS NULL;

USE w3schools;

# 주문한 적 있는 고객들
SELECT o.CustomerID, c.CustomerID
FROM Orders o
         RIGHT JOIN Customers c
                    ON o.CustomerID = c.CustomerID;

# 주문을 처리한 적 없는 직원명 조회
SELECT e.FirstName, e.LastName
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
WHERE o.EmployeeID IS NULL;

# 주문된 적 없는 상품명
SELECT p.ProductName
FROM Products p
         JOIN OrderDetails o
              ON p.ProductID = o.ProductID IS NULL
WHERE o.OrderDetailID IS NULL;