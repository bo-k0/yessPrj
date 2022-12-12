package com.kh.yess.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("community")
@Controller
public class CommunityMainController {
	
	//화면
	@GetMapping("main")
	public String main() {
		return "community/main";
	}
	

}
