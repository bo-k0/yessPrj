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
	
	@GetMapping("list")
	public String newsList() {
		return "news/list";
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
