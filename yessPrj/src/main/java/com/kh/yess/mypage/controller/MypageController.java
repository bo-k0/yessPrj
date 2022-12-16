package com.kh.yess.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mypage")
public class MypageController {
	
	@GetMapping("mymall")
	public String list() {
		return "mypage/mymall";
	}

}
