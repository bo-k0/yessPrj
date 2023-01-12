package com.kh.yess.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.faq.vo.QnaVo;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MypageQnaDao {

	// qna내역 갯수 조회
	public int qnaListCount(SqlSessionTemplate sst) {
		return sst.selectOne("faqMapper.qnaListCount");
	}

	// qna내역 조회
	public List<QnaVo> qanList(SqlSessionTemplate sst, PageVo pv, MemberVo vo) {
		int offset = (pv.getCurrentPage() - 1) * pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("faqMapper.qnaList", vo, rb);
	}

	//1:1문의 상세조회
	public QnaVo qnaDetail(SqlSessionTemplate sst, int no) {
		return sst.selectOne("faqMapper.qnaDetail", no);
	}
////////////////////////////어드민
	//어드민 모든 글 갯수 조회
	public int adminQnaListCount(SqlSessionTemplate sst) {
		return sst.selectOne("faqMapper.adminQnaListCount");
	}

	//어드민 모든 글 조회
	public List<QnaVo> adminQanList(SqlSessionTemplate sst, PageVo pv) {
		int offset = (pv.getCurrentPage() - 1) * pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("faqMapper.adminQnaList", rb);
	}

	//1:1문의 답변
	public int qnaAnswer(SqlSessionTemplate sst, QnaVo vo) {
		log.debug("[다오]1:1 문의 답변: " + vo.toString());
		return sst.update("faqMapper.qnaAnswer", vo);
	}
}
