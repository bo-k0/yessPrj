package com.kh.yess.faq.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.faq.dao.FaqDao;
import com.kh.yess.faq.vo.FaqVo;
import com.kh.yess.faq.vo.QnaVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class FaqService {
	
	@Autowired
	private SqlSessionTemplate sst;
	@Autowired
	private FaqDao dao;

	//faq 리스트
	public List<FaqVo> faqList(int typeNo) {
		return dao.faqList(sst, typeNo);
	}

	//faq 등록 (관리자)
	public int faqWrite(FaqVo vo) {
		log.debug("[서비스] faq 등록 : " + vo.toString());
		return dao.faqWrite(sst, vo);
	}

	//1:1 문의 (회원)
	public int qnaWrite(QnaVo vo) {
		log.debug("[서비스] 1:1 문의 " + vo.toString());
		return dao.qnaWrite(sst, vo);
	}

	//1:1문의내역 갯수 조회
	public int qnaListCount(QnaVo qvo) {
		return dao.qnaListCount(sst);
	}

	// 1:1문의내역 리스트 조회
	public List<QnaVo> qnaList(PageVo pv, int p) {
		return dao.qnaList(sst, pv, p);
	}

}
