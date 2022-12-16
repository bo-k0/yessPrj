package com.kh.yess.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("main")
	public String main() {
		return"main/main";
	}
	
	@GetMapping("sample")
	public String mypage() {
		return"main/sample";
	}
	
}
