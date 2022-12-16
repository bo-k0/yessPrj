package com.kh.yess.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.member.vo.MemberVo;

@RequestMapping("member")
@Controller
public class MemberController {

	//로그인화면
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
//	//로그인화면(찐)
//	@PostMapping("login")
//	public String login(MemberVo vo) {
//		return "";
//	}
	
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
