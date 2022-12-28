----------------------------------------------------------------------
--다른테이블 드랍
----------------------------------------------------------------------
DROP TABLE "MEMBER" CASCADE CONSTRAINTS;
DROP TABLE "COMM" CASCADE CONSTRAINTS;
DROP TABLE "REPORT" CASCADE CONSTRAINTS;
DROP TABLE "NEWS" CASCADE CONSTRAINTS;
DROP TABLE "REPORT_TYPE" CASCADE CONSTRAINTS;
DROP TABLE "QNA" CASCADE CONSTRAINTS;
DROP TABLE "RECYCLE" CASCADE CONSTRAINTS;
DROP TABLE "CART" CASCADE CONSTRAINTS;
DROP TABLE "GRADE" CASCADE CONSTRAINTS;
DROP TABLE "ORDER" CASCADE CONSTRAINTS;
DROP TABLE "PAYMENT" CASCADE CONSTRAINTS;
DROP TABLE "ATTEND" CASCADE CONSTRAINTS;
DROP TABLE "FAQ" CASCADE CONSTRAINTS;
DROP TABLE "RECYCLE_LIKED" CASCADE CONSTRAINTS;
DROP TABLE "YESSMALL_PROD" CASCADE CONSTRAINTS;
DROP TABLE "YESSMALL_REVIEW" CASCADE CONSTRAINTS;
DROP TABLE "YESSMALL_CATEGORY" CASCADE CONSTRAINTS;
DROP TABLE "YESSMALL_ATTACHMENT" CASCADE CONSTRAINTS;
DROP TABLE "MARKET" CASCADE CONSTRAINTS;
DROP TABLE "MARKET_CMT" CASCADE CONSTRAINTS;
DROP TABLE "MARKET_TYPE" CASCADE CONSTRAINTS;
DROP TABLE "RECYCLE_TYPE" CASCADE CONSTRAINTS;
DROP TABLE "COMM_ATTACHMENT" CASCADE CONSTRAINTS;
DROP TABLE "POINT_HISTORY" CASCADE CONSTRAINTS;
DROP TABLE "COMM_CATE" CASCADE CONSTRAINTS;
DROP TABLE "COMM_LIKE" CASCADE CONSTRAINTS;
DROP TABLE "ORDER_DETAIL" CASCADE CONSTRAINTS;
DROP TABLE "ZZIM" CASCADE CONSTRAINTS;
DROP TABLE "YESS_LIKED" CASCADE CONSTRAINTS;
DROP TABLE "POINT_PLACE" CASCADE CONSTRAINTS;
DROP TABLE "NEWS_TYPE" CASCADE CONSTRAINTS;
DROP TABLE "QNA_TYPE" CASCADE CONSTRAINTS;
DROP TABLE "REPORT_BOARD_TYPE" CASCADE CONSTRAINTS;
DROP TABLE "MARKET_ATTACHMENT" CASCADE CONSTRAINTS;
DROP TABLE "YESSMALL_REVIEW_ATTACHMENT" CASCADE CONSTRAINTS;
DROP TABLE "RECYCLE_ATTACHMENT" CASCADE CONSTRAINTS;
DROP TABLE "COMM_CMT" CASCADE CONSTRAINTS;
DROP TABLE "COMM_HASHTAG" CASCADE CONSTRAINTS;
DROP TABLE "HASHTAG" CASCADE CONSTRAINTS;

----------------------------------------------------------------------
--Mall
----------------------------------------------------------------------
DROP TABLE "YESSMALL_PROD";

CREATE TABLE "YESSMALL_PROD" (
	"PROD_NO"	NUMBER		NOT NULL,
	"PROD_CATE_NO"	NUMBER		NOT NULL,
	"PROD_NAME"	VARCHAR2(50)		NOT NULL,
	"PROD_INFO"	VARCHAR2(4000)		NOT NULL,
	"PROD_DETAIL"	CLOB		NOT NULL,
	"PROD_PRICE"	NUMBER		NOT NULL,
	"PROD_STOCK"	NUMBER	DEFAULT 100	NOT NULL
);

COMMENT ON COLUMN "YESSMALL_PROD"."PROD_NAME" IS '이름';

COMMENT ON COLUMN "YESSMALL_PROD"."PROD_INFO" IS '제품 소개';

COMMENT ON COLUMN "YESSMALL_PROD"."PROD_DETAIL" IS '제품 상세 소개';

COMMENT ON COLUMN "YESSMALL_PROD"."PROD_PRICE" IS '가격';

COMMENT ON COLUMN "YESSMALL_PROD"."PROD_STOCK" IS '재고 수량';

