package com.kh.yess.market.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MarketVo {

	private int no;
	private int memberNo;
	private String title;
	private int marketTypeNo;
	private String objectName;
	private String objectInfo;
	private String tradeMethod;
	private String objectPs;
	private Timestamp enrollDate;
	private char deleteYn;
	private Timestamp modifyDate;
	private int hit;
	private char tradeYn;
}
