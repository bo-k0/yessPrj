package com.kh.yess.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.faq.vo.QnaVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MypageQnaDao {

	// qna내역 갯수 조회
	public int qnaListCount(SqlSessionTemplate sst) {
		return sst.selectOne("faqMapper.qnaListCount");
	}

	// qna내역 조회
	public List<QnaVo> qanList(SqlSessionTemplate sst, PageVo pv, int p) {
		int offset = (pv.getCurrentPage() - 1) * pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("faqMapper.qnaList", p, rb);
	}
}
