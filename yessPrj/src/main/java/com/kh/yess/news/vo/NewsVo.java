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
	private char deleteYn;
	private Timestamp modifyDate;		
}
