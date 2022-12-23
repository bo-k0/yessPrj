package com.kh.yess.community.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;

@RequestMapping("community")
@Controller
public class CommunityInfoController {
	
	@Autowired
	private CommunityService cs;
	
	//게시글 목록 화면
	@GetMapping("info")
	public String list(Model model) {  //spring에선 request 대신 model 로 쓰기
		List<BoardVo> voList = cs.selectList();
		model.addAttribute("voList", voList);
		return "community/info";
	}
	
	@PostMapping("info")
	public String info(BoardVo vo) {
		return "community/info";
	}
	
	
	

}
