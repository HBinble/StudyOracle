-- �ּҷ� ���� ����
INSERT INTO addressbook
VALUES (SEQ_ADDRBOOK.nextval, 'ȫ�浿', '010-0000-0000', 'hdg90@naver.com', '�漺');

-- �ּҷ� ��ȸ
SELECT name, phone_num, e_mail, addr
    FROM addressbook;
-- [WHERE name = 'ȫ�浿']

-- �ּҷ� ����
DELETE FROM addressbook
    WHERE name = 'ȫ�浿';
    
    
    