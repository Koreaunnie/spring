USE w3schools;
DESC Customers;

#INSERT INTO 테이블명 (컬럼) VALUES (값) : 레코드 삽입

# 값이 1개 일 땐 VALUE 가능하나, 값 한 개 이상일 땐 반드시 VALUES
# VALUES 사용 추천
INSERT INTO Customers
    (CustomerID, CustomerName)
    VALUE (92, '홍길동');

INSERT INTO Customers
    (CustomerID, CustomerName, ContactName)
    VALUE (93, '김연아', '피겨스케이트');

INSERT INTO Customers
    (CustomerID, CustomerName)
VALUES (94, '도래'),
       (95, '래미'),
       (96, '미파');

INSERT INTO Customers
    (CustomerID, CustomerName)
VALUES ('97', '아린');

INSERT INTO Customers
    (CustomerName)
VALUES ('지성');

INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (99, '케인', '해리', '런던', '베를린', '12345', '독일');
