package com.kh.yess.mall.vo;

import lombok.Data;

@Data
public class CartVo {
	
	private int memberNo;
	private int prodNo;
	private int cnt;
	private char paymentYn;
	private String addDate;

}
