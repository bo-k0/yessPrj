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
	
	public String name;
	public String nick;
	//public String gName; 나중에 회원 등급 조인해서 이름 넣기
	

}
