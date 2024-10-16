USE db1;

# full outer join : left join 과 right join 의 합집합

CREATE TABLE my_table56
(
    name VARCHAR(20),
    id   INT
);

CREATE TABLE my_table57
(
    email   VARCHAR(20),
    user_id VARCHAR(20)
);


INSERT INTO my_table56(name, id)
VALUES ('kim', 1),
       ('lee', 2),
       ('park', 3),
       ('choi', 4),
       ('han', 5);

INSERT INTO my_table57(email, user_id)
VALUES ('yahoo', 3),
       ('gmail', 1),
       ('naver', 1),
       ('daum', 3);

# left join
SELECT *
FROM my_table56 t56
         LEFT JOIN my_table57 t57
                   ON t56.id = t57.user_id;

# right join
SELECT *
FROM my_table56 t56
         RIGHT JOIN my_table57 t57
                    ON t56.id = t57.user_id;

# union : full outer join
SELECT *
FROM my_table56 t56
         LEFT JOIN my_table57 t57
                   ON t56.id = t57.user_id
UNION

SELECT *
FROM my_table56 t56
         LEFT JOIN my_table57 t57
                   ON t56.id = t57.user_id;