DROP TABLE "YESSMALL_REVIEW";

CREATE TABLE "YESSMALL_REVIEW" (
	"RV_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"PROD_NO"	NUMBER		NOT NULL,
    "TITLE"     VARCHAR2(300) NOT NULL,
	"CONTENT"	CLOB		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"DELETE_YN"	CHAR(1)	DEFAULT 'N' CHECK(DELETE_YN IN ('Y' , 'N'))	NOT NULL
);

COMMENT ON COLUMN "YESSMALL_REVIEW"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "YESSMALL_REVIEW"."DELETE_YN" IS '삭제여부';

DROP TABLE "YESSMALL_CATEGORY";

CREATE TABLE "YESSMALL_CATEGORY" (
	"PROD_CATE_NO"	NUMBER		NOT NULL,
	"PROD_CATEGORY"	VARCHAR2(15)		NOT NULL
);

COMMENT ON COLUMN "YESSMALL_CATEGORY"."PROD_CATEGORY" IS '상품 분류';

DROP TABLE "YESSMALL_ATTACHMENT";

CREATE TABLE "YESSMALL_ATTACHMENT" (
	"PROD_IMG_NO"	NUMBER		NOT NULL,
	"PROD_NO"	NUMBER		NOT NULL,
	"ORIGIN_NAME"	VARCHAR2(255)		NOT NULL,
	"CHANGE_NAME"	VARCHAR2(255)		NOT NULL,
	"FILE_PATH"	VARCHAR2(1000)		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"THUMB_YN"	CHAR(1)	DEFAULT 'N' CHECK(THUMB_YN IN('N','Y'))	NOT NULL,
	"STATUS"	CHAR(1)	DEFAULT 'O' CHECK(STATUS IN ('O', 'X'))	NOT NULL
);

COMMENT ON COLUMN "YESSMALL_ATTACHMENT"."ORIGIN_NAME" IS '기존 이름';

COMMENT ON COLUMN "YESSMALL_ATTACHMENT"."CHANGE_NAME" IS '변경된 이름';

COMMENT ON COLUMN "YESSMALL_ATTACHMENT"."FILE_PATH" IS '파일 경로';

COMMENT ON COLUMN "YESSMALL_ATTACHMENT"."ENROLL_DATE" IS '등록 일시';

COMMENT ON COLUMN "YESSMALL_ATTACHMENT"."THUMB_YN" IS '썸네일 여부';

COMMENT ON COLUMN "YESSMALL_ATTACHMENT"."STATUS" IS '상태';

DROP TABLE "YESS_LIKED";

CREATE TABLE "YESS_LIKED" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"PROD_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "YESS_LIKED"."MEMBER_NO" IS '회원번호';

DROP TABLE "YESSMALL_REVIEW_ATTACHMENT";

CREATE TABLE "YESSMALL_REVIEW_ATTACHMENT" (
	"RV_FILE_NO"	NUMBER		NOT NULL,
	"RV_NO"	NUMBER		NOT NULL,
	"ORIGIN_NAME"	VARCHAR2(255)		NOT NULL,
	"CHANGE_NAME"	VARCHAR2(255)		NOT NULL,
	"FILE_PATH"	VARCHAR2(1000)		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"THUMB_YN"	CHAR(1)	DEFAULT 'N' CHECK(THUMB_YN IN('N','Y'))	NOT NULL,
	"STATUS"	CHAR(1)	DEFAULT 'O' CHECK(STATUS IN ('O', 'X'))	NOT NULL
);

COMMENT ON COLUMN "YESSMALL_REVIEW_ATTACHMENT"."ORIGIN_NAME" IS '기존이름';

COMMENT ON COLUMN "YESSMALL_REVIEW_ATTACHMENT"."CHANGE_NAME" IS '변경된 이름';

COMMENT ON COLUMN "YESSMALL_REVIEW_ATTACHMENT"."FILE_PATH" IS '파일 경로';

COMMENT ON COLUMN "YESSMALL_REVIEW_ATTACHMENT"."ENROLL_DATE" IS '등록 일시';

COMMENT ON COLUMN "YESSMALL_REVIEW_ATTACHMENT"."THUMB_YN" IS '썸네일 여부';

COMMENT ON COLUMN "YESSMALL_REVIEW_ATTACHMENT"."STATUS" IS '상태';

---------------------------------------------------------------------------------
--결제
---------------------------------------------------------------------------------
DROP TABLE "CART";

CREATE TABLE "CART" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"YESS_MALL_NO"	NUMBER		NOT NULL,
	"CNT"	NUMBER		NOT NULL,
	"PAYMENT_YN"	CHAR(1)	DEFAULT 'N' CHECK(PAYMENT_YN IN ('Y' , 'N'))	NOT NULL,
	"ADD_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL
);

