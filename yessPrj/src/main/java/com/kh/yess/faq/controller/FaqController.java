package com.kh.yess.faq.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("faq")
@Controller
public class FaqController {

	@GetMapping("list")
	public String list(Model model) {

		//List<faqVo> faqList = service.faqList();
		//model.addAttribute("faqList", faqList);
		
		return "faq/list";
	}

}
