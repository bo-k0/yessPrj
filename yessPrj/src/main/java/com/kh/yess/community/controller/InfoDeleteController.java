package com.kh.yess.community.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
public class InfoDeleteController {

	@Autowired
	private CommunityService cs;
	
	@GetMapping("infoDelete")
	public String edit(Model model, String no) {

		int result = cs.deleteInfo(no);
		
		return "redirect:info";

	}
	

}