COMMENT ON COLUMN "CART"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "CART"."CNT" IS '수량';

COMMENT ON COLUMN "CART"."PAYMENT_YN" IS '구매여부';

COMMENT ON COLUMN "CART"."ADD_DATE" IS '담은날짜';

DROP TABLE "ORDER";

CREATE TABLE "ORDER" (
	"NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"PLUS_POINT"	NUMBER		NOT NULL,
	"USE_POINT"	NUMBER	DEFAULT 0	NULL,
	"SUM_PRICE"	NUMBER		NOT NULL,
	"CANCEL_YN"	CHAR(1)	DEFAULT 'N' CHECK(CANCEL_YN IN ('Y' , 'N'))	NOT NULL,
	"NAME"	VARCHAR(20)		NULL,
	"ADDRESS"	VARCHAR(100)		NULL,
	"PHONE"	CHAR(13)		NULL
);

COMMENT ON COLUMN "ORDER"."NO" IS '주문번호';

COMMENT ON COLUMN "ORDER"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "ORDER"."PLUS_POINT" IS '적립포인트';

COMMENT ON COLUMN "ORDER"."USE_POINT" IS '사용포인트';

COMMENT ON COLUMN "ORDER"."SUM_PRICE" IS '합산 금액';

COMMENT ON COLUMN "ORDER"."CANCEL_YN" IS '주문상태';

DROP TABLE "PAYMENT";

CREATE TABLE "PAYMENT" (
	"NO"	NUMBER		NOT NULL,
	"ORDER_NO"	NUMBER		NOT NULL,
	"PAYMENT"	VARCHAR2(30)		NOT NULL,
	"PAY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"CANCEL_YN"	CHAR(1)	DEFAULT 'N' CHECK(CANCEL_YN IN ('Y' , 'N'))	NOT NULL,
	"CANCEL_DATE"	TIMESTAMP		NULL
);

COMMENT ON COLUMN "PAYMENT"."NO" IS '결제번호';

COMMENT ON COLUMN "PAYMENT"."ORDER_NO" IS '주문번호';

COMMENT ON COLUMN "PAYMENT"."PAYMENT" IS '결제수단';

COMMENT ON COLUMN "PAYMENT"."PAY_DATE" IS '결제날짜';

COMMENT ON COLUMN "PAYMENT"."CANCEL_YN" IS '취소여부';

COMMENT ON COLUMN "PAYMENT"."CANCEL_DATE" IS '취소날짜';

DROP TABLE "ORDER_DETAIL";

