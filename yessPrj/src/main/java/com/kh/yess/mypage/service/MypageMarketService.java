package com.kh.yess.mypage.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.vo.MarketVo;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.mypage.dao.MypageMarketDao;

@Service
public class MypageMarketService {
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MypageMarketDao dao;

	// 마켓 내가 쓴 게시글 갯수 조회
	public int myListCount(MemberVo vo) {
		return dao.myListCount(sst);
	}

	// 마켓 마이페이지 리스트
	public List<MarketVo> myList(PageVo pv, int p) {
		return dao.myList(sst, pv, p);
	}

}
