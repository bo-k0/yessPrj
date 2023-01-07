package com.kh.yess.member.vo;

import java.sql.Timestamp;

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
	private String addr1;
	private String addr2;
	private String addr3;
	private String email;
	private Timestamp enrollDate;
	private Timestamp modifyDate;
	private char quitYn;
	private int point;
	private int addPoint;
	private Timestamp gradeDate;

}
