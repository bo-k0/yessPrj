package com.kh.yess.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("main")
	public String main() {
		return"main/main";
	}
	
	@GetMapping("404")
	public String errorPage() {
		return "common/errorPage";
	}
}
