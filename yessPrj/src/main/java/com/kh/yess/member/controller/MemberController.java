package com.kh.yess.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.member.service.MemberService;
import com.kh.yess.member.vo.MemberVo;

@RequestMapping("member")
@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//로그인화면
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	//로그인화면(찐)
	@PostMapping("login")
	public String login(MemberVo vo) {
		MemberVo loginMember = memberService.login(vo);
		
		System.out.println(loginMember);
		
		if(loginMember != null) {
			return "main/main";
		}else {
			return "로그인실패JSP경로";
		}
		
	}
	
	//회원가입화면
	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	
//	//회원가입화면(찐)
//	@GetMapping("join")
//	public String join(MemberVo vo) {
//		return "";
//	}
	
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
	
}
