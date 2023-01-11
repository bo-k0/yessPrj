package com.kh.yess.mall.vo;

import lombok.Data;

@Data
public class OrderVo {
	
	private int no;
	private int memberNo;
	private int plusPoint;
	private int usePoint;
	private int sumPrice;
	private char cancelYn;
	private String name;
	private String addr1;
	private String addr2;
	private String addr3;
	private String phone;
	private int prodNo;
	private String prodName;
	private String changeName;
	private int cnt;
	private int prodPrice;
	
	private int orderNo;
	private String payment;
	private String payDate;
	private String cancelDate;
}
