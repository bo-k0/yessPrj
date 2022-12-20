package com.kh.yess.news.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.vo.NewsVo;

@Repository
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

	
}
