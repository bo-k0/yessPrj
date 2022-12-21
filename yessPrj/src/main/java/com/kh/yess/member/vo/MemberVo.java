package com.kh.yess.member.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVo {

	private int no;
	private int gradeNo;
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String nick;
	private String addr;
	private Date enrollDate;
	private Date modifyDate;
	private char quitYn;
	private int point;
	private int addPoint;
	private Date gradeDate;

}
