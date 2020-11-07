-- Q1
CREATE TABLE frumbleData
(
    name varchar(256),
    discount varchar(20),
    month varchar(10),
    price int
)

-- Q2
-- name -> price
SELECT *
FROM Sales1 A, Sales2 B
WHERE A.name = B.name and A.price != B.price

-- month -> discount
SELECT *
FROM Sales1 A, Sales2 B
WHERE A.month = B.month and A.discount != B.discount

-- name -> price and month -> discount implies
-- name, month -> price, discount

-- name, discount -> price, month
SELECT *
FROM Sales1 A, Sales2 B
WHERE A.name = B.name and A.discount = B.discount
    and A.price != B.price and A.month != B.month

-- month, price -> discount, name
SELECT *
FROM Sales1 A, Sales2 B
WHERE A.month = B.month and A.price = B.price
    and A.discount != B.discount and A.name != B.name

-- discount -> month (functional dependency not exist)
-- From the SQL query, the result shows that one discount can correspond to many montehes.
SELECT month, discount
FROM Sales
WHERE discount = "15%";

-- Total FDs:
-- name -> price
-- month -> discount
-- name, month -> price, discount
-- name, discount -> price, month
-- month, price -> discount, name

-- Q3

-- First, we need to decompose onS(name,price,discount,month)
-- {name}+ = {name,price} 
-- {name}+ != {name}
-- {name}+ != {name,price,discount,month}

-- So S(name,price,discount,month) can be decomposed as S1(name,price) and S2(name,discount,month)

-- And for S2(name,discount,month)
-- {month}+ = {month, discount}
-- {month}+ != {month}
-- {month}+ != {name,discount,month}

-- So S2(name,discount,month) can be decomposed as S21(month,discount) and S22 (month, name)

-- So overall BCNF is S1(name,price), S21(month,discount) and S22 (month, name)

CREATE TABLE nameMap2Price
(
    name varchar(256) PRIMARY KEY,
    price int
)

CREATE TABLE monthMap2Discount
(
    discount varchar(20),
    month varchar(10) PRIMARY KEY
)

CREATE TABLE monthMap2Name
(
    name varchar(256),
    month varchar(10),
    FOREIGN KEY(name) REFERENCES nameMap2Price(name),
    FOREIGN KEY(month) REFERENCES monthMap2Discount(month)
)

-- Part 4
INSERT INTO nameMap2Price
SELECT DISTINCT name, Price
FROM Sales
-- 36 rows
SELECT COUNT(*)
FROM nameMap2Price

INSERT INTO monthMap2Discount
SELECT DISTINCT discount, month
FROM Sales
-- 12 rows
SELECT COUNT(*)
FROM monthMap2Discount

INSERT INTO monthMap2Name
SELECT DISTINCT name, month
FROM Sales
-- 426 rows
SELECT COUNT(*)
FROM monthMap2Name

-- 426 rows
SELECT A.name, A.price, B.month, B.discount
FROM nameMap2Price A, monthMap2Discount B, monthMap2Name C
WHERE A.name = C.name and B.month = C.month