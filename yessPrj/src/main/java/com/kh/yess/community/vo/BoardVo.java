package com.kh.yess.community.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardVo {
	
	public int no;
	public int memberNo;
	public int communityTypeNo;
	public String title;
	public String content;
	public Timestamp enrollDate;
	public char deleteYn;
	public Timestamp modifyDate;
	public int hit;
	public char pickYn;
	
}
