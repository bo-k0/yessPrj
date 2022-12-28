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
    , TRADE_YN
)
VALUES
(
    SEQ_MARKET_NO.NEXTVAL
    , 2
    , '나만의 코딩센세 구해요.'
    , '2'
    , '초록색 우산'
    , '초록색 우산 / 새상품 / 1개'
    , '화곡역 직거래 환영'
    , '비밀댓글로 연락처 달아주세요~~'
    , 'Y'
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

		INSERT INTO MARKET_ATTACHMENT 
		VALUES
		(
		 	SEQ_MARKET_ATTACHMENT_NO.NEXTVAL, 
		 	1,
		 	'123',
			'123' ,
			'123',
			SYSDATE,
			'Y',
			default
		);

COMMIT;

---------------------------
--SQL
---------------------------
	 SELECT * FROM 
        (
            SELECT ROWNUM AS RNUM , T.* FROM 
            (
                SELECT MK.NO, MK.TRADE_YN, MK.TITLE, MB.NICK, TO_CHAR(MK.ENROLL_DATE, 'yyyy-mm-dd') AS ENROLL_DATE, MK.HIT FROM
                MARKET MK JOIN MEMBER MB ON MK.MEMBER_NO = MB.NO 
                WHERE DELETE_YN = 'N' 
                ORDER BY NO DESC
                ) 
            T) 
        WHERE RNUM BETWEEN 1 AND 30
        <WHERE RNUM BETWEEN #{start} AND #{end}
---------------------------
 		 SELECT * FROM 
        (
            SELECT ROWNUM AS RNUM , T.* FROM 
            (
                SELECT MK.NO, MK.TRADE_YN, MK.TITLE, MB.NICK, TO_CHAR(MK.ENROLL_DATE, 'yyyy-mm-dd') AS ENROLL_DATE, MK.HIT FROM
                MARKET MK JOIN MEMBER MB ON MK.MEMBER_NO = MB.NO 
                WHERE DELETE_YN = 'N' 
                ORDER BY NO DESC
                ) 
            T) 
        WHERE RNUM BETWEEN 1 AND 30;
        
SELECT 
    MK.NO
    , MB.NICK
    , MK.TITLE
    , MT.MARKET_TYPE
    , TO_CHAR(MK.ENROLL_DATE, 'yyyy-mm-dd') AS ENROLL_DATE
    , MK.HIT
    , MK.TRADE_YN
FROM MARKET MK
JOIN MEMBER MB ON MK.MEMBER_NO = MB.NO
JOIN MARKET_TYPE MT ON MK.MARKET_TYPE_NO = MT.NO
WHERE DELETE_YN = 'N'
AND MK.MARKET_TYPE_NO = 1;
--and TITLE LIKE '% %'

--------------------------------
SELECT
    MB.NICK
    , CMT
    , TO_CHAR(MC.MODIFY_DATE, 'yyyy-mm-dd') AS MODIFY_DATE
    , MC.SECRET_YN
FROM MARKET_CMT MC
JOIN MEMBER MB ON MC.MEMBER_NO = MB.NO
WHERE MC.DELETE_YN = 'N'
AND MC.MARKET_NO = 1
;
