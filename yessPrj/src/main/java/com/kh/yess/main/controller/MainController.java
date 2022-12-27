package com.kh.yess.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("main")
	public String main() {
		return"main/main";
	}
	
	@GetMapping("mypage/member")
	public String list() {
		return "mypage/member";
	}
	
	@GetMapping("404")
	public String errorPage() {
		return "common/errorPage";
	}
}
