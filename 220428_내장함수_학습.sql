-- 형변환 함수

SELECT CAST(AVG(price) AS number(10,2)) AS "책가격평균" FROM bookstbl;

SELECT CAST(AVG(hisal) AS number(10,2)) AS "최고월급평균" FROM salgrade;

-- DUAL(실제 db테이블 사용하지 않을 때)
SELECT CAST('1000' AS NUMBER(10)) FROM dual;
SELECT CAST(1000.08 AS CHAR(10)) FROM dual;

SELECT CAST('2022/04/28' AS DATE) FROM dual;

SELECT TO_CHAR(12345,'$999,999') FROM dual;
SELECT TO_CHAR(12345,'999,999') FROM dual;

SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH:MM:SS') "현재일시" FROM dual;


-- 문자열 함수
SELECT ASCII('A'),CHR(65), ASCIISTR('이'), UNISTR('\D55C') FROM dual;

-- 문자열 결합(||)
SELECT 'Hello, ' || 'World ' || '!' FROM dual;
SELECT CONCAT('Hello,', 'World') FROM DUAL;

SELECT INSTR('이것이 Oracle이다, 반갑습니다.', 'Oracle') FROM DUAL;

-- 대소문자 변환
SELECT UPPER('abcde'), LOWER('ABCDE') FROM DUAL;

-- 글자 자르기
SELECT SUBSTR('대한민국만세',5,2) FROM DUAL;

-- 트림(TRIM) : 정리하다
SELECT LTRIM('   안녕하세요'), RTRIM('안녕하세요     '), TRIM('   안녕하세요   ') 
FROM DUAL;

-- 현재시간
SELECT SYSDATE FROM DUAL;




