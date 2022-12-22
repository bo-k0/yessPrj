package com.kh.yess.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminMain {
	
	@GetMapping("main")
	public String main(){
		return "admin/main/main";
	}
}
