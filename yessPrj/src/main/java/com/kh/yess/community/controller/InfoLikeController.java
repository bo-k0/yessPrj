package com.kh.yess.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;

@RequestMapping("community")
@Controller
public class InfoLikeController {
	
	@Autowired
	private CommunityService cs;
	
	@PostMapping("infoLike")
	public String like(Model model, String no) {
		int result = cs.plusLikeOne(no);
		
		return "community/infoDetail";
	}
}
