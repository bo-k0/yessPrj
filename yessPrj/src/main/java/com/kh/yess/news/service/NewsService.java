package com.kh.yess.news.service;

import java.util.List;
import java.util.Map;

import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.vo.NewsVo;

public interface NewsService{
	
	public Map<String, List<NewsVo>> newsMainList();
	
	public Map<String, List<MemberVo>> newsMainRank();

}