CREATE TABLE "ORDER_DETAIL" (
	"NO"	NUMBER		NOT NULL,
	"YESSMALL_PROD"	NUMBER		NOT NULL,
	"ORDER_NO"	NUMBER		NOT NULL,
	"CNT"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "ORDER_DETAIL"."NO" IS '내역번호';

COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_NO" IS '주문번호';

COMMENT ON COLUMN "ORDER_DETAIL"."CNT" IS '수량';

---------------------------------------------------------------------------------
--시퀀스 등 다른것
---------------------------------------------------------------------------------
DROP SEQUENCE SEQ_CART_NO;
CREATE SEQUENCE SEQ_CART_NO NOCYCLE;
DROP SEQUENCE SEQ_ORDER_NO;
CREATE SEQUENCE SEQ_ORDER_NO NOCYCLE;
DROP SEQUENCE SEQ_PAYMENT_NO;
CREATE SEQUENCE SEQ_PAYMENT_NO NOCYCLE;
DROP SEQUENCE SEQ_YESSMALL_PROD_NO;
CREATE SEQUENCE SEQ_YESSMALL_PROD_NO NOCYCLE;
DROP SEQUENCE SEQ_YESSMALL_REVIEW_NO;
CREATE SEQUENCE SEQ_YESSMALL_REVIEW_NO NOCYCLE;
DROP SEQUENCE SEQ_PROD_CATE_NO;
CREATE SEQUENCE SEQ_PROD_CATE_NO NOCYCLE;
DROP SEQUENCE SEQ_YESSMALL_ATTACHMENT_NO;
CREATE SEQUENCE SEQ_YESSMALL_ATTACHMENT_NO NOCYCLE;
DROP SEQUENCE SEQ_ORDER_DETAIL_NO;
CREATE SEQUENCE SEQ_ORDER_DETAIL_NO NOCYCLE;
DROP SEQUENCE SEQ_YESS_LIKED_NO;
CREATE SEQUENCE SEQ_YESS_LIKED_NO NOCYCLE;
DROP SEQUENCE SEQ_YESSMALL_REVIEW_ATTACHMENT_NO;
CREATE SEQUENCE SEQ_YESSMALL_REVIEW_ATTACHMENT_NO NOCYCLE;
---------------------------------------------------------------------------------
--외래키 등 다른것
---------------------------------------------------------------------------------
ALTER TABLE "ORDER" ADD CONSTRAINT "PK_ORDER" PRIMARY KEY (
	"NO"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "PK_PAYMENT" PRIMARY KEY (
	"NO"
);

ALTER TABLE "YESSMALL_PROD" ADD CONSTRAINT "PK_YESSMALL_PROD" PRIMARY KEY (
	"PROD_NO"
);

ALTER TABLE "YESSMALL_REVIEW" ADD CONSTRAINT "PK_YESSMALL_REVIEW" PRIMARY KEY (
	"RV_NO"
);

ALTER TABLE "YESSMALL_CATEGORY" ADD CONSTRAINT "PK_YESSMALL_CATEGORY" PRIMARY KEY (
	"PROD_CATE_NO"
);

ALTER TABLE "YESSMALL_ATTACHMENT" ADD CONSTRAINT "PK_YESSMALL_ATTACHMENT" PRIMARY KEY (
	"PROD_IMG_NO"
);

ALTER TABLE "ORDER_DETAIL" ADD CONSTRAINT "PK_ORDER_DETAIL" PRIMARY KEY (
	"NO"
);

ALTER TABLE "YESSMALL_REVIEW_ATTACHMENT" ADD CONSTRAINT "PK_YESSMALL_REVIEW_ATTACHMENT" PRIMARY KEY (
	"RV_FILE_NO"
);

ALTER TABLE "CART" ADD CONSTRAINT "FK_MEMBER_TO_CART_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"NO"
);

ALTER TABLE "CART" ADD CONSTRAINT "FK_YESSMALL_PROD_TO_CART_1" FOREIGN KEY (
	"YESS_MALL_NO"
)
REFERENCES "YESSMALL_PROD" (
	"PROD_NO"
);

ALTER TABLE "ORDER" ADD CONSTRAINT "FK_MEMBER_TO_ORDER_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"NO"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_ORDER_TO_PAYMENT_1" FOREIGN KEY (
	"ORDER_NO"
)
REFERENCES "ORDER" (
	"NO"
);

ALTER TABLE "YESSMALL_PROD" ADD CONSTRAINT "FK_YESSMALL_CATEGORY_TO_YESSMALL_PROD_1" FOREIGN KEY (
	"PROD_CATE_NO"
)
REFERENCES "YESSMALL_CATEGORY" (
	"PROD_CATE_NO"
);

ALTER TABLE "YESSMALL_REVIEW" ADD CONSTRAINT "FK_MEMBER_TO_YESSMALL_REVIEW_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"NO"
);

ALTER TABLE "YESSMALL_REVIEW" ADD CONSTRAINT "FK_YESSMALL_PROD_TO_YESSMALL_REVIEW_1" FOREIGN KEY (
	"PROD_NO"
)
REFERENCES "YESSMALL_PROD" (
	"PROD_NO"
);

ALTER TABLE "YESSMALL_ATTACHMENT" ADD CONSTRAINT "FK_YESSMALL_PROD_TO_YESSMALL_ATTACHMENT_1" FOREIGN KEY (
	"PROD_NO"
)
REFERENCES "YESSMALL_PROD" (
	"PROD_NO"
);

);

ALTER TABLE "ORDER_DETAIL" ADD CONSTRAINT "FK_ORDER_TO_ORDER_DETAIL_1" FOREIGN KEY (
	"ORDER_NO"
)
REFERENCES "ORDER" (
	"NO"
);

ALTER TABLE "YESS_LIKED" ADD CONSTRAINT "FK_MEMBER_TO_YESS_LIKED_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"NO"
);

ALTER TABLE "YESS_LIKED" ADD CONSTRAINT "FK_YESSMALL_PROD_TO_YESS_LIKED_1" FOREIGN KEY (
	"PROD_NO"
)
REFERENCES "YESSMALL_PROD" (
	"PROD_NO"
);

ALTER TABLE "YESSMALL_REVIEW_ATTACHMENT" ADD CONSTRAINT "FK_YESSMALL_REVIEW_TO_YESSMALL_REVIEW_ATTACHMENT_1" FOREIGN KEY (
	"RV_NO"
)
REFERENCES "YESSMALL_REVIEW" (
	"RV_NO"
);