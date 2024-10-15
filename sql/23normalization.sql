# 정규화 : normalization
# 중복을 줄이고 데이터 무결성 유지를 위한 프로세스

# First Normal Form (1NF)
#   모든 레코드는 고유해야함
#   원자성 보장 (모든 속성은 단일값만 가져야 함)

# Second NORMAL Form (2NF)
#   1NF 만족하고
#   부분적 함수 종속이 없어야함

# Third Normal From (3NF)
#   2NF 만족하고
#   이행적 함수 종속이 없어야함

USE db1;

# 모든 레코드는 고유해야함
# (= PRIMARY KEY 컬럼이 있어야함)
# 저거도 하나의 PRIMARY KEY (= UNIQUE NOT NULL) 컬럼이 있어야함
CREATE TABLE my_table30
(
    title  VARCHAR(20),
    author VARCHAR(20),
    price  INT
);

INSERT INTO my_table30
VALUES ('1', '소년이 온다', '한강', 10000),
       ('2,', '채식주의자', '한강', 20000),
       ('git', 'linus', 30000);

SELECT *
FROM my_table30;

INSERT INTO my_table30
VALUES ('소년이 온다', '한강', '10000');

ALTER TABLE my_table30
    ADD COLUMN isbn VARCHAR(10) UNIQUE;
ALTER TABLE my_table30
    MODIFY COLUMN isbn VARCHAR(10) UNICODE NOT NULL;
DROP TABLE my_table30;

CREATE TABLE my_table30
(
    isbn   VARCHAR(10) UNIQUE NOT NULL,
    title  VARCHAR(20),
    author VARCHAR(20),
    price  INT
);

INSERT INTO my_table30
VALUES ('1', '소년이 온다', '한강', 10000),
       ('2,', '채식주의자', '한강', 20000),
       ('3', 'git', 'linus', 30000),
       ('4', '소년이 온다', '한강', 10000);

SELECT *
FROM my_table30;

CREATE TABLE my_table31
(
    isbn   VARCHAR(10) PRIMARY KEY, # UNIQUE NOT NULL 과 동일
    title  VARCHAR(20),
    author VARCHAR(20),
    price  INT
);

DESC my_table30;
DESC my_table31;

CREATE TABLE my_table32
(
    student_NUMBER INT PRIMARY KEY,
    name           VARCHAR(20),
    gender         VARCHAR(1),
    age            INT
);

# PRIMARY KEY 조건
# NULL 이 될 수 없음
# 레코드 삽입 시 생성되어야함
# 가능한 compact 해야함
# 변경되지 않아야함
# 가장 좋은 PRIMARY KEY (PK) 는 인위적으로 생성된 컬럼

CREATE TABLE my_table33
(
    id      VARCHAR(10) PRIMARY KEY,
    ssn     VARCHAR(13),
    name    VARCHAR(20),
    address VARCHAR(20),
    gender  VARCHAR(20)
);

SELECT *
FROM my_table33;

INSERT INTO my_table33
VALUES (1, '1234', 'kim', 'seoul', 'm'),
       (2, '3456', 'lee', 'jeju', 'f'),
       (3, '6789', 'choi', 'london', 'm');

CREATE TABLE my_table34
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO my_table34 (name)
VALUES ('kim'),
       ('lee'),
       ('choi');

SELECT *
FROM my_table34;

CREATE TABLE my_table35
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
);

# PRIMARY KEY 두 개의 방법
# 방법 1

CREATE TABLE my_table36
(
    id     INT PRIMARY KEY AUTO_INCREMENT,
    t35_id VARCHAR(10),
    skill  VARCHAR(100)
);

# 방법 2
CREATE TABLE my_table36
(
    id    INT,
    skill VARCHAR(100),
    PRIMARY KEY (id, skill)
);

# kim : java, css, js
# lee : java, html
# parK : js, react
# choi : java

SELECT *
FROM my_table35;

ALTER TABLE my_table35
    ADD COLUMN id INT;

INSERT INTO my_table35(name)
VALUES ('kim'),
       ('lee'),
       ('park'),
       ('choi');


CREATE TABLE my_table37
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);

CREATE TABLE my_table38
(
    t37_id INT REFERENCES my_table37 (id), -- Foreign Key
    tel    VARCHAR(30)
);

INSERT INTO my_table37(name)
VALUES ('kim'),
       ('lee');

SELECT *
FROM my_table37;

INSERT INTO my_table38(t37_id, tel)
VALUES (1, '222-2222'),
       (1, '333-3333'),
       (2, '444-4444');

SELECT *
FROM my_table38;

# 부분적 함수 종속이 없어야함
#   키가 아닌 컬럼이 키컬럼 일부에 종속됨

# 인위적 PK 컬럼 생성시 2NF 만족

# 이행적 종속이 없어야함 -> 3NF 만족
# 이행적 종속 : 키가 아닌 컬럼끼리 종속
# -> 새 테이블 생성
