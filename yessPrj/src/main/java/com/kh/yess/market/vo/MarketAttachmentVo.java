package com.kh.yess.market.vo;

import lombok.Data;

@Data
public class MarketAttachmentVo {
	
	private int no;
	private int marketNo;
	private String originName;
	private String changeName;
	private String filePath;
	private String enrollDate;
	private char thumbYn;
	private char status;

}
