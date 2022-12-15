package com.kh.yess.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("community")
@Controller
public class CommunityMain_rightController {
	
	//화면
	@GetMapping("main_right")
	public String main() {
		return "community/main_right";
	}
	

}