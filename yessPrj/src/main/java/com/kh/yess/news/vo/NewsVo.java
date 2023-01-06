package com.kh.yess.news.vo;

import lombok.Data;

@Data
public class NewsVo {
	private int no;
	private int adminNo;
	private int newsTypeNo;
	private String title;
	private String content;
	private String enrollDate;
	private String deleteYn;
	private String modifyDate;	
	private int listNo;
	private int placeNo;
	private String name;
	private String address;
	private String addrDetail;
}
