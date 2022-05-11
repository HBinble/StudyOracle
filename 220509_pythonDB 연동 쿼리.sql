-- 주소록 저장 쿼리
INSERT INTO addressbook
VALUES (SEQ_ADDRBOOK.nextval, '홍길동', '010-0000-0000', 'hdg90@naver.com', '경성');

-- 주소록 조회
SELECT name, phone_num, e_mail, addr
    FROM addressbook;
-- [WHERE name = '홍길동']

-- 주소록 삭제
DELETE FROM addressbook
    WHERE name = '홍길동';
    
    
    