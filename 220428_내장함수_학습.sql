-- ����ȯ �Լ�

SELECT CAST(AVG(price) AS number(10,2)) AS "å�������" FROM bookstbl;

SELECT CAST(AVG(hisal) AS number(10,2)) AS "�ְ�������" FROM salgrade;

-- DUAL(���� db���̺� ������� ���� ��)
SELECT CAST('1000' AS NUMBER(10)) FROM dual;
SELECT CAST(1000.08 AS CHAR(10)) FROM dual;

SELECT CAST('2022/04/28' AS DATE) FROM dual;

SELECT TO_CHAR(12345,'$999,999') FROM dual;
SELECT TO_CHAR(12345,'999,999') FROM dual;

SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH:MM:SS') "�����Ͻ�" FROM dual;


-- ���ڿ� �Լ�
SELECT ASCII('A'),CHR(65), ASCIISTR('��'), UNISTR('\D55C') FROM dual;

-- ���ڿ� ����(||)
SELECT 'Hello, ' || 'World ' || '!' FROM dual;
SELECT CONCAT('Hello,', 'World') FROM DUAL;

SELECT INSTR('�̰��� Oracle�̴�, �ݰ����ϴ�.', 'Oracle') FROM DUAL;

-- ��ҹ��� ��ȯ
SELECT UPPER('abcde'), LOWER('ABCDE') FROM DUAL;

-- ���� �ڸ���
SELECT SUBSTR('���ѹα�����',5,2) FROM DUAL;

-- Ʈ��(TRIM) : �����ϴ�
SELECT LTRIM('   �ȳ��ϼ���'), RTRIM('�ȳ��ϼ���     '), TRIM('   �ȳ��ϼ���   ') 
FROM DUAL;

-- ����ð�
SELECT SYSDATE FROM DUAL;




