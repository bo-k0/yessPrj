package com.kh.yess.whereTo.service;

import java.util.List;

import com.kh.yess.whereTo.vo.WhereToVo;

public interface WhereToService {

	List<WhereToVo> whereToList();

	WhereToVo whereToOne(int no);

	
}
