package com.kh.yess.community.vo;

import lombok.Data;

@Data
public class BoardAttachmentVo {
	
	private int prodImgNo;
	private int prodNo;
	private String originName;
	private String changeName;
	private String filePath;
	private String enrollDate;
	private char thumbYn;
	private char status;

}
