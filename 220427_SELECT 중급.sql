-- SELECT
-- ROWNUM
-- �������� ���� å 3�Ǹ�
SELECT * FROM
(
    SELECT names, TO_CHAR(releasedate, 'YYYY-MM-DD') "������"
      FROM bookstbl
       ORDER BY releasedate ASC
)
WHERE ROWNUM <= 3;


-- GROUP BY
SELECT author, division, SUM(price) "�հ�", SUM(1) "å��"
  FROM bookstbl
    GROUP BY author, division
  --  HAVING SUM(price) >= 200000
    ORDER BY division;
    
-- å ���� ���ġ
SELECT CAST(AVG(price) AS NUMBER(8,2)) AS "���å ����" From bookstbl;

-- å ���� ���� ��� å, ������ å
SELECT MAX(price) "���� ��� å", MIN(price) "���� ������ å" FROM bookstbl;

-- ��ü ����
SELECT count(*) FROM bookstbl
    WHERE division = 'B003';
    
-- ROLLUP, CUBE
SELECT division, SUM(price) "�հ�", SUM(1) "å��"
    , GROUPING_ID(division) "�߰��࿩��"
  FROM bookstbl
    GROUP BY ROLLUP(division);

-- WITH�� CTE(���� «�Ǹ� �н�)
