#날짜 : 2021/05/20
#이름 : 김승용
#내용 : 5.SQL 연습문제

#문제1. 다음과 같은 속성을 가진 BOOK 테이블을 생성하시오.
CREATE TABLE `BOOK` (
	`bookid`		INT AUTO_INCREMENT PRIMARY KEY,
	`bookname`	VARCHAR(30),
	`publisher`	VARCHAR(20),
	`price`		INT
);

#문제2. 다음과 같은 속성을 가진 CUSTOMER 테이블을 생성하시오.
CREATE TABLE `CUSTOMER` (
	`custid`		INT AUTO_INCREMENT PRIMARY KEY,
	`name`		VARCHAR(10),
	`address`	VARCHAR(20),
	`phone`		CHAR(13)
);
#문제3. 다음과 같은 속성을 가진 ORDERS 테이블을 생성하시오.
CREATE TABLE `ORDERS` (
	`orderid`	INT AUTO_INCREMENT PRIMARY KEY,
	`custid`		INT,
	`bookid`		INT,
	`saleprice`	INT,
	`orderdate`	DATE
);
#문제4. 생성한 각 테이블에 그림과 같이 데이터를 삽입하시오.
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('축구의 역사', '굿스포츠', 7000);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('축구아는여자', '나무수', 13000);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('축구의 이해', '대한미디어', 22000);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('골프 바이블', '대한미디어', 35000);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('피겨 교본', '굿스포츠', 8000);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('야구의 추억', '이상미디어', 20000);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('야구를 부탁해', '이상미디어', 13000);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('올림픽 이야기', '삼성당', 7500);
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('Olympic Champions', 'Pearson', 13000);

