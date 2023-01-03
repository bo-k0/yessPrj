package com.kh.yess.market.vo;

import lombok.Data;

@Data
public class MarketCmtVo {

	private int no;
	private int membeNo;
	private String nick;
	private int markeNo;
	private String cmt;
	private String cmtDate;
	private char deleteYn;
	private String modifyDate;
	private char secretYn;
	
	private int cmtCnt;
}
