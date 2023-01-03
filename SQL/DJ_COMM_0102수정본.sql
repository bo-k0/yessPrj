--------------------------------------------------------------------------
--COMMUNITY 구문--------------------------------------------------------------
--------------------------------------------------------------------------
DROP TABLE "COMM" CASCADE CONSTRAINTS;
DROP TABLE "COMM_ATTACHMENT" CASCADE CONSTRAINTS;
DROP TABLE "COMM_CATE" CASCADE CONSTRAINTS;
DROP TABLE "COMM_LIKE" CASCADE CONSTRAINTS;
DROP TABLE "COMM_CMT" CASCADE CONSTRAINTS;
DROP TABLE "COMM_HASHTAG" CASCADE CONSTRAINTS;
DROP TABLE "HASHTAG" CASCADE CONSTRAINTS;

CREATE TABLE "COMM" (
	"NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"CATEGORY"	NUMBER		NOT NULL,
	"TITLE"	VARCHAR2(1000)		NOT NULL,
	"CONTENT"	CLOB		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"DELETE_YN"	CHAR(1)	DEFAULT 'N' CHECK(DELETE_YN IN ('Y' , 'N'))	NOT NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"HIT"	NUMBER	DEFAULT 0	NOT NULL,
	"PICK_YN"	CHAR(1)	DEFAULT 'N' CHECK(PICK_YN IN ('Y' , 'N'))	NOT NULL,
    "LIKE_CNT" NUMBER DEFAULT 0 NOT NULL,
    "HASHTAG" VARCHAR2(4000) NULL,
    "REPORT_YN" CHAR(1)	DEFAULT 'N' CHECK(REPORT_YN IN ('Y' , 'N'))	NOT NULL
);

COMMENT ON COLUMN "COMM"."NO" IS '글번호';

COMMENT ON COLUMN "COMM"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "COMM"."TITLE" IS '글제목';

COMMENT ON COLUMN "COMM"."CONTENT" IS '글내용';

COMMENT ON COLUMN "COMM"."ENROLL_DATE" IS '작성일시';

COMMENT ON COLUMN "COMM"."DELETE_YN" IS '삭제여부';

COMMENT ON COLUMN "COMM"."MODIFY_DATE" IS '최종수정일시';

CREATE TABLE "COMM_ATTACHMENT" (
	"NO"	NUMBER		NOT NULL,
	"COMM_NO"	NUMBER		NOT NULL,
	"ORIGIN_NAME"	VARCHAR2(255)		NOT NULL,
	"CHANGE_NAME"	VARCHAR2(255)		NOT NULL,
	"FILE_PATH"	VARCHAR2(1000)		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"THUMB_YN"	CHAR(1)	DEFAULT 'Y' CHECK(THUMB_YN IN('N', 'Y'))	NOT NULL,
	"STATUS"	CHAR(1)	DEFAULT 'O' CHECK(STATUS IN ('O', 'X'))	NOT NULL
);


COMMENT ON COLUMN "COMM_ATTACHMENT"."COMM_NO" IS '글번호';

CREATE TABLE "COMM_CATE" (
	"NO"	NUMBER		NOT NULL,
	"NAME"	VARCHAR2(255)		NULL
);


