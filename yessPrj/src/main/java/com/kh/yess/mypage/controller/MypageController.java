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
import com.kh.yess.mypage.service.MypageService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("mypage")
@Slf4j
public class MypageController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MypageService myService;
	
	@GetMapping("mymall")
	public String list() {
		return "mypage/mymall";
	}
	
	//마이페이지 비밀번호 확인 화면
	@GetMapping("pwChecktoMember")
	public String pwCheckMember(HttpSession session, Model model) {
		
		model.addAttribute("path", "member");
		return"mypage/pwCheck";
	}
	//마이페이지 비밀번호 확인 화면
	@GetMapping("pwChecktoPwd")
	public String pwCheckPwd(HttpSession session, Model model) {
		
		model.addAttribute("path", "pwdChange");
		return"mypage/pwCheck";
	}
	
	//마이페이지 비밀번호 확인 화면(찐)
	@PostMapping("pwCheck")
	public String PwCheck(String cPwd , String path, HttpSession session , Model model) {
		
		MemberVo vo = (MemberVo) session.getAttribute("loginMember");
		
		int checkPwd = memberService.checkPwd(vo, cPwd);
		
		if(checkPwd == 0) {
			model.addAttribute("msg", "비밀번호가 맞지 않습니다.");
			return "admin/common/errorMsg";
		}
		session.setAttribute("pwdChecked", "check");
		
		return "redirect:/mypage/"+path;
	}
	
	//마이페이지 메인
	@GetMapping("main")
	public String myPageMain() {
		return "mypage/main";
		
	}
	
	//비밀번호 변경
	@GetMapping("pwdChange")
	public String pwdChange() {
		return "mypage/pwdChange";
		
	}
	
	//마이페이지화면
	@GetMapping("member")
	public String profile(Model model , HttpSession session , MemberVo vo) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		session.setAttribute("loginMember", loginMember);
		
		log.info(loginMember.toString());

		return "mypage/member";
	}
	
	//마이페이지화면(찐)
	@PostMapping("member")
	public String profile(MemberVo vo , HttpSession session , Model model) {
		
		log.info("정보수정 요청 : "+vo.toString());
		
		
		int result = myService.memberInfoEdit(vo);
		if(result == 1) {
			
			MemberVo loginMember = myService.memberSelectOne(vo);
		
			log.info("정보 수정 : " + loginMember.toString());
		
			session.setAttribute("loginMember", loginMember);	
			
			model.addAttribute("msg" , "변경 성공.");
			model.addAttribute("msgDetail" , "회원정보 변경에 성공했어요.");
			model.addAttribute("path", "mypage/main");
			return "admin/common/successMsg";
		}else {
			model.addAttribute("msg" , "먼가 잘못 됨");
			return "admin/common/errorMsg";
		}
		
	}
	
}//class
