package com.kh.yess.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.vo.MarketVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MypageMarketDao {

	// 마켓 내가 쓴 게시글 갯수 조회
	public int myListCount(SqlSessionTemplate sst) {
		return sst.selectOne("marketMapper.myListCount");
	}

	// 마켓 마이페이지 리스트
	public List<MarketVo> myList(SqlSessionTemplate sst, PageVo pv, int p) {
		int offset = (pv.getCurrentPage() - 1) * pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("marketMapper.myList", p, rb);
	}

	// 마켓 내가 쓴 댓글 갯수 조회
	public int myCmtListCount(SqlSessionTemplate sst) {
		return sst.selectOne("marketMapper.myCmtListCount");
	}

	// 마켓 마이페이지 댓글 리스트
	public List<MarketVo> myCmtList(SqlSessionTemplate sst, PageVo pv, int p) {
		int offset = (pv.getCurrentPage() - 1) * pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("marketMapper.myCmtList", p, rb);
	}

}
