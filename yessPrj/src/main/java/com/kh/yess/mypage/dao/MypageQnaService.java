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
	public List<QnaVo> qnaList(PageVo pv, MemberVo vo) {
		return dao.qanList(sst, pv, vo);
	}

	//1:1문의 상세조회
	public QnaVo qnaDetail(int no) {
		QnaVo vo = dao.qnaDetail(sst, no);
		return vo;
	}
//////////어드민
	
	
	//어드민 모든 글 갯수 조회
	public int adminQnaListCount() {
		return dao.adminQnaListCount(sst);
	}
	
	//어드민 모든글 조회
	public List<QnaVo> adminQnaList(PageVo pv) {
		return dao.adminQanList(sst, pv);
	}

	
	//1:1문의 답변
	public int qnaAnswer(QnaVo vo) {
		log.debug("[서비스]1:1 문의 답변: " + vo.toString());
		return dao.qnaAnswer(sst, vo);
	}


	
	
}