INSERT INTO
`CUSTOMER` (`name`,`address`,`phone`)
VALUES ('박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO
`CUSTOMER` (`name`,`address`,`phone`)
VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO
`CUSTOMER` (`name`,`address`,`phone`)
VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO
`CUSTOMER` (`name`,`address`,`phone`)
VALUES ('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO
`CUSTOMER` (`name`,`address`)
VALUES ('박세리', '대한민국 대전');

INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (1, 1, 6000, '2014-07-01');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (1, 3, 21000, '2014-07-03');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (2, 5, 8000, '2014-07-03');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (3, 6, 6000, '2014-07-04');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (4, 7, 20000, '2014-07-05');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (1, 2, 12000, '2014-07-07');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (4, 8, 13000, '2014-07-07');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (3, 10, 12000, '2014-07-08');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (2, 10, 7000, '2014-07-09');
INSERT INTO
`ORDERS` (`custid`,`bookid`,`saleprice`,`orderdate`)
VALUES (3, 8, 13000, '2014-07-10');

#문제5. 모든 도서의 도서번호, 도서이름,출판사, 가격을 검색하시오.
SELECT * FROM `BOOK`;

#문제6. 도서 테이블에 있는 모든 출판사를 검색하시오.
SELECT DISTINCT `publisher` FROM `BOOK`;

#문제7. 가격이 20,000원 미만인 도서를 검색하시오.
SELECT * FROM `BOOK` WHERE `price` < 20000;

#문제8. 가격이 10,000원 이상 20,000원 이하인 도서를 검색하시오.
SELECT * FROM `BOOK` WHERE `price` >= 10000
AND `price` <= 20000;
SELECT * FROM `BOOK` WHERE `price` BETWEEN 10000 AND 20000;

#문제9. 출판사가 '굿스포츠' 혹은 '대한미디어'인 도서를 검색하시오.
SELECT * FROM `BOOK` WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어';
SELECT * FROM `BOOK` WHERE `publisher` IN ('굿스포츠', '대한미디어');

#문제10. '축구의 역사'를 출간한 출판사를 검색하시오.
SELECT `publisher` FROM `BOOK` WHERE `bookname`='축구의 역사';

#문제11. 도서이름에 '축구'가 포함된 출판사를 검색하시오.
SELECT `publisher` FROM `BOOK` WHERE `bookname` LIKE '축구%';

#문제12. 도서이름의 왼쪽 두 번째 위치에 '구'라는 문자열을 갖는 도서를 검색하시오.
SELECT * FROM `BOOK` WHERE `bookname` LIKE '_구%';

#문제13. 축구에 관한 도서 중 가격이 20,000원 이상인 도서를 검색하시오.
SELECT * FROM `BOOK` WHERE `price` >= 20000
AND `bookname` LIKE '%축구%';

#문제14. 도서를 이름순으로 검색하시오.
SELECT * FROM `BOOK` ORDER BY `bookname` ASC;

#문제15. 도서를 가격순으로 검색하고, 가격이 같으면 이름순으로 정렬하시오.
SELECT * FROM `BOOK` ORDER BY `price` ASC, `bookname` ASC;

#문제16. 도서를 가격의 내림차순으로 검색하시오.(만약 가격이 같다면 출판사의 오름차순으로 검색)
SELECT * FROM `BOOK` ORDER BY `price` DESC, `bookname` ASC;

#문제17. 고객이 주문한 도서의 총 판매액을 구하시오.
SELECT SUM(`saleprice`) AS `총판매액` FROM `ORDERS`;

#문제18. 2번 김연아 고객이 주문한 도서의 총 판매액을 구하시오.
SELECT SUM(`saleprice`) AS `총매출` FROM `ORDERS` WHERE `custid`=2;

#문제19. 고객이 주문한 도서의 총판매액, 평균값, 최저가, 최고가를 구하시오.
SELECT
	SUM(`saleprice`) AS `총판매액`,
	AVG(`saleprice`) AS `평균값`,
	MIN(`saleprice`) AS `최저가`,
	MAX(`saleprice`) AS `최고가`
FROM `ORDERS`;

#문제20. 도서 판매 건수를 구하시오.
SELECT COUNT(*) AS `판매건수` FROM `ORDERS`;

#문제21. 가격이 8,000원 이상인 도서를 구매한 고객에 대하여 고객별 주문도서의 총 수량을 구하시오.
#단, 두 권이상 구매한 고객만 구한다.
SELECT COUNT(*) AS `수량` FROM `ORDERS`
WHERE `saleprice` >= 8000
GROUP BY `custid`
HAVING `수량` >= 2;

#문제22. 고객과 고객의 주문에 관한 데이터를 모두 보이시오.
SELECT * FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
USING (`custid`);

SELECT * FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid = b.custid;

SELECT * FROM `CUSTOMER` AS a, `ORDERS` AS b
WHERE a.custid = b.custid;

#문제23. 고객과 고객의 주문에 관한 데이터를 고객번호 순으로 정렬하여 보이시오.
SELECT * FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid = b.custid
ORDER BY a.custid;

#문제24. 고객의 이름과 고객이 주문한 도서의 판매가격을 검색하시오.
SELECT `name`, `saleprice` FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid = b.custid;

#문제25. 고객별로 주문한 모든 도서의 총 판매액을 구하고, 고객별로 정렬하시오.
SELECT `name`, SUM(`saleprice`) FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid = b.custid
GROUP BY `name`
ORDER BY `name` ASC;

#문제26. 고객의 이름과 고객이 주문한 도서의 이름을 구하시오.
SELECT `name`, `bookname` FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid = b.custid
JOIN `BOOK` AS c
ON b.bookid = c.bookid;

#문제27. 가격이 20,000원인 도서를 주문한 고객의 이름과 도서의 이름을 구하시오.
SELECT `name`, `bookname` FROM `CUSTOMER` AS a
JOIN `ORDERS` AS b
ON a.custid = b.custid
JOIN `BOOK` AS c
ON b.bookid = c.bookid
WHERE c.price = 20000;

#문제28. 가장 비싼 도서의 이름을 보이시오.
SELECT `bookname` FROM `BOOK`
WHERE `price` = (SELECT MAX(`price`) FROM `BOOK`);

#문제29. BOOK테이블에 새로운 도서 '스포츠 의학'을 삽입하시오.
#스포츠 의학은 한솔의학서적에서 출간 했으며, 가격은 90,000원이다.
INSERT INTO
`BOOK` (`bookname`,`publisher`,`price`)
VALUES ('스포츠 의학', '한솔의학서적', 90000);

#문제30. BOOK테이블에 새로운 도서 '스포츠 의학'을 삽입하시오.
#스포츠 의학은 한솔의학서적에서 출간 했으며, 가격은 미정이다.
INSERT INTO
`BOOK` (`bookname`,`publisher`)
VALUES ('스포츠 의학', '한솔의학서적');

#문제31. CUSTOMER테이블에서 고객번호가 5인 고객의 주소를 '대한민국 부산'으로 변경하시오.
UPDATE `CUSTOMER` SET `address` = '대한민국 부산'
WHERE `custid` = 5;

#문제32. CUSTOMER테이블에서 고객번호가 5인 고객을 삭제하시오.
DELETE FROM `CUSTOMER` WHERE `custid`=5;