---------------------------
--GRADE
---------------------------
INSERT INTO GRADE VALUES(1,'����');
INSERT INTO GRADE VALUES(2,'����');
INSERT INTO GRADE VALUES(3,'����');
INSERT INTO GRADE VALUES(4,'����');
INSERT INTO GRADE VALUES(5,'����');
INSERT INTO GRADE VALUES(8,'���');
INSERT INTO GRADE VALUES(9,'������');
---------------------------
--Member
---------------------------
INSERT INTO MEMBER(NO, ID, PWD, NAME, PHONE, NICK, ADDR)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'admin', '1234', '������', '010-1234-5678', 'admin', '�繫��');

INSERT INTO MEMBER(NO, ID, PWD, NAME, PHONE, NICK, ADDR)
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'bk5991', '1234', '�躸��', '010-5333-5991', 'ANT', '�츮��');
---------------------------
--YeSS Market ���� ��ȣ
---------------------------
INSERT INTO MARKET_TYPE(NO, MARKET_TYPE) VALUES(SEQ_MARKET_TYPE_NO.NEXTVAL, '�Ⱦƿ�');
INSERT INTO MARKET_TYPE(NO, MARKET_TYPE) VALUES(SEQ_MARKET_TYPE_NO.NEXTVAL, '���ؿ�');
INSERT INTO MARKET_TYPE(NO, MARKET_TYPE) VALUES(SEQ_MARKET_TYPE_NO.NEXTVAL, '������');
INSERT INTO MARKET_TYPE(NO, MARKET_TYPE) VALUES(SEQ_MARKET_TYPE_NO.NEXTVAL, '�ٲ��');


--YeSS Market �Խñ�

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
    , '������ �ڵ����� ���ؿ�.'
    , '2'
    , '�ʷϻ� ���'
    , '�ʷϻ� ��� / ����ǰ / 1��'
    , 'ȭ� ���ŷ� ȯ��'
    , '��д�۷� ����ó �޾��ּ���~~'
    , 'Y'
)
;

--YeSS Market ���� (1����)
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
    ,'���.PNG'
    ,'���.PNG'
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
