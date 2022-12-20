package com.kh.yess.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.dao.NewsDao;
import com.kh.yess.news.vo.NewsVo;

@Service
public class NewsServiceImpl implements NewsService{
	
	@Autowired
	private SqlSessionTemplate sst;

	@Autowired
	private NewsDao dao;

	@Override
	public Map<String, List<NewsVo>> newsMainList() {
		
		List<NewsVo> newsList = dao.selectNewsFive(sst);
		List<NewsVo> areaList = dao.selectAreaFive(sst);
		List<NewsVo> noticeList = dao.selectNoticeFive(sst);
		
		Map<String, List<NewsVo>> map = new HashMap<String, List<NewsVo>>();
		map.put("newsList", newsList);
		map.put("areaList", areaList);
		map.put("noticeList", noticeList);
		
		return map;
		
	}

	@Override
	public Map<String, List<MemberVo>> newsMainRank() {
		
		List<MemberVo> rankMonthList = dao.selectRankMonth(sst);
		List<MemberVo> rankAllList = dao.selectRankAll(sst);
		
		Map<String, List<MemberVo>> map = new HashMap<String, List<MemberVo>>();
		map.put("rankMonthList", rankMonthList);
		map.put("rankAllList", rankAllList);
		
		return map;
	}
	
}
