package com.kh.yess.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.vo.BoardVo;

@RequestMapping("community")
@Controller
public class CommunityInfoController {
	
	//화면
	@GetMapping("info")
	public String info() {
		return "community/info";
	}
	
	
	@PostMapping("info")
	public String info(BoardVo vo) {
		return "community/info";
	}
	
	
	

}
