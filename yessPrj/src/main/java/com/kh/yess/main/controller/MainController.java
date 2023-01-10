package com.kh.yess.main.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("main")
	public String main(HttpSession session) {
		
		boolean isChecked = true;
		session.setAttribute("isChecked", isChecked);
		
		return"main/main";
	}

}
