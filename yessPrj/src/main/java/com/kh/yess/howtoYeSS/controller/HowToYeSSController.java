package com.kh.yess.howtoYeSS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("howtoYeSS")
@Controller
public class HowToYeSSController {

	//메인
	@GetMapping("home")
	public String howtoYeSS() {
		return "howtoYeSS/home";
	}
	
	//대분류 선택 시
	@GetMapping("list")
	public String howtoYeSSlist() {
		return "howtoYeSS/list";
	}
}
