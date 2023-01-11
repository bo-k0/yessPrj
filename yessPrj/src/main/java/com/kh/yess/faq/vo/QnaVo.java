package com.kh.yess.faq.vo;

import lombok.Data;

@Data
public class QnaVo {

	private int no;
	private int memberNo;
	private int qnaTypeNo;
	private String title;
	private String content;
	private String enrollDate;
	private char deleteYn;
	private String modifyDate;
	private String answer;
	private String answerDate;
	private char answerYn;
	
	private String qnaType;
	
}
