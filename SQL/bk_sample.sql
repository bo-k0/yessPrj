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
)
VALUES
(
    SEQ_MEMBER_NO.NEXTVAL
    , 2
    , '�Ⱦ��� ��� �˴ϴ�.'
    , '1'
    , '�ʷϻ� ���'
    , '�ʷϻ� ��� / ����ǰ / 1��'
    , 'ȭ� ���ŷ� ȯ��'
    , '��д�۷� ����ó �޾��ּ���~~'
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

COMMIT;