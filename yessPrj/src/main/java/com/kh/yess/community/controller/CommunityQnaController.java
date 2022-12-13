package com.kh.yess.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("community")
@Controller
public class CommunityQnaController {
	
	//화면
	@GetMapping("qna")
	public String main() {
		return "community/qna";
	}
	

}
