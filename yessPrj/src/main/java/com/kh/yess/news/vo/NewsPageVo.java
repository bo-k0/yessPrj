package com.kh.yess.news.vo;

import lombok.Data;

@Data
public class NewsPageVo {
	private String search;
	private int p;
	private String deleteYn;
	private String sort;
	private int typeNo;
}
