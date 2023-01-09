package com.kh.yess.market.vo;

import lombok.Data;

@Data
public class MarketCmtVo {

	private int no;
	private int memberNo;
	private String nick;
	private int marketNo;
	private String cmt;
	private String cmtDate;
	private char deleteYn;
	private String modifyDate;
	private String secretYn;
	
	private int cmtCnt;
}
