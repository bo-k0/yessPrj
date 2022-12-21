package com.kh.yess.news.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.vo.NewsVo;

public interface NewsDao {

	public List<NewsVo> selectNewsFive(SqlSessionTemplate sst);

	public List<NewsVo> selectAreaFive(SqlSessionTemplate sst);

	public List<NewsVo> selectNoticeFive(SqlSessionTemplate sst);

	public List<MemberVo> selectRankMonth(SqlSessionTemplate sst);

	public List<MemberVo> selectRankAll(SqlSessionTemplate sst);

	public NewsVo selectNewsDetail(int no, SqlSessionTemplate sst);

	public int insertNewsOne(SqlSessionTemplate sst, NewsVo vo);

	public int updateNewsOne(SqlSessionTemplate sst, NewsVo vo);

}
