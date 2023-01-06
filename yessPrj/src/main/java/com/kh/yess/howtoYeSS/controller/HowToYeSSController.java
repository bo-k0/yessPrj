package com.kh.yess.howtoYeSS.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.howtoYeSS.service.HowToYeSSService;

@RequestMapping("howtoYeSS")
@Controller
public class HowToYeSSController {

	@Autowired
	private HowToYeSSService howToYeSSService;
	
	//메인
	@GetMapping("home")
	public String howtoYeSS() {
		return "howtoYeSS/home";
	}
	
	//생활용품 선택시
	@GetMapping("/list/dailyNecessity")
	public String listByDailyNecessity() {
		return "howtoYeSS/list/dailyNecessity";
	}
}
