package com.kh.yess.faq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("faq")
@Controller
public class FaqController {

	@GetMapping("list")
	public String list() {
		return "faq/list";
	}

}
