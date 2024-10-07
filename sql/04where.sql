USE w3schools;

# SELECT 컬럼명들 FROM 테이블명
SELECT *
FROM Customers;

# 조건에 맞는 행들 조회
# WHERE : 조회될 행의 조건

# SELECT 컬럼명 FROM 테이블명 WHERE 조건;

SELECT CustomerName, Country
FROM Customers
WHERE Country = 'Mexico';

SELECT *
FROM Employees
WHERE BirthDate = '1968-12-08';

# 대소문자 구분 없음
# 숫자 형식이면 따옴표 생략 가능
SELECT *
FROM Products
WHERE Price > '10.00';

SELECT *
FROM Products
WHERE Price = 10.00;

# Spain 에 있는 공급자들 조회 (Suppliers)
SELECT *
FROM Suppliers
WHERE Country = 'Spain';

# 상파울루(São Paulo)에 있는 고객들 (Customers)
SELECT *
FROM Customers
WHERE City = 'São Paulo';

# 1963년 8월 30일 생인 직원 (Employees)
SELECT *
FROM Employees
WHERE BirthDate = '1963-8-30';

# 2번 카테고리(Categories) 정보 조회
SELECT *
FROM Categories;