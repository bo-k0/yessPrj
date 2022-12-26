package com.kh.yess.news.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.vo.NewsPageVo;
import com.kh.yess.news.vo.NewsVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class NewsDaoImpl implements NewsDao{

	@Override
	public List<NewsVo> selectNewsFive(SqlSessionTemplate sst) {
		return sst.selectList("newsMapper.selectNewsFive");
	}

	@Override
	public List<NewsVo> selectAreaFive(SqlSessionTemplate sst) {
		return sst.selectList("newsMapper.selectAreaFive");
	}

	@Override
	public List<NewsVo> selectNoticeFive(SqlSessionTemplate sst) {
		return sst.selectList("newsMapper.selectNoticeFive");
	}

	@Override
	public List<MemberVo> selectRankMonth(SqlSessionTemplate sst) {
		return sst.selectList("newsMapper.selectRankMonth");
	}

	@Override
	public List<MemberVo> selectRankAll(SqlSessionTemplate sst) {
		return sst.selectList("newsMapper.selectRankAll");
	}

	@Override
	public NewsVo selectNewsDetail(int no, SqlSessionTemplate sst) {
		return sst.selectOne("newsMapper.selectNewsOne", no);
	}

	@Override
	public int insertNewsOne(SqlSessionTemplate sst, NewsVo vo) {
		return sst.insert("newsMapper.insertOne", vo);
	}

	@Override
	public int updateNewsOne(SqlSessionTemplate sst, NewsVo vo) {
		return sst.insert("newsMapper.updateOne", vo);
	}

	@Override
	public int selectListCnt(SqlSessionTemplate sst, NewsPageVo npvo) {
		
		log.debug("start dao : " + npvo.toString());
		
		int cnt = sst.selectOne("newsMapper.selectListCnt", npvo);
		
		log.debug("cnt : " + cnt);
		return cnt;
	}

	@Override
	public List<NewsVo> selectListAll(SqlSessionTemplate sst, PageVo pv, NewsPageVo npvo) {
		
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);		
		
		log.debug("start dao : " + npvo.toString());
		
		List<NewsVo> list = sst.selectList("newsMapper.selectListAll",npvo, rb);
		
		log.debug("end dao : " + npvo.toString());
		log.debug(list.toString());
		
		return list;
	}	
}
