package com.kh.yess.mall.vo;

import lombok.Data;

@Data
public class ReviewVo {
	
	private int rvNo;
	private int memberNo;
	private int prodNo;
	private String nick;
	private String title;
	private String content;
	private String enrollDate;
	private String modifyDate;
	private char deleteYn;

}
