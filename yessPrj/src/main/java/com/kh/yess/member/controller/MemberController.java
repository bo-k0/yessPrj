package com.kh.yess.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.yess.member.service.MemberService;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("member")
@Controller
@Slf4j
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//회원가입화면
	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	
	//회원가입화면(찐)
	@PostMapping("join")
	public String join(MemberVo vo) {
		
		log.debug("cjoin" + vo.toString());
		
		int result = memberService.join(vo);
		
		if(result == 1) {
			return "main/main";
		}else {
			return "common/error";
		}
		
	}
	
	//로그인화면
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	//로그인화면(찐)
	@PostMapping("login")
	public String login(MemberVo vo , HttpSession session) {
		
		MemberVo loginMember = memberService.login(vo);
		
		log.debug("c" + loginMember.toString());
		
		if(loginMember.getId() == null) {
			return "common/error";
		}
		
		session.setAttribute("loginMember", loginMember);
		
		return "redirect:/main";
		
	}
	
	//아이디 중복 확인
	@ResponseBody
	@PostMapping("idDoubleCheck")
	public int idDoubleCheck(String id) {
		log.info("id : "+ id);		
		
		int result =  memberService.doubleCheckbyId(id);		
		
		log.info("result : "+ result);
		
		return result;
	}
	
	//아이디찾기화면
	@GetMapping("findId")
	public String fidnId() {
		return "member/findId";
	}
	
//	//아이디찾기화면(찐)
//	@PostMapping("findId")
//	public String findId(MemberVo vo) {
//		return "";
//	}
	
	//메일로 찾기
	@GetMapping("byMail")
	public String byMail() {
		return "member/byMail";
	}
	
	//번호로 찾기
	@GetMapping("byPhone")
	public String byPhone() {
		return "member/byPhone";
	}
	
	//비밀번호찾기화면
	@GetMapping("findPw")
	public String fidnPw() {
		return "member/findPw";
	}
	
//	//비밀번호찾기화면(찐)
//	@PostMapping("findPw")
//	public String findPw(MemberVo vo) {
//		return "";
//	}
	
}//class
