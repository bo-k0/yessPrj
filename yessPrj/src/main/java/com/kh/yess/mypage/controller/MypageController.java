package com.kh.yess.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.yess.member.service.MemberService;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("mypage")
@Slf4j
public class MypageController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("mymall")
	public String list() {
		return "mypage/mymall";
	}
	
	@GetMapping("pwCheck")
	public String pwCheck() {
		return"mypage/pwCheck";
	}
	
	@PostMapping("pwCheck")
	public String PwCheck(String cPwd , HttpSession session , Model model) {
		
		MemberVo vo = (MemberVo) session.getAttribute("loginMember");
		
		int checkPwd = memberService.checkPwd(vo, cPwd);
		
		log.info("cPwCheck" + checkPwd);
		
		if(checkPwd == 0) {
			model.addAttribute("msg", "비밀번호가 맞지 않습니다.");
			return "admin/common/errorMsg";
		}
		
		return "mypage/member";
	}
	
	//마이페이지화면
	@GetMapping("member")
	public String profile(Model model , HttpSession session , MemberVo vo) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		log.info(loginMember.toString());
		
		session.setAttribute("loginMember", loginMember);

		return "mypage/member";
	}
	
	//마이페이지화면(찐)
	@PostMapping("member")
	public String profile(MemberVo vo , HttpSession session) {
		
		log.info("cmypage" + vo.toString());
		
		int result = memberService.memberInfoEdit(vo);
		
		
		
		if(result == 1) {
			session.setAttribute("loginMember", vo);
			return "redirect:/main";
		}else {
			return "common/error";
		}
		
	}
	
}//class
