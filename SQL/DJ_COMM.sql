DROP TABLE "COMM" CASCADE CONSTRAINTS;
DROP TABLE "COMM_ATTACHMENT" CASCADE CONSTRAINTS;
DROP TABLE "COMM_TYPE" CASCADE CONSTRAINTS;
DROP TABLE "COMM_LIKE" CASCADE CONSTRAINTS;
DROP TABLE "COMM_CMT" CASCADE CONSTRAINTS;
DROP TABLE "COMM_HASHTAG" CASCADE CONSTRAINTS;
DROP TABLE "HASHTAG" CASCADE CONSTRAINTS;

CREATE TABLE "COMM" (
	"NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"COMMUNITY_TYPE_NO"	NUMBER		NOT NULL,
	"TITLE"	VARCHAR2(1000)		NOT NULL,
	"CONTENT"	VARCHAR2(4000)		NOT NULL,
	"ENROLL_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"DELETE_YN"	CHAR(1)	DEFAULT 'N' CHECK(DELETE_YN IN ('Y' , 'N'))	NOT NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"HIT"	NUMBER	DEFAULT 0	NOT NULL,
	"PICK_YN"	CHAR(1)	DEFAULT 'N' CHECK(PICK_YN IN ('Y' , 'N'))	NOT NULL	
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
	"THUMB_YN"	CHAR(1)	DEFAULT 'N' CHECK(THUMB_YN IN('N', 'Y'))	NOT NULL,
	"STATUS"	CHAR(1)	DEFAULT 'O' CHECK(STATUS IN ('O', 'X'))	NOT NULL
);


COMMENT ON COLUMN "COMM_ATTACHMENT"."COMM_NO" IS '글번호';

CREATE TABLE "COMM_TYPE" (
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
	"NO"	NUMBER		NOT NULL,
	"COMMUNITY_NO"	NUMBER		NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"CMT"	VARCHAR2(300)		NOT NULL,
	"CMT_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	"DELETE_YN"	CHAR(1)	DEFAULT 'N' CHECK(DELETE_YN IN ('Y' , 'N'))	NOT NULL,
	"MODIFY_DATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL
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

COMMENT ON COLUMN "COMM_HASHTAG"."NO" IS '글번호';


CREATE TABLE "HASHTAG" (
	"HASHTAG_NO"	NUMBER		NOT NULL,
	"NAME"	VARCHAR2(255)		NOT NULL
);


-------------------------------------------------------------------------------
--SEQUENCE---------------------------------------------------------------------
-------------------------------------------------------------------------------
DROP SEQUENCE SEQ_COMM_NO;
DROP SEQUENCE SEQ_HASHTAG_NO;
DROP SEQUENCE SEQ_COMM_ATTACHMENT_NO;
DROP SEQUENCE SEQ_COMM_CMT_NO;

CREATE SEQUENCE SEQ_COMM_NO NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_HASHTAG_NO NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_COMM_ATTACHMENT_NO NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_COMM_CMT_NO NOCACHE NOCYCLE;

-------------------------------------------------------------------------------
--ALTER------------------------------------------------------------------------
-------------------------------------------------------------------------------
ALTER TABLE "COMM_ATTACHMENT" ADD CONSTRAINT "PK_COMM_ATTACHMENT" PRIMARY KEY (
	"NO"
);

ALTER TABLE "COMM_TYPE" ADD CONSTRAINT "PK_COMM_TYPE" PRIMARY KEY (
	"NO"
);

ALTER TABLE "COMM_CMT" ADD CONSTRAINT "PK_COMM_CMT" PRIMARY KEY (
	"NO"
);

ALTER TABLE "HASHTAG" ADD CONSTRAINT "PK_HASHTAG" PRIMARY KEY (
	"HASHTAG_NO"
);

ALTER TABLE "COMM" ADD CONSTRAINT "FK_MEMBER_TO_COMM_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"NO"
);

ALTER TABLE "COMM" ADD CONSTRAINT "FK_COMM_TYPE_TO_COMM_1" FOREIGN KEY (
	"COMMUNITY_TYPE_NO"
)
REFERENCES "COMM_TYPE" (
	"NO"
);

ALTER TABLE "COMM_ATTACHMENT" ADD CONSTRAINT "FK_COMM_TO_COMM_ATTACHMENT_1" FOREIGN KEY (
	"COMMUNITY_NO"
)
REFERENCES "COMM" (
	"NO"
);
ALTER TABLE "COMM_LIKE" ADD CONSTRAINT "FK_COMM_TO_COMM_LIKE_1" FOREIGN KEY (
	"COMMUNITY_NO"
)
REFERENCES "COMM" (
	"NO"
);

ALTER TABLE "COMM_LIKE" ADD CONSTRAINT "FK_MEMBER_TO_COMM_LIKE_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"NO"
);

ALTER TABLE "COMM_CMT" ADD CONSTRAINT "FK_COMM_TO_COMM_CMT_1" FOREIGN KEY (
	"COMMUNITY_NO"
)
REFERENCES "COMM" (
	"NO"
);

ALTER TABLE "COMM_CMT" ADD CONSTRAINT "FK_MEMBER_TO_COMM_CMT_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"NO"
);

ALTER TABLE "COMM_HASHTAG" ADD CONSTRAINT "FK_COMM_TO_COMM_HASHTAG_1" FOREIGN KEY (
	"NO"
)
REFERENCES "COMM" (
	"NO"
);

ALTER TABLE "COMM_HASHTAG" ADD CONSTRAINT "FK_HASHTAG_TO_COMM_HASHTAG_1" FOREIGN KEY (
	"HASHTAG_NO"
)
REFERENCES "HASHTAG" (
	"HASHTAG_NO"
);
-------------------------------------------------------------------------------
--INSERT-----------------------------------------------------------------------
-------------------------------------------------------------------------------

INSERT INTO COMM VALUES(SEQ_COMM_NO.NEXTVAL, 1, 1, '분리수거 정보 공유합니다~', '좋아요 많이 눌러주시면 다음 편에 쓰겠습니다^_~', SYSDATE, 'N', SYSDATE, '100', 'N');

INSERT INTO COMM_ATTACHMENT VALUES(SEQ_COMM_ATTACHMENT_NO.NEXTVAL, 1, 'hi.png', 'hello.png', 'upload/img', SYSDATE, 'N', 'O' );

INSERT INTO COMM_TYPE VALUES(1, '정보게시판');
INSERT INTO COMM_TYPE VALUES(2, '문의게시판');
INSERT INTO COMM_TYPE VALUES(3, '잡담게시판');
INSERT INTO COMM_TYPE VALUES(4, '사진게시판');

INSERT INTO COMM_LIKE VALUES(1,3);

INSERT INTO COMM_CMT VALUES(1, 3, 4, '우와~ 최고에요!', SYSDATE, 'N', SYSDATE);

INSERT INTO COMM_HASHTAG VALUES(1, 4);

INSERT INTO HASHTAG VALUES(SEQ_HASHTAG_NO.NEXTVAL, '분리수거');
