package com.kh.yess.news.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.service.NewsService;
import com.kh.yess.news.vo.NewsVo;

@RequestMapping("news")
@Controller
public class NewsController {

	@Autowired
	private NewsService service;

	@GetMapping("main")
	public String newsMain(Model model) {
		
		Map<String, List<NewsVo>> bm = service.newsMainList(); 
		Map<String, List<MemberVo>> mm = service.newsMainRank();
		  
		model.addAttribute("newsList",bm.get("newsList"));
		model.addAttribute("areaList",bm.get("areaList"));
		model.addAttribute("noticeList",bm.get("noticeList"));
		model.addAttribute("rankMonthList",mm.get("rankMonthList"));
		model.addAttribute("rankAllList",mm.get("rankAllList"));

		return "news/main";
	}

	@GetMapping("news")
	public String newsList() {
		return "news/news";
	}

	@GetMapping("area")
	public String areaList() {
		return "news/area";
	}

	@GetMapping("notice")
	public String noticeList() {
		return "news/notice";
	}

	@GetMapping("detail")
	public String newsDetail(int no, Model model) {
		NewsVo vo = service.newsDetail(no);	
		model.addAttribute("vo", vo);
		return "news/detail";
	}
}
