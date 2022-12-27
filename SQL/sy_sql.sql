select * from yessmall_prod;

--상품목록조회
SELECT P.PROD_NO, P.PROD_CATE_NO, P.PROD_NAME, P.PROD_PRICE, A.PROD_IMG_NO, A.THUMB_YN, A.CHANGE_NAME
FROM YESSMALL_PROD P
JOIN YESSMALL_ATTACHMENT A
ON P.PROD_NO = A.PROD_NO
WHERE A.THUMB_YN = 'Y'
ORDER BY PROD_NO DESC
;

--상품상세조회
SELECT P.PROD_NO, P.PROD_CATE_NO, P.PROD_NAME, P.PROD_INFO, P.PROD_DETAIL, P.PROD_PRICE, P.PROD_STOCK, A.PROD_IMG_NO, A.THUMB_YN
FROM YESSMALL_PROD P
JOIN YESSMALL_ATTACHMENT A
ON P.PROD_NO = A.PROD_NO
WHERE P.PROD_NO = 
ORDER BY PROD_NO DESC
;
SELECT P.PROD_NO, P.PROD_CATE_NO, P.PROD_NAME, P.PROD_PRICE, A.PROD_IMG_NO, A.THUMB_YN, A.CHANGE_NAME
FROM YESSMALL_PROD P
JOIN YESSMALL_ATTACHMENT A
ON P.PROD_NO = A.PROD_NO
JOIN YESSMALL_CATEGORY C
ON P.PROD_CATE_NO = C.PROD_CATE_NO
WHERE A.THUMB_YN = 'Y'

    AND P.PROD_CATE_NO = 1

--AND P.PROD_NAME LIKE '%${search}%'
ORDER BY PROD_NO DESC;


