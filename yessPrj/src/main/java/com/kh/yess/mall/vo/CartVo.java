package com.kh.yess.mall.vo;

import lombok.Data;

@Data
public class CartVo {
	
	private int memberNo;
	private int prodNo;
	private String prodName;
	private int prodPrice;
	private int prodStock;
	private int cnt;
	private char deleteYn;
	private String addDate;

}
