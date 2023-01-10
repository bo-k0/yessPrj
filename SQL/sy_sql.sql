select * from yessmall_prod;

DROP TABLE "YESSMALL_PROD";

CREATE TABLE "YESSMALL_PROD" (
	"PROD_NO"	NUMBER		NOT NULL,
	"PROD_CATE_NO"	NUMBER		NOT NULL,
	"PROD_NAME"	VARCHAR2(50)		NOT NULL,
	"PROD_INFO"	VARCHAR2(4000)		NOT NULL,
	"PROD_DETAIL"	CLOB		NOT NULL,
	"PROD_PRICE"	NUMBER		NOT NULL,
	"PROD_STOCK"	NUMBER	DEFAULT 100	NOT NULL,
	"DELETE_YN"	CHAR(1) DEFAULT 'N' CHECK(DELETE_YN IN ('Y' , 'N'))	NOT NULL
);
-----------------------------------------------------------------------------------------
--INSERT INTO YESSMALL_PROD VALUES(시퀀스,카테고리,제품명,제품소개,제품상세소개, 가격,재고수량);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,3,'친환경 양치세트','친환경 재료로 만든 양치세트','깨끗한 치아를 위한 친환경 양치세트.<br><br><br> 구성 : 대나무 칫솔 2개, 치약 1개<br><br> 1. 대나무 칫솔<br> 크기 : 18cm <br> 특징 : 플라스틱 칫솔의 대체품으로, 환경호르몬 및 유해물질로부터 안전한 친환경 칫솔입니다.<br><br> 2. 고체치약 : 30정<br><br> 3. 목제 혀클리너 <br><br> 4. 린넨 파우치<br>', 10000, 200,DEFAULT);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,1,'리유저블 텀블러','무색의 깔끔한 텀블러','무색으로 깔끔한 느낌의 텀블러. <br><br>유행을 타지 않아 오래 쓸 수 있는 텀블러입니다. 일회용 컵 사용을 줄이기 위한 최선의 선택, 텀블러.', 13000,300,DEFAULT);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,2,'대나무 칫솔','대나무로 만든 친환경 칫솔','대나무로 제작한 친환경 칫솔로, 사용 후 재활용까지 고려한 제품입니다.<br><br> 크기 : 18cm <br> 4개입<br>',7000 ,500,DEFAULT);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,4,'어린이 양치컵세트','어린이 양치세트','어린이를 위한 친환경 양치세트.<br><br><br> 구성 : 대나무 칫솔 1개, 어린이용 양치컵 1개<br><br> 1. 어린이용 칫솔<br> 크기 : 15cm <br> 특징 : 플라스틱 칫솔의 대체품으로, 환경호르몬 및 유해물질로부터 안전한 친환경 칫솔입니다.<br><br> 2. 어린이용 양치컵<br> 어린이가 쓰기 좋은 미니 양치컵<br><br>', 12000, 300,DEFAULT);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,5,'에코백','깔끔한 에코백','깔끔한 느낌의 베이지 컬러의 에코백. <br><br>유행을 타지 않아 오래 쓸 수 있는 패션 에코백입니다.', 13000,300,DEFAULT);
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

--리스트
SELECT P.PROD_NO, P.PROD_CATE_NO, P.PROD_NAME, P.PROD_PRICE, A.PROD_IMG_NO, A.THUMB_YN, A.CHANGE_NAME
FROM YESSMALL_PROD P
JOIN YESSMALL_ATTACHMENT A
ON P.PROD_NO = A.PROD_NO
JOIN YESSMALL_CATEGORY C
ON P.PROD_CATE_NO = C.PROD_CATE_NO
--WHERE A.THUMB_YN = 'Y'


   -- AND P.PROD_CATE_NO = ${category}

--AND P.PROD_NAME LIKE 
ORDER BY P.PROD_NO DESC;

