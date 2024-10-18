USE db1;

CREATE TABLE my_table59
(
    student_id   INT,
    model_number INT,
    product_name VARCHAR(30),
    birth_date   DATE,
    inserted     DATETIME,
    score        DEC(10, 2)
);

INSERT INTO my_table59
VALUES (10, 21, 'computer', '2002-02-02', NOW(), 3.14),
       (20, 33, 'pizza', '1995-08-12', NOW(), 12.345),
       (30, 45, 'tesla', '2015-06-27', NOW(), 5.7);

SELECT *
FROM my_table59;