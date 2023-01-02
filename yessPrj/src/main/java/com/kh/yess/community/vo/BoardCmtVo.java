package com.kh.yess.community.vo;

import lombok.Data;

@Data
public class BoardCmtVo {
	
	private String commNo;
	private String postNo;
	private String writer;
	private String cmt;
	private String enrollDate;
	private String modifyDate;
	private String deleteYn;
	private String reportYn;

}
