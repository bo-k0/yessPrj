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
@Slf4j
public class InfoEditController {

	@Autowired
	private CommunityService cs;
	
	@GetMapping("infoEdit")
	public String edit(Model model, String no) {

		BoardVo vo = cs.selectInfoOne(no);	
		model.addAttribute("vo", vo);
		
		return "community/infoEdit";

	}
	
	@PostMapping("infoEdit")
	public String edit(BoardVo vo) {
		
		int result = cs.infoEdit(vo);
		
		System.out.println(result);
		
		if(result != 1) return "error";
		
		
		return "community/infoEdit";
	}
	

}
