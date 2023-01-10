package com.kh.yess.mall.vo;

import lombok.Data;

@Data
public class PayVo {

	private int no;
	private int orderNo;
	private String payment;
	private String payDate;
	private char cancelYn;
	private String cancelDate;
}
