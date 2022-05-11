-- 1번

SELECT LOWER(email) AS "EMAIL", mobile, names, addr, levels 
  FROM membertbl
 ORDER BY names DESC;

-- 2번

SELECT names AS "책제목"
     , author AS " 저자명"
     , TO_CHAR(releasedate,'YYYY-MM-DD') AS "출판일"
     , price AS "가격"
  FROM bookstbl
 ORDER BY price DESC;

-- 3번

SELECT d.names AS "장르"
     , b.names AS "책제목"
     , b.author AS "저자"
     , TO_CHAR(b.releasedate, 'YYYY-MM-DD') AS "출판일"
     , b.isbn AS "책코드번호"
     , CAST(b.price AS NVARCHAR2(10))||'원' AS " 가격"
  FROM bookstbl b
 INNER JOIN divtbl d
    ON b.division = d.division
 ORDER BY idx DESC;
 
 -- 4번
 
CREATE SEQUENCE membertblSEQ
 START WITH 26
 INCREMENT BY 1; 
 
INSERT INTO membertbl 
            (idx, names, 
            levels, addr, 
            mobile, email, 
            userid, password)
     VALUES (membertblSEQ.nextval, '홍길동', 
            'A', '부산시 동구 초량동',
            '010-7989-0909', 'HGD09@NAVER.COM', 
            'HGD7989', '12345');

COMMIT;

-- 5번

SELECT DECODE(d.names, NULL, '--합계--', d.names) AS "장르"
     , SUM(b.price) AS "장르별합계금액"
  FROM bookstbl b
 INNER JOIN divtbl d
         ON b.division = d.division
 GROUP BY ROLLUP(d.names) 
 ORDER BY d.names;
 
