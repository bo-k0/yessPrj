package com.kh.yess.market.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.vo.MarketVo;

@Repository
public class MarketDao {

	//마켓 리스트 조회
	public List<MarketVo> list(SqlSessionTemplate sst, PageVo pv) {
		return sst.selectList("marketMapper.list");
	}
	
	//마켓 전체 게시글 갯수 조회
	public int listCount(SqlSessionTemplate sst) {
		return sst.selectOne("marketMapper.listCount");
	}
	
	//마켓 검색

}
