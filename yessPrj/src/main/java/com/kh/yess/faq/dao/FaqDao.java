package com.kh.yess.faq.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.faq.vo.FaqVo;
import com.kh.yess.faq.vo.QnaVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class FaqDao {

	//faq 리스트
	public List<FaqVo> faqList(SqlSessionTemplate sst, int typeNo) {
		return sst.selectList("faqMapper.faqList", typeNo);
	}

	//faq 등록
	public int faqWrite(SqlSessionTemplate sst, FaqVo vo) {
		log.debug("[다오] faq 등록 : " + vo.toString());
		return sst.insert("faqMapper.faqWrite", vo);
	}

	//1:1 문의 (회원)
	public int qnaWrite(SqlSessionTemplate sst, QnaVo vo) {
		return sst.insert("faqMapper.qnaWrite", vo);
	}

	//1:1문의내역 갯수 조회
	public int qnaListCount(SqlSessionTemplate sst) {
		return sst.selectOne("faqMapper.qnaListCount");
	}

	// 1:1문의내역 리스트 조회
	public List<QnaVo> qnaList(SqlSessionTemplate sst, PageVo pv, int p) {
		int offset = (pv.getCurrentPage() - 1) * pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("faqMapper.qnaList", p, rb);
	}

}
