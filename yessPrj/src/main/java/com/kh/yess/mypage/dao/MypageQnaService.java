package com.kh.yess.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.faq.vo.QnaVo;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.mypage.service.MypageMarketService;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MypageQnaService {

	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MypageQnaDao dao;
	
	// qna내역 갯수 조회
	public int qnaListCount(MemberVo vo) {
		return dao.qnaListCount(sst);
	}

	// qna내역 조회
	public List<QnaVo> qnaList(PageVo pv, int p) {
		return dao.qanList(sst, pv, p);
	}
	
}
