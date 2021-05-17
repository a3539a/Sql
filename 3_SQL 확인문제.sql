#날짜 : 2021/05/17
#이름 : 김승용 
#내용 : 3.SQL 확인문제 

# 실습하기 3-1
CREATE TABLE `TBL_MEMBER` (
	`memberID`		VARCHAR(8) PRIMARY KEY NOT NULL,
	`memberName` 	VARCHAR(5) NOT NULL,
	`memberAddress`	VARCHAR(20)
);

CREATE TABLE `TBL_PRODUCT` (
	`productName`	VARCHAR(4) PRIMARY KEY NOT NULL,
	`cost`			INT NOT NULL,
	`makeDate`		DATE,
	`company`		VARCHAR(5),
	`amount`			INT NOT NULL
);

# 실습하기 3-2
INSERT INTO `TBL_MEMBER` VALUES('jang', '장보고', '완도군');
INSERT INTO `TBL_MEMBER` VALUES('kang', '강감찬', '서울시');
INSERT INTO `TBL_MEMBER` (`memberID`, `memberName`) VALUES('kim', '김유신');
INSERT INTO `TBL_MEMBER` VALUES('lee', '이순신', '서울시');

INSERT INTO `TBL_PRODUCT` VALUES ('냉장고', 800, '2021-05-17','LG', 1);
INSERT INTO `TBL_PRODUCT` VALUES ('노트북', 1500, '2021-05-17','삼성', 5);
INSERT INTO `TBL_PRODUCT` VALUES ('컴퓨터', 1000, '2021-05-17','LG', 10);

# 실습하기 3-3
SELECT * FROM `TBL_MEMBER` WHERE `memberAddress` = '서울시';














