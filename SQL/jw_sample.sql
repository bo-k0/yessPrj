SELECT * FROM
    ( 
    SELECT
    ROWNUM 
    ,T.* FROM(
            SELECT
                NO
                , TITLE
            FROM NEWS
            OUTER JOIN DUAL
            WHERE DELETE_YN = 'N'
            AND NEWS_TYPE_NO = 1
            ORDER BY ENROLL_DATE DESC    
            ) T
    )
WHERE ROWNUM BETWEEN 1 AND 5
;