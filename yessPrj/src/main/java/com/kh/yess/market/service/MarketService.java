package com.kh.yess.market.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.dao.MarketDao;
import com.kh.yess.market.vo.MarketVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MarketService {
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired 
	private MarketDao dao;

	//마켓 리스트 조회
	public List<MarketVo> list(Map<String , String> map, PageVo pv) {
		log.info("서비스에서 받은 map" + map);
		return dao.list(sst, map, pv);
	}
	
	//마켓 전체 게시글 갯수 조회
	public int listCount() {
		return dao.listCount(sst);
	}

	//마켓 검색
}