SELECT P.PROD_NO, P.PROD_CATE_NO, P.PROD_NAME, P.PROD_PRICE, A.PROD_IMG_NO, A.THUMB_YN, A.CHANGE_NAME
FROM YESSMALL_PROD P
JOIN YESSMALL_ATTACHMENT A
ON P.PROD_NO = A.PROD_NO
JOIN YESSMALL_CATEGORY C
ON P.PROD_CATE_NO = C.PROD_CATE_NO
WHERE A.THUMB_YN = 'Y'
;


SELECT R.RV_NO, R.PROD_NO, R.TITLE, R.CONTENT, R.ENROLL_DATE, R.MODIFY_DATE, R.DELETE_YN, M.NICK
FROM YESSMALL_REVIEW R
JOIN MEMBER M
ON M.NO = R.MEMBER_NO
WHERE  R.RV_NO = 8
AND R.DELETE_YN = 'N';

INSERT INTO MEMBER( NO,GRADE_NO,ID ,PWD,NAME,PHONE ,NICK ,ADDR ) VALUES ( SEQ_MEMBER_NO.NEXTVAL ,9 ,'ADMIN' ,'1234' ,'ADMIN' ,'010-1010-1010' ,'ADMIN' ,'ADDRESS' );

--리뷰수정
UPDATE 
    YESSMALL_REVIEW 
SET 
    TITLE = '구려',
    CONTENT = '구려!',
    MODIFY_DATE = SYSDATE
WHERE RV_NO = 6;
commit;

SELECT *
FROM YESSMALL_ATTACHMENT
WHERE PROD_NO = 1
AND STATUS = 'O';

UPDATE 
YESSMALL_ATTACHMENT
SET 
STATUS = 'O'
WHERE PROD_NO = 1;

SELECT R.RV_NO, R.PROD_NO, R.TITLE, R.CONTENT, R.ENROLL_DATE, R.MODIFY_DATE, R.DELETE_YN, M.NICK
FROM YESSMALL_REVIEW R
JOIN MEMBER M
ON M.NO = R.MEMBER_NO
WHERE R.PROD_NO = 1
AND R.RV_NO = 1
AND R.DELETE_YN = 'N';

SELECT R.RV_NO, R.PROD_NO, R.TITLE, R.CONTENT, R.ENROLL_DATE, R.MODIFY_DATE, R.DELETE_YN, M.NICK
FROM YESSMALL_REVIEW R
JOIN MEMBER M
ON M.NO = R.MEMBER_NO
WHERE R.PROD_NO =1
AND R.DELETE_YN = 'N';

--카트에 같은제품 있는지 보기
SELECT * FROM CART
WHERE PROD_NO = 5
AND MEMBER_NO = 1;
commit;

--장바구니조회
SELECT P.PROD_NAME, P.PROD_PRICE, C.CNT
FROM YESSMALL_PROD P
JOIN CART C
ON P.PROD_NO = C.PROD_NO
WHERE C.MEMBER_NO = 7
AND P.DELETE_YN = 'N'
AND A.THUMB_YN = 'Y'
;

--찜목록같은회원이같은제품찜했는지
SELECT * FROM YESS_LIKED
WHERE PROD_NO = 1
AND MEMBER_NO = 7;
        
--찜해제
DELETE FROM YESS_LIKED
WHERE PROD_NO = 1
AND MEMBER_NO = 7;

--찜리스트
SELECT P.PROD_NO, P.PROD_NAME, P.PROD_PRICE, P.DELETE_YN, A.CHANGE_NAME
FROM YESSMALL_PROD P
JOIN YESS_LIKED L
ON P.PROD_NO = L.PROD_NO
JOIN YESSMALL_ATTACHMENT A
ON P.PROD_NO = A.PROD_NO
WHERE L.MEMBER_NO = 7
AND P.DELETE_YN = 'N'
AND A.THUMB_YN = 'Y';

UPDATE 
MEMBER
SET 
POINT = 10000,
ADD_POINT = 10000
WHERE NO = 7;

INSERT INTO CART VALUES(
SEQ_ORDER_NO.NEXTVAL,
7,
1000,
500,
35000,
default,
기요미,
16548,
'범안로221',
'맛집',
01051245657);

commit;