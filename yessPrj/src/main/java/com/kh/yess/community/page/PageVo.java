package com.kh.yess.community.page;

import lombok.Data;

@Data
public class PageVo {

	private int listCount;		//한 페이지에 보이는 글 갯수에 따라 결정되는 페이지 갯수
	private int currentPage; 	//현재페이지
	private int pageLimit;		//한 페이지에서 보이는 페이지 갯수
	private int boardLimit;		//한 페이지에서 보이는 글 갯수
	
	private int maxPage;		//맨마지막최대페이지
	private int startPage;		//현재페이지에서 보이는 시작페이지 숫자
	private int endPage;		//현재페이지에서 보이는 마지막페이지 숫자
	
}
