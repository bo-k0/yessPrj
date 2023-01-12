package com.kh.yess.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("main")
	public String main(HttpSession session) {

		return"main/main";
	}

}