CREATE TABLE "COMM_LIKE" (
	"COMMUNITY_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "COMM_LIKE"."COMMUNITY_NO" IS '글번호';

COMMENT ON COLUMN "COMM_LIKE"."MEMBER_NO" IS '회원번호';


CREATE TABLE "COMM_CMT" (
	"COMM_NO"	NUMBER		NOT NULL,
	"POST_NO"	NUMBER		NOT NULL,
	"WRITER"	NUMBER		NOT NULL,
	"CMT"	VARCHAR2(1000)		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"DELETE_YN"	CHAR(1)	DEFAULT 'N' CHECK(DELETE_YN IN ('Y' , 'N'))	NOT NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"REPORT_YN"	CHAR(1)	DEFAULT 'N' CHECK(REPORT_YN IN ('Y' , 'N'))	NOT NULL
);

COMMENT ON COLUMN "COMM_CMT"."NO" IS '자유게시판 댓글 번호';

COMMENT ON COLUMN "COMM_CMT"."COMMUNITY_NO" IS '글번호';

COMMENT ON COLUMN "COMM_CMT"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "COMM_CMT"."CMT" IS '댓글 내용';

COMMENT ON COLUMN "COMM_CMT"."CMT_DATE" IS '작성 날짜';

COMMENT ON COLUMN "COMM_CMT"."DELETE_YN" IS '삭제 여부';

COMMENT ON COLUMN "COMM_CMT"."MODIFY_DATE" IS '최종 수정 일시';


CREATE TABLE "COMM_HASHTAG" (
	"NO"	NUMBER		NOT NULL,
	"HASHTAG_NO"	NUMBER		NOT NULL
);


CREATE TABLE "HASHTAG" (
	"HASHTAG_NO"	NUMBER		NOT NULL,
	"NAME"	VARCHAR2(255)		NOT NULL
);


-------------------------------------------------------------------------------
--SEQUENCE---------------------------------------------------------------------
-------------------------------------------------------------------------------
DROP SEQUENCE SEQ_COMM_NO;
DROP SEQUENCE SEQ_COMM_ATTACHMENT_NO;
DROP SEQUENCE SEQ_COMM_CMT_NO;

CREATE SEQUENCE SEQ_COMM_NO NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_COMM_ATTACHMENT_NO NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_COMM_CMT_NO NOCACHE NOCYCLE;

-------------------------------------------------------------------------------
--ALTER------------------------------------------------------------------------
-------------------------------------------------------------------------------
ALTER TABLE "COMM" ADD CONSTRAINT "PK_COMM" PRIMARY KEY (
	"NO"
);

ALTER TABLE "COMM_ATTACHMENT" ADD CONSTRAINT "PK_COMM_ATTACHMENT" PRIMARY KEY (
	"NO"
);

ALTER TABLE "COMM_CATE" ADD CONSTRAINT "PK_COMM_CATE" PRIMARY KEY (
	"NO"
);


ALTER TABLE "COMM_CMT" ADD CONSTRAINT "PK_COMM_CMT" PRIMARY KEY (
	"NO"
);

ALTER TABLE "HASHTAG" ADD CONSTRAINT "PK_HASHTAG" PRIMARY KEY (
	"HASHTAG_NO"
);




-------------------------------------------------------------------------------
--INSERT-----------------------------------------------------------------------
-------------------------------------------------------------------------------
INSERT INTO MEMBER VALUES(77, 2, 'user77', '1234', '손흥민', '손흥민', '01022223333', 'sonny@gmail.com', '우리집', SYSDATE, SYSDATE, 'N', 100, 0, SYSDATE);

INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 1, '분리수거 정보 공유합니다~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 2, '분리수거 관련 문의합니다!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 3, '예쓰 덕분에 분리수거가 쉬워요~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 1, '분리수거 정보 공유합니다~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 2, '분리수거 관련 문의합니다!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 3, '예쓰 덕분에 분리수거가 쉬워요~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 1, '분리수거 정보 공유합니다~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 2, '분리수거 관련 문의합니다!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 3, '예쓰 덕분에 분리수거가 쉬워요~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 1, '분리수거 정보 공유합니다~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 2, '분리수거 관련 문의합니다!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 77, 3, '예쓰 덕분에 분리수거가 쉬워요~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');

INSERT INTO MEMBER VALUES(55, 2, 'moon108101', '1234', '피글렛', '피글렛', '01022223333', 'piglet@gmail.com', '우리집', SYSDATE, SYSDATE, 'N', 100, 0, SYSDATE);

INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 1, '꿀팁 공유해요!!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 2, '이거는 어떻게 처리하죠?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 3, '오늘도 예쓰에 들어왔어요!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 1, '꿀팁 공유해요!!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 2, '이거는 어떻게 처리하죠?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 3, '오늘도 예쓰에 들어왔어요!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 1, '꿀팁 공유해요!!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 2, '이거는 어떻게 처리하죠?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 3, '오늘도 예쓰에 들어왔어요!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 1, '꿀팁 공유해요!!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 2, '이거는 어떻게 처리하죠?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 55, 3, '오늘도 예쓰에 들어왔어요!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');

INSERT INTO MEMBER VALUES(777, 2, 'user777', '1234', '예쓰좋아', '예쓰좋아', '01022223333', 'yessjoah@gmail.com', '우리집', SYSDATE, SYSDATE, 'N', 100, 0, SYSDATE);

INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 1, '좋은 정보 많이 얻을 수 있어서 좋아요!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 2, '파인애플은 어떻게 버릴까요?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 3, '라벨프리 제품들이 많네요 ㅎㅎ', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 1, '좋은 정보 많이 얻을 수 있어서 좋아요!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 2, '파인애플은 어떻게 버릴까요?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 3, '라벨프리 제품들이 많네요 ㅎㅎ', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 1, '좋은 정보 많이 얻을 수 있어서 좋아요!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 2, '파인애플은 어떻게 버릴까요?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 3, '라벨프리 제품들이 많네요 ㅎㅎ', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 1, '좋은 정보 많이 얻을 수 있어서 좋아요!', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 2, '파인애플은 어떻게 버릴까요?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 777, 3, '라벨프리 제품들이 많네요 ㅎㅎ', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');

INSERT INTO MEMBER VALUES(555, 2, 'user555', '1234', '지구수비대', '지구수비대', '01022223333', 'ilyearth@gmail.com', '우리집', SYSDATE, SYSDATE, 'N', 100, 0, SYSDATE);

INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 1, '정말 좋은 특급 꿀팁 알려드려요^_^', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 2, '배달음식 용기가 분리수거하기 어려운 것 같아요', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 3, '저보다 게시글 많이 쓴 사람이 있을까요?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 1, '정말 좋은 특급 꿀팁 알려드려요^_^', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 2, '배달음식 용기가 분리수거하기 어려운 것 같아요', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 3, '저보다 게시글 많이 쓴 사람이 있을까요?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 1, '정말 좋은 특급 꿀팁 알려드려요^_^', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 2, '배달음식 용기가 분리수거하기 어려운 것 같아요', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 3, '저보다 게시글 많이 쓴 사람이 있을까요?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 1, '정말 좋은 특급 꿀팁 알려드려요^_^', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 2, '배달음식 용기가 분리수거하기 어려운 것 같아요', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');
INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 555, 3, '저보다 게시글 많이 쓴 사람이 있을까요?', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, 0, 'N', 20 ,'해시태그', 'N');

COMMIT;

INSERT INTO COMM_CATE VALUES(1, '정보게시판');
INSERT INTO COMM_CATE VALUES(2, '문의게시판');
INSERT INTO COMM_CATE VALUES(3, '잡담게시판');
INSERT INTO COMM_CATE VALUES(4, '사진게시판');

COMMIT;