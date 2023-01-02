package com.kh.yess.community.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.common.FileUploader;
import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("community")
@Controller
@Slf4j
public class CommunityWriteSummernoteController {
	
	@Autowired
	private CommunityService cs;
	
	//게시글 작성 (화면)
	@GetMapping("write_summernote")
	public String write() {
		return "community/write_summernote";
	}
	

	//게시글 작성하기
	@PostMapping(value="write_summernote")
	public String write(BoardVo vo , HttpServletRequest req, HttpSession session, MemberVo mvo) {
						
		//세션 가져오기
		HttpSession s = req.getSession();
		
		//로그인 멤버 가져오기
		MemberVo loginMember = (MemberVo)s.getAttribute("loginMember");
				
		if(loginMember.getId() == null) {
			return "common/error";
		}
		
		session.setAttribute("loginMember", loginMember);
		
		log.info("loginMember : " +loginMember);
		
		//글 작성하기
		int result = cs.write(vo);
		
		log.info("result : " + result);
		
		if(result == 1) {
			return "redirect:info";
		}else {
			return "common/error";
		}
	}
	
	
}//class


