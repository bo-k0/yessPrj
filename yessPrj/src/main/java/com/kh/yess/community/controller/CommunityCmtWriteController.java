package com.kh.yess.community.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class CommunityCmtWriteController {
	
	@Autowired
	private CommunityService cs;
	
	//게시글 작성 (화면)
	@GetMapping("cmt")
	public String writeCmt(BoardVo vo , HttpServletRequest req, HttpSession session, MemberVo mvo) {
		
		
		
		return "community/info";
	}

}
