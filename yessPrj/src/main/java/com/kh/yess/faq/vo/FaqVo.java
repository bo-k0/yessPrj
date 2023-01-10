package com.kh.yess.faq.vo;

import lombok.Data;

@Data
public class FaqVo {

	private int no;
	private int qnaYypeNo;
	private String qnaType;
	private int adminNo;
	private String title;
	private String content;
	private String enrollDate;
	private char deleteYn;
	private String modifyDate;
	
}
