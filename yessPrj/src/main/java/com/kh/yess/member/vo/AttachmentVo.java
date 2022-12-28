package com.kh.yess.member.vo;

import lombok.Data;

@Data
public class AttachmentVo {
	
	private int no;
	private int recycleNo;
	private String originName;
	private String changeName;
	private String filePath;
	private String enrollDate;
	private char thumbYn;
	private char status;

}
