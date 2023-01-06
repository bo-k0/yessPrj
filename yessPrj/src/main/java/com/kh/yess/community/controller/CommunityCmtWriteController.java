package com.kh.yess.community.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.community.service.CommunityService;
import com.kh.yess.community.vo.BoardCmtVo;
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
		
		//세션 가져오기
		HttpSession s = req.getSession();
		
		//로그인 멤버 가져오기
		MemberVo loginMember = (MemberVo)s.getAttribute("loginMember");
		
		if(loginMember.getId() == null) {
			return "common/error";
		}
		
		//데이터 가져오기
		String commNo = req.getParameter("commNo");
		String writer = req.getParameter("writer");
		String comment = req.getParameter("comment");
		
		//데이터 뭉치기
		BoardCmtVo cmtvo = new BoardCmtVo();
		cmtvo.setPostNo(commNo);;
		cmtvo.setWriter(writer);
		cmtvo.setCmt(comment);
		
		int result = cs.writeCmt(cmtvo);

		System.out.println("writeCmt result : " + result);
		
		return "community/info";
	}

}
