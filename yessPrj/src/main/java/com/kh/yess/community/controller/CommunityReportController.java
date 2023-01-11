package com.kh.yess.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;

@RequestMapping("community")
@Controller
public class CommunityReportController {
	
	@Autowired
	private CommunityService cs;
	
	@GetMapping("report")
	public String report(Model model, String no) {
		
		if(no == null) {
			no = "1";
		}
		
		int result = cs.report(no);
		
		if(result == 1) {
			return "redirect:info";
		}else {
			return "common/error";
		}
		
	}

}
