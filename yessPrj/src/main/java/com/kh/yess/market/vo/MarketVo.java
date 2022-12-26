package com.kh.yess.market.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MarketVo {

	private int no;
	private String nick; //private int memberNo;
	private String title;
	private String marketType; //int marketTypeNo;
	private String objectName;
	private String objectInfo;
	private String tradeMethod;
	private String objectPs;
	private String enrollDate;
	private char deleteYn;
	private String modifyDate;
	private int hit;
	private String tradeYn;
}
