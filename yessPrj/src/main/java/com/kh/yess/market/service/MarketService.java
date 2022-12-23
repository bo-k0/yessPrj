package com.kh.yess.market.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.dao.MarketDao;
import com.kh.yess.market.vo.MarketVo;

@Service
public class MarketService {
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired 
	private MarketDao dao;

	//마켓 리스트 조회
	public List<MarketVo> list(PageVo pv) {
		return dao.list(sst, pv);
	}
	
	//마켓 전체 게시글 갯수 조회
	public int listCount() {
		return dao.listCount(sst);
	}

	//마켓 검색
}