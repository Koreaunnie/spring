USE db1;

CREATE TABLE my_table44
(
    col1 INT
);

CREATE TABLE my_table45
(
    c1 INT
);

INSERT INTO my_table44
VALUES (1),
       (2),
       (3),
       (3);

INSERT INTO my_table45
VALUES (2),
       (2),
       (3),
       (1),
       (4);

SELECT *
FROM my_table44;

SELECT *
FROM my_table45;

# JOIN (Cartesian Product)
# 결과 열의 수는 각 테이블 열의 합
# 결과 행의 수는 각 테이블 행의 곱
SELECT *
FROM my_table44,
     my_table45;

SELECT *
FROM my_table44
         JOIN
     my_table45;

CREATE TABLE my_table46
(
    col1 INT,
    col2 VARCHAR(20)
);

CREATE TABLE my_table47
(
    c1 INT,
    c2 VARCHAR(20)
);

INSERT INTO my_table46(col1, col2)
VALUES (1, 'kim'),
       (2, 'lee'),
       (3, 'park');

INSERT INTO my_table47(c1, c2)
VALUES (1, 'java'),
       (1, 'css'),
       (2, 'html');

SELECT *
FROM my_table46;

SELECT *
FROM my_table47;

# Cartesian Product
SELECT *
FROM my_table46
         JOIN
     my_table47;

# INNER JOIN
SELECT *
FROM my_table46
         JOIN my_table47
WHERE my_table46.col1 = my_table47.c1;

SELECT *
FROM my_table46
         JOIN my_table47
              ON my_table46.col1 = my_table47.c1;

USE w3schools;

SELECT *
FROM Products;

SELECT *
FROM Categories;

SELECT *
FROM Products
         JOIN Categories; -- 616

SELECT *
FROM Products
         INNER JOIN Categories # INNER 는 생략가능
                    ON Products.CategoryID = Categories.CategoryID; -- 77


SELECT *
FROM Products
         INNER JOIN Suppliers
                    ON Products.SupplierID = Suppliers.SupplierID;

SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
         JOIN Suppliers
              ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.SupplierID = 4;

