-- ����
-- 1. INNER JOIN
SELECT bt.idx, bt.author, dt.names AS "å�帣��"
     , bt.names, to_char(bt.releasedate, 'YYYY-MM-DD') AS "������"
     , bt.isbn
     , to_char(bt.price, '999,999') AS "����"
  FROM bookstbl bt
 INNER JOIN divtbl dt
    ON bt.division = dt.division
 WHERE dt.division = 'B005';


-- INNER JOIN, ���̺� 3��
SELECT r.idx
     , TO_CHAR(r.rentaldate, 'YYYY-MM-DD') AS "�뿩��"
     , TO_CHAR(r.returndate, 'YYYY-MM-DD') AS "�ݳ���"
     , m.names AS "�뿩��"
     , b.names AS "����å"
  FROM membertbl m
 INNER JOIN rentaltbl r
    ON m.idx = r.memberidx
 INNER JOIN bookstbl b
    ON b.idx = r.bookidx
 WHERE r.returndate IS NOT NULL
 ORDER BY r.idx;
 
 -- OUTER JOIN 
 
 SELECT m.idx AS "ȸ����ȣ", m.names AS "ȸ���̸�"
      , m.levels, m.mobile, m.email
      , r.idx
   FROM membertbl m
   LEFT OUTER JOIN rentaltbl r
     ON m.idx = r.memberidx
  WHERE r.idx IS NULL
    AND m.levels <> 'S';
    
-- �뿩(RENTALTBL)���̺��� �������� �ϸ� �뿩 �� �� �����ʹ� �ϳ��� �����ϴ�.
SELECT *
   FROM membertbl m
   RIGHT OUTER JOIN rentaltbl r
     ON m.idx = r.memberidx;
    
-- �뿩�� �ѹ��� ���� ���� å ����Ʈ ��ȸ
SELECT b.idx AS "å��ȣ", b.names AS "å����"
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



