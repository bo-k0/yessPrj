package com.kh.yess.market.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.market.service.MarketService;

@RequestMapping("market")
@Controller
public class MarketController {

	@Autowired
	private MarketService ms;
	
	@GetMapping("list")
	public String list() {
		return "market/list";
	}
	
	@GetMapping("detail")
	public String detail() {
		return "market/detail";
	}
	
	@GetMapping("write")
	public String write() {
		return "market/write";
	}
	
	@GetMapping("edit")
	public String edit() {
		return "market/edit";
	}
}
