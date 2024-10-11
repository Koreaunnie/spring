USE w3schools;

# DELETE : 모든 레코드 삭제 (! 주의)
# 꼭 DELETE 실행 전 같은 WHERE 절로 SELECT 해보기 (동명이인 등 확인)
DELETE
FROM Customers;

SELECT *
FROM Customers
WHERE CustomerName = '김연아';

DELETE
FROM Customers
WHERE CustomerName = '김연아';

SELECT *
FROM Products
ORDER BY ProductID DESC;

