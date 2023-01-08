package com.kh.yess.mall.vo;

import lombok.Data;

@Data
public class OrderVo {
	
	private int no;
	private int memberNo;
	private int plusPoing;
	private int usePoing;
	private int sumPrice;
	private char cancelYn;
	private String name;
	private String address;
	private String phone;
	private int prodNo;
	private int cnt;
	private int prodPrice;

}
