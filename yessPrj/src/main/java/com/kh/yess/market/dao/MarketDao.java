package com.kh.yess.market.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.vo.MarketVo;

@Repository
public class MarketDao {

	// 마켓 리스트 조회
	public List<MarketVo> list(SqlSessionTemplate sst, PageVo pv) {
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
	      int limit = pv.getBoardLimit();
	      RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("marketMapper.list", null, rb);
	}

	// 마켓 전체 게시글 갯수 조회
	public int listCount(SqlSessionTemplate sst) {
		return sst.selectOne("marketMapper.listCount");
	}

	// 마켓 검색
}
