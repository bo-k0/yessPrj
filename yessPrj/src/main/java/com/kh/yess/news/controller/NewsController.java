package com.kh.yess.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("news")
@Controller
public class NewsController {

	@GetMapping("main")
	public String newsMain() {
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
	
	@GetMapping("write")
	public String newsWrite() {
		return "news/write";
	}
	@GetMapping("detail")
	public String newsDetail() {
		return "news/detail";
	}
}
