CREATE DATABASE idol;
SHOW DATABASES;
USE idol;
## -------------------
CREATE TABLE 아이돌(
이름 VARCHAR(20),
나이 INT,
소속 VARCHAR(50)
);
ALTER TABLE 아이돌 RENAME idol2;
ALTER TABLE idol2 RENAME customers;
ALTER TABLE customers ADD column 성별 VARCHAR(20);
ALTER TABLE customers MODIFY COLUMN 성별 FLOAT;
ALTER TABLE customers
CHANGE COLUMN 성별 gender VARCHAR(20);
ALTER TABLE customers DROP COLUMN gender;
DROP database 지은;
SHOW DATABASES;
DROP TABLE customers;
SHOW DATABASES;
USE idol;
-------------------------
CREATE TABLE jennie(
name VARCHAR(20),
age INT);
INSERT INTO jennie(name, age)
values("jennie", 27),
	("lisa", 25),
    ("jisoo", 28),
    ("rose", 26);
--------------------------
-- mission 테이블을 만들고 데이터를 넣어보자
-- 포켓몬 데이터베이스를 만들어주세요.
CREATE DATABASE pokemon;
-- 나의 포켓몬 테이블을 만들어주세요.
CREATE TABLE mypokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);
--------------------------
-- 포켓몬 테이블 안에 포켓몬 데이터를 각각의 로우로 넣어주세요.
INSERT INTO mypokemon(number, name, type)
	VALUES(10, "caterpie", "bug"),
			(25, "pikachu", "electric"),
            (133, "eevee", "normal");
--------------------------
-- mission2 새로운 테이블 만들고 새로운 타입 데이터 넣기
CREATE TABLE mynewpokemon(
		number INT, 
        name VARCHAR(20),
        type VARCHAR(10)
);
INSERT INTO mynewpokemon(number, name, type)
		VALUES(77, "포니타", "불꽃"),
				(132, "메타몽", "노말"),
                (151, "뮤", "에스퍼");
--------------------------                
-- mission3 테이블 내용 변겅
ALTER TABLE mypokemon RENAME myoldpokemon;
ALTER TABLE myoldpokemon
CHANGE COLUMN name eng_name VARCHAR(20);
ALTER TABLE mynewpokemon
CHANGE COLUMN name kor_name VARCHAR(20);
-------------------------
-- mission4 테이블 변경 및 삭제
DROP TABLE mynewpokemon;
truncate table myoldpokemon;
-------------------------
SELECT * from myoldpokemon;
