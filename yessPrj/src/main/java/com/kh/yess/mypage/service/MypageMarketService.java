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

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j

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
		//log.info("[서비스]마이페이지 마켓 글pv : " + pv);
		return dao.myList(sst, pv, p);
	}

	// 마켓 내가 쓴 댓글 갯수 조회
	public int myCmtListCount(MemberVo vo) {
		return dao.myCmtListCount(sst);
	}
	
	// 마켓 마이페이지 댓글 리스트
	public List<MarketVo> myCmtList(PageVo pv, int p) {
		//log.info("[서비스]마이페이지 마켓 댓글pv : " + pv);
		return dao.myCmtList(sst, pv, p);
	}
	


}
