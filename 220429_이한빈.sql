-- 1��

SELECT LOWER(email) AS "EMAIL", mobile, names, addr, levels 
  FROM membertbl
 ORDER BY names DESC;

-- 2��

SELECT names AS "å����"
     , author AS " ���ڸ�"
     , TO_CHAR(releasedate,'YYYY-MM-DD') AS "������"
     , price AS "����"
  FROM bookstbl
 ORDER BY price DESC;

-- 3��

SELECT d.names AS "�帣"
     , b.names AS "å����"
     , b.author AS "����"
     , TO_CHAR(b.releasedate, 'YYYY-MM-DD') AS "������"
     , b.isbn AS "å�ڵ��ȣ"
     , CAST(b.price AS NVARCHAR2(10))||'��' AS " ����"
  FROM bookstbl b
 INNER JOIN divtbl d
    ON b.division = d.division
 ORDER BY idx DESC;
 
 -- 4��
 
CREATE SEQUENCE membertblSEQ
 START WITH 26
 INCREMENT BY 1; 
 
INSERT INTO membertbl 
            (idx, names, 
            levels, addr, 
            mobile, email, 
            userid, password)
     VALUES (membertblSEQ.nextval, 'ȫ�浿', 
            'A', '�λ�� ���� �ʷ���',
            '010-7989-0909', 'HGD09@NAVER.COM', 
            'HGD7989', '12345');

COMMIT;

-- 5��

SELECT DECODE(d.names, NULL, '--�հ�--', d.names) AS "�帣"
     , SUM(b.price) AS "�帣���հ�ݾ�"
  FROM bookstbl b
 INNER JOIN divtbl d
         ON b.division = d.division
 GROUP BY ROLLUP(d.names) 
 ORDER BY d.names;
 
