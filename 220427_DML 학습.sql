--���� (INSERT)

--CREATE TABLE
CREATE TABLE testTBL
(
    id NUMBER(4) NOT NULL PRIMARY KEY,
    userName NVARCHAR2(10),
    age NUMBER(3)
);

--INSERT INTO ���̺� (�÷���,�÷���,�÷���) VALUES (������,������,������)
INSERT INTO testtbl(id, username, age) VALUES (1, 'ȫ�浿', 99);

--�ǵ�����(ROLLBACK)
ROLLBACK;

--��������(COMMIT)
COMMIT;

--�÷����� ����
INSERT INTO testtbl VALUES (2, 'ȫ���', 97);
--�÷� ������ ���ƾ���
INSERT INTO testtbl VALUES (3, 'ȫ����'); -- ���� (���� ���� ��������)
INSERT INTO testtbl VALUES (3, 'ȫ����', NULL); -- �۵�
INSERT INTO testtbl(id, username) VALUES (4, '�����'); --�۵�


-- testTBL2
--CREATE TABLE
CREATE TABLE testTBL2
(
    id NUMBER(4) NOT NULL PRIMARY KEY,
    userName NVARCHAR2(10),
    age NUMBER(3)
);

-- ������ ����

CREATE SEQUENCE test2Seq
  START WITH 1 -- ���� ��
    INCREMENT BY 1; -- ���� ��
    
-- ������ ��� �Է�
INSERT INTO testtbl2 (id, userName, age)
  VALUES (TEST2SEQ.nextval, '�����', 97);

COMMIT;

-- UPDATE
UPDATE testTbl2
    SET username = 'ȫ���'
       , age = 97
    WHERE id = 2;
    

-- DELETE
DELETE FROM testTbl2
    WHERE id = 5;

