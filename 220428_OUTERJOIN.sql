-- 조인
-- 1. INNER JOIN
SELECT bt.idx, bt.author, dt.names AS "책장르명"
     , bt.names, to_char(bt.releasedate, 'YYYY-MM-DD') AS "출판일"
     , bt.isbn
     , to_char(bt.price, '999,999') AS "정가"
  FROM bookstbl bt
 INNER JOIN divtbl dt
    ON bt.division = dt.division
 WHERE dt.division = 'B005';


-- INNER JOIN, 테이블 3개
SELECT r.idx
     , TO_CHAR(r.rentaldate, 'YYYY-MM-DD') AS "대여일"
     , TO_CHAR(r.returndate, 'YYYY-MM-DD') AS "반납일"
     , m.names AS "대여자"
     , b.names AS "빌린책"
  FROM membertbl m
 INNER JOIN rentaltbl r
    ON m.idx = r.memberidx
 INNER JOIN bookstbl b
    ON b.idx = r.bookidx
 WHERE r.returndate IS NOT NULL
 ORDER BY r.idx;
 
 -- OUTER JOIN 
 
 SELECT m.idx AS "회원번호", m.names AS "회원이름"
      , m.levels, m.mobile, m.email
      , r.idx
   FROM membertbl m
   LEFT OUTER JOIN rentaltbl r
     ON m.idx = r.memberidx
  WHERE r.idx IS NULL
    AND m.levels <> 'S';
    
-- 대여(RENTALTBL)테이블을 기준으로 하면 대여 안 된 데이터는 하나도 없습니다.
SELECT *
   FROM membertbl m
   RIGHT OUTER JOIN rentaltbl r
     ON m.idx = r.memberidx;
    
-- 대여를 한번도 하지 않은 책 리스트 조회
SELECT b.idx AS "책번호", b.names AS "책제목"
     , b.author, b.price
     , r.idx, r.rentaldate, r.returndate
  FROM bookstbl b
  LEFT OUTER JOIN rentaltbl r
    ON b.idx = r.bookidx
  WHERE r.idx IS NULL;
  
--
SELECT * 
  FROM membertbl m
  LEFT OUTER JOIN rentaltbl r
    ON m.idx = r.memberidx
  RIGHT OUTER JOIN bookstbl b
     ON b.idx = r.bookidx
  WHERE m.idx IS NULL;



