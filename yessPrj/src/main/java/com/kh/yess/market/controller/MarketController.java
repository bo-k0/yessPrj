package com.kh.yess.market.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("market")
@Controller
public class MarketController {

	@GetMapping("list")
	public String list() {
		return "market/list";
	}
	
	@GetMapping("detail")
	public String detail() {
		return "market/detail";
	}
}
