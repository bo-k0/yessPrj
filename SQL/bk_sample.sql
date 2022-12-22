---------------------------
--GRADE
---------------------------
INSERT INTO GRADE VALUES(1,'씨앗');
INSERT INTO GRADE VALUES(2,'새싹');
INSERT INTO GRADE VALUES(3,'가지');
INSERT INTO GRADE VALUES(4,'꽃잎');
INSERT INTO GRADE VALUES(5,'옆매');
INSERT INTO GRADE VALUES(8,'비료');
INSERT INTO GRADE VALUES(9,'관리자');


---------------------------
--Member
---------------------------
INSERT INTO MEMBER(NO, ID, PWD, NAME, PHONE, NICK, ADDR)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'admin', '1234', '관리자', '010-1234-5678', 'admin', '사무실');

INSERT INTO MEMBER(NO, ID, PWD, NAME, PHONE, NICK, ADDR)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'bk5991', '1234', '김보경', '010-5333-5991', 'ANT', '우리집');


---------------------------
--YeSS Market 유형 번호
---------------------------
INSERT INTO MARKET_TYPE(NO, MARKET_TYPE) VALUES(SEQ_MARKET_TYPE_NO.NEXTVAL, '팔아요');
INSERT INTO MARKET_TYPE(NO, MARKET_TYPE) VALUES(SEQ_MARKET_TYPE_NO.NEXTVAL, '구해요');
INSERT INTO MARKET_TYPE(NO, MARKET_TYPE) VALUES(SEQ_MARKET_TYPE_NO.NEXTVAL, '나눠요');
INSERT INTO MARKET_TYPE(NO, MARKET_TYPE) VALUES(SEQ_MARKET_TYPE_NO.NEXTVAL, '바꿔요');

--YeSS Market 게시글
INSERT INTO MARKET
(
    NO
    , MEMBER_NO
    , TITLE
    , MARKET_TYPE_NO
    , OBJECT_NAME
    , OBJECT_INFO
    , TRADE_METHOD
    , OBJECT_PS
)
VALUES
(
    SEQ_MEMBER_NO.NEXTVAL
    , 2
    , '안쓰는 우산 팝니다.'
    , '1'
    , '초록색 우산'
    , '초록색 우산 / 새상품 / 1개'
    , '화곡역 직거래 환영'
    , '비밀댓글로 연락처 달아주세요~~'
)
;

--YeSS Market 사진 (1번글)
INSERT INTO MARKET_ATTACHMENT
(
    NO
    ,MARKET_NO
    ,ORIGIN_NAME
    ,CHANGE_NAME
    ,FILE_PATH
    ,THUMB_YN
)
VALUES
(
    SEQ_MARKET_ATTACHMENT_NO.NEXTVAL
    ,'4'
    ,'우산.PNG'
    ,'우산.PNG'
    ,'resources/upload/market'
    ,'Y'
)
;

COMMIT;