package com.kh.yess.faq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.faq.service.FaqService;
import com.kh.yess.faq.vo.FaqVo;

@RequestMapping("faq")
@Controller
public class FaqController {
	
	@Autowired
	private FaqService service;

	//faq 리스트
	@GetMapping("list")
	public String list(Model model) {
		List<FaqVo> faqList = service.faqList();
		model.addAttribute("faqList", faqList);
		
		return "faq/list";
	}

}
