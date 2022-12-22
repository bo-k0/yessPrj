SELECT * FROM
    ( 
    SELECT
    ROWNUM 
    ,T.* FROM(
            SELECT
                NO
                , TITLE
            FROM NEWS
            WHERE DELETE_YN = 'N'
            AND NEWS_TYPE_NO = 1
            ORDER BY ENROLL_DATE DESC    
            ) T
    )   
WHERE ROWNUM BETWEEN 1 AND 5
;

SELECT * FROM
    ( 
    SELECT
    ROWNUM 
    ,T.* FROM(
            SELECT
                NO
                , NICK
                , POINT
            FROM MEMBER
            WHERE QUIT_YN = 'N'
            AND GRADE_NO != 8
            OR GRADE_NO != 9
            ORDER BY POINT DESC    
            ) T
    )   
WHERE ROWNUM BETWEEN 1 AND 10;

SELECT 
    NO
    ,ADMIN_NO
    ,NEWS_TYPE_NO
    ,TITLE
    ,CONTENT
    ,ENROLL_DATE
    ,DELETE_YN
    ,MODIFY_DATE
FROM NEWS
WHERE NO = 1
AND DELETE_YN = 'N'
;

INSERT INTO NEWS
(
    NO
    , ADMIN_NO
    , NEWS_TYPE_NO
    , TITLE
    , CONTENT
)
VALUES
(
    SEQ_NEWS_NO.NEXTVAL
    ,1
    ,1
    ,'THIS IS TITLE'
    ,'THIS IS CONTENT'
);

UPDATE NEWS
SET
    ,NEWS_TYPE_NO
    ,TITLE
    ,CONTENT
    ,DELETE_YN = 'N'
    ,MODIFY_DATE = SYSDATE
WHERE
NO = 1

INSERT INTO GRADE VALUES(1,'¾¾¾Ñ');
INSERT INTO GRADE VALUES(2,'»õ½Ï');
INSERT INTO GRADE VALUES(3,'°¡Áö');
INSERT INTO GRADE VALUES(4,'²ÉÀÙ');
INSERT INTO GRADE VALUES(5,'¿·¸Å');
INSERT INTO GRADE VALUES(8,'ºñ·á');
INSERT INTO GRADE VALUES(9,'°ü¸®ÀÚ');
COMMIT;