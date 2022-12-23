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
    ,ROWNUM AS LIST_NO
FROM NEWS
WHERE NEWS_TYPE_NO = 1
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
SELECT COUNT(*)
FROM NEWS
WHERE NEWS_TYPE_NO = 1
AND DELETE_YN = 'N'
;

COMMIT;