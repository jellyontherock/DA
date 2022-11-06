## DAY 03. 데이터 가져오기

## 쿼리 예제 (SELECT)

SELECT 123;
SELECT 1+2+3;
SELECT "ABC";

## SELECT : 값을 가져올 컬럼을 선택하는 키워드
## FROM : 데이터를 가져올 테이블을 지정하는 키워드
## FROM [테이블 이름] 형식으로 사용

-- 예제를 위한 테이블 생성
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon(
	number INT,
    name VARCHAR(30),
    type VARCHAR(20),
    speed INT);
INSERT INTO mypokemon(number, name, type, speed)
	VALUES(10, "caterpie", "bug", 45),
		(25, "pikachu", "electric", 90),
        (133, "eevee", "normal", 55);

-- SELECT, FROM 사용 에제

SELECT name
FROM pokemon.mypokemon;

SELECT * FROM pokemon.mypokemon;

## AS [컬럼 별명]: 가져온 데이터에 별명을 지정하는 키워드

-- AS 사용 예제

SELECT number AS national_numbr
FROM pokemon.mypokemon;

SELECT * FROM pokemon.mypokemon;

## LIMIT [로우 수] : 가져올 데이터의 로우 개수를 지정하는 키워드 (일부만 확인하고 싶을때)

SELECT number, name
FROM pokemon.mypokemon
LIMIT 2;

## DISTINCT [컬럼 이름] : 중복된 데이터를 제외하고 같은 값은 한 번만 가져오는 키워드 (컬럼에 어떤 값이 있는지 확인할 때)

SELECT DISTINCT type
FROM pokemon.mypokemon;


-------------------------------------------------


## DAY03 실습 : 테이블에서 데이터를 가져와보자.

-- MISSION 1

SELECT 123*456;

-- MISSION 2

SELECT 2310/30;

-- MISSION 3
## 이후 문제 풀기 위해서 포켓몬 데이터 입력 쿼리

DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(20),
    height FLOAT,
    weight float,
    attack float,
    defense float,
    speed float
);
INSERT INTO mypokemon(number, name, type, height, weight, attack, defense, speed)
VALUES (10, 'caterpie', 'bug', 0.3, 2.9, 30, 35, 45),
	(25, 'pikachu', 'electric', 0.4, 6, 55, 40, 90),
    (26, 'raichu', 'electric', 0.8, 30, 90, 55, 110),
    (133, 'eevee', 'normal', 0.3, 6.5, 55, 50, 55),
    (152, 'chikorita', 'grass', 0.9, 6.4, 49, 65, 45);

SELECT 'pikachu' as 'pokemon'
FROM pokemon.mypokemon;

-- MISSION 4

SELECT * FROM pokemon.mypokemon;

-- MISSION 5

SELECT name FROM pokemon.mypokemon;

-- MISSION 6

SELECT name, height, weight
FROM pokemon.mypokemon;

-- MISSION 7

SELECT DISTINCT height
FROM pokemon.mypokemon;

-- MISSION 8

SELECT name, attack*2 AS "attack2"
FROM pokemon.mypokemon;

-- MISSION 9

SELECT name AS "이름"
FROM pokemon.mypokemon;

-- MISSION 10

SELECT attack AS "공격력", defense AS "방어력"
FROM pokemon.mypokemon;

-- MISSION 11

SELECT height*100 AS "height(cm)"
FROM pokemon.mypokemon;

-- MISSION 12

SELECT *
FROM pokemon.mypokemon
LIMIT 1;

-- MISSION 13

SELECT name AS "영문명", height AS "키(m)", weight AS "몸무게(kg)"
FROM pokemon.mypokemon
LIMIT 2;

-- MISSION 14

SELECT name, (attack+defense+speed) AS "total"
FROM pokemon.mypokemon;

-- MISSION 15

SELECT name, (weight/(height)^2) AS "BMI"
FROM pokemon.mypokemon;
