SELECT * FROM bookstbl;

-- 책테이블 정보검색 인덱스 예제

CREATE INDEX IDX_BOOKSTBL_AUTHOR ON BOOKSTBL (AUTHOR ASC);

CREATE INDEX IDX_BOOKSTBL_NAMES ON BOOKSTBL (NAMES ASC);
