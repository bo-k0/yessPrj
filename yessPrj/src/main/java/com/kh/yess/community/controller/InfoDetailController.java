package com.kh.yess.community.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.news.vo.NewsVo;


@RequestMapping("community")
@Controller
public class InfoDetailController {

	@Autowired
	private CommunityService cs;
	
	@GetMapping("infoDetail")
	public String detail(Model model, String no) {
	
		if(no == null) {
			no = "1";
		}
		BoardVo vo = cs.infoDetail(no);	
		model.addAttribute("vo", vo);
		
		return "community/infoDetail";

	}
	

}
