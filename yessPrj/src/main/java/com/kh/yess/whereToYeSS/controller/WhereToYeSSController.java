package com.kh.yess.whereToYeSS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("whereTo")
@Controller
public class WhereToYeSSController {
	@GetMapping("anywhere")
	public String anywhere() {
		return "whereTo/anywhere";
	}
	
	@GetMapping("somewhere")
	public String somewhere() {
		return "whereTo/somewhere";
	}

}
