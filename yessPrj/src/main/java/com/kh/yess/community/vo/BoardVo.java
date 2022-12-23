package com.kh.yess.community.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVo {
	
	public String no;
	public String memberNo;
	public String category;
	public String title;
	public String content;
	public Date enrollDate;
	public String deleteYn;
	public String modifyDate;
	public String hit;
	public String pickYn;
	
//	public int no;
//	public int memberNo;
//	public int communityTypeNo;
//	public String title;
//	public String content;
//	public Timestamp enrollDate;
//	public char deleteYn;
//	public Timestamp modifyDate;
//	public int hit;
//	public char pickYn;
	
}
