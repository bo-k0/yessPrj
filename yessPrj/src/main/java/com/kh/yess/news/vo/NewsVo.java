package com.kh.yess.news.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NewsVo {
	private int no;
	private int adminNo;
	private int newsTypeNo;
	private String title;
	private String content;
	private Timestamp enrollDate;
	private String deleteYn;
	private Timestamp modifyDate;	
	private int listNo;
}
