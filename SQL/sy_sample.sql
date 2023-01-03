


--------------------------------------------
--카테고리 인서트문
--------------------------------------------
INSERT INTO YESSMALL_CATEGORY VALUES(1, '생활용품');
INSERT INTO YESSMALL_CATEGORY VALUES(2, '주방용품');
INSERT INTO YESSMALL_CATEGORY VALUES(3, '욕실용품');
INSERT INTO YESSMALL_CATEGORY VALUES(4, '일회용품');
INSERT INTO YESSMALL_CATEGORY VALUES(5, '패션잡화');


----------------------------------------------------------------
--예스몰 제품 더미데이터
----------------------------------------------------------------
--INSERT INTO YESSMALL_PROD VALUES(시퀀스,카테고리,제품명,제품소개,제품상세소개, 가격,재고수량);
--INSERT INTO YESSMALL_PROD VALUES(시퀀스,카테고리,제품명,제품소개,제품상세소개, 가격,재고수량);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,3,'친환경 양치세트','친환경 재료로 만든 양치세트','깨끗한 치아를 위한 친환경 양치세트.<br><br><br> 구성 : 대나무 칫솔 2개, 치약 1개<br><br> 1. 대나무 칫솔<br> 크기 : 18cm <br> 특징 : 플라스틱 칫솔의 대체품으로, 환경호르몬 및 유해물질로부터 안전한 친환경 칫솔입니다.<br><br> 2. 고체치약 : 30정<br><br> 3. 목제 혀클리너 <br><br> 4. 린넨 파우치<br>', 10000, 200,DEFAULT);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,1,'리유저블 텀블러','무색의 깔끔한 텀블러','무색으로 깔끔한 느낌의 텀블러. <br><br>유행을 타지 않아 오래 쓸 수 있는 텀블러입니다. 일회용 컵 사용을 줄이기 위한 최선의 선택, 텀블러.', 13000,300,DEFAULT);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,2,'대나무 칫솔','대나무로 만든 친환경 칫솔','대나무로 제작한 친환경 칫솔로, 사용 후 재활용까지 고려한 제품입니다.<br><br> 크기 : 18cm <br> 4개입<br>',7000 ,500,DEFAULT);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,4,'어린이 양치컵세트','어린이 양치세트','어린이를 위한 친환경 양치세트.<br><br><br> 구성 : 대나무 칫솔 1개, 어린이용 양치컵 1개<br><br> 1. 어린이용 칫솔<br> 크기 : 15cm <br> 특징 : 플라스틱 칫솔의 대체품으로, 환경호르몬 및 유해물질로부터 안전한 친환경 칫솔입니다.<br><br> 2. 어린이용 양치컵<br> 어린이가 쓰기 좋은 미니 양치컵<br><br>', 12000, 300,DEFAULT);
INSERT INTO YESSMALL_PROD VALUES(SEQ_YESSMALL_PROD_NO.NEXTVAL,5,'에코백','깔끔한 에코백','깔끔한 느낌의 베이지 컬러의 에코백. <br><br>유행을 타지 않아 오래 쓸 수 있는 패션 에코백입니다.', 13000,300,DEFAULT);


--------------------------------------------------------------------------
--상품별 사진 더미데이터
--------------------------------------------------------------------------
--INSERT INTO YESSMALL_ATTACHMENT VALUES(시퀀스,제품번호,originName,changeName,파일경로, 등록일,썸네일여부, 상태);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,1,'image 113.png','img719655460995000.gif','resources/upload/mall', SYSDATE,'Y', default);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,1,'image 03.png','img707011753088300.gif','resources/upload/mall', SYSDATE,'N', default);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,2,'image 13.png','img24517754667300.png','resources/upload/mall', SYSDATE,'Y', default);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,3,'image 3.png','img24517760220800.png','resources/upload/mall', SYSDATE,'Y', default);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,3,'image 11.png','img24517760220800.png','resources/upload/mall', SYSDATE,'N', default);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,4,'image 1.png','img6644593635500.png','resources/upload/mall', SYSDATE,'Y', default);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,4,'image 55.png','img6644596978000.png','resources/upload/mall', SYSDATE,'N', default);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,5,'image 63.png','img25775141889000.jpg','resources/upload/mall', SYSDATE,'Y', default);
INSERT INTO YESSMALL_ATTACHMENT VALUES(SEQ_YESSMALL_ATTACHMENT_NO.NEXTVAL,5,'image 78.png','img25775137340800.png','resources/upload/mall', SYSDATE,'N', default);
-------------------------------------------------------------------------------------------------
--리뷰 제품 더미데이터 (제품당 기본 5개 이상, 인기제품은 50개 이상)
--------------------------------------------------------------------------------------------------
--INSERT INTO YESSMALL_REVIEW VALUES(시퀀스,회원번호,제품번호,내용, 등록일,수정일, 삭제여부);

INSERT INTO YESSMALL_REVIEW VALUES(시퀀스,회원번호,제품번호,내용, 등록일,수정일, default);


--------------------------------------------------------------------------
--
--------------------------------------------------------------------------
commit;