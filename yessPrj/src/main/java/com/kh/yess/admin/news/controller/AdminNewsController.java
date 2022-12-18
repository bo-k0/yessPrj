package com.kh.yess.admin.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/news")
public class AdminNewsController {

	@GetMapping("main")
	public String newsMain() {
		return "admin/news/main";
	}
	
	@GetMapping("news")
	public String newsList() {
		return "admin/news/news";
	}
	
	@GetMapping("area")
	public String areaList() {
		return "admin/news/area";
	}
	
	@GetMapping("notice")
	public String noticeList() {
		return "admin/news/notice";
	}
	
	@GetMapping("write")
	public String newsWrite() {
		return "admin/news/write";
	}

	@GetMapping("detail")
	public String newsDetail() {
		return "admin/news/detail";
	}
}
