package com.kh.yess.member.controller;

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
	public String join(MemberVo vo , Model model) {
		
		int result = memberService.join(vo);
		
		if(result == 1) {
			model.addAttribute("msg", "회원가입 성공");
			model.addAttribute("msgDetail", "축하축하");
			model.addAttribute("path", "main");
			return "admin/common/successMsg";
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
	public String login(MemberVo vo , HttpSession session , Model model) {
		
		log.info("c.vo : " + vo);
		
		MemberVo loginMember = memberService.login(vo);
		log.info("c.loginMember : " + loginMember);
		
		int gNo = loginMember.getGradeNo();
		log.info("c.gNo : " + gNo);
		
		if(gNo == 9) {
			session.setAttribute("adminMember", loginMember);
			return "redirect:/admin/main";
		}
		
		if(loginMember.getId() == null) {
			model.addAttribute("msg", "아이디와 비밀번호를 다시 확인해주세요.");
			return "admin/common/errorMsg";
		}
		
		session.setAttribute("loginMember", loginMember);
		
		return "redirect:/main";
		
	}
	
	//로그아웃
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
		
	}
	
	//아이디 중복 확인
	@ResponseBody
	@PostMapping("idDoubleCheck")
	public int idDoubleCheck(String id) {
		
		int result =  memberService.doubleCheckbyId(id);		
		
		return result;
	}
	
	//닉네임 중복 확인
	@ResponseBody
	@PostMapping("nickDoubleCheck")
	public int nickDoubleCheck(String nick) {
		
		int result =  memberService.doubleCheckbyNick(nick);		
		
		return result;
	}
	
	//휴대폰번호 중복 확인
	@ResponseBody
	@PostMapping("phoneDoubleCheck")
	public int phoneDoubleCheck(String phone) {
		
		int result =  memberService.doubleCheckbyPhone(phone);	
		
		return result;
	}
	
	//이메일 중복 확인
	@ResponseBody
	@PostMapping("emailDoubleCheck")
	public int emailDoubleCheck(String email) {
		
		int result =  memberService.doubleCheckbyEmail(email);		
		
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
