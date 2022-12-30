package com.kh.yess.whereTo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("whereTo")
@Controller
public class WhereToController {
	@GetMapping("address")
	public String anywhere() {
		return "whereTo/address";
	}
	
	@GetMapping("list")
	public String everywhere() {
		return "whereTo/list";
	}
	
	@GetMapping("search")
	public String somewhere() {
		return "whereTo/search";
	}

}
