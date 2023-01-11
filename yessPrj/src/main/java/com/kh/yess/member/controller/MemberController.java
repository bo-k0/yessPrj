package com.kh.yess.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.yess.mail.controller.MailHandler;
import com.kh.yess.mail.controller.Tempkey;
import com.kh.yess.member.service.MemberService;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("member")
@Controller
@Slf4j
public class MemberController {

	@Autowired
	private BCryptPasswordEncoder enc;

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	//회원가입화면
	@GetMapping("join")
	public String join(HttpServletRequest request) {
//		if(request.getServletPath().equals("member")) {
//						
//		}
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
		
		log.debug("c.vo : " + vo);
		
		//member select
		MemberVo loginMember = memberService.login(vo);
		log.debug("c.loginMember : " + loginMember);
		
		
		//login null 처리
		if(loginMember == null || loginMember.getQuitYn() == 'Y') {
			model.addAttribute("msg", "로그인 실패");
			model.addAttribute("msgDetail", "아이디와 비밀번호를 다시 확인하세요");
			model.addAttribute("path", "main");
			return "admin/common/successMsg";
		}
		
		int gNo = loginMember.getGradeNo();
		log.debug("c.gNo : " + gNo);	
		
		//관리자 회원 리턴
		if(gNo == 9) {
			session.setAttribute("adminMember", loginMember);
			return "redirect:/admin/main";
		}

		//출석체크
		
		loginMember = memberService.attendCheck(loginMember);
		if(loginMember == null) {
			model.addAttribute("msg", "로그인 실패");
			model.addAttribute("msgDetail", "아이디와 비밀번호를 다시 확인하세요");
			model.addAttribute("path", "main");
			return "admin/common/successMsg";
		}
		
		log.debug("c:loginMember.getId() : " + loginMember.getId());
		log.debug("c:loginMember.getQuitYn() : " + loginMember.getQuitYn());
		
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
		
	//아이디 찾기(화면)
	@GetMapping("findId")
	public String fidnId() {
		return "member/findId";
	}
	
	//아이디 메일로 찾기(화면)
	@GetMapping("idFindByEmail")
	public String byMail() {
		return "member/idFindByEmail";
	}
	
//	//참고
//	@GetMapping("findIdByEmail")
//	public String byMail2() {
//		return "member/findIdByEmail";
//	}
	
	//아이디 메일로 찾기(찐)
	@PostMapping("idFindByEmail")
	public String byEmail(String email, Model model){
//		log.info("c email : " + email);
		String id = memberService.findIdByEmail(email);
		
		if(id == null || id == "") {
			model.addAttribute("msg", "이 이메일로는 찾을 수 없어요");
			return "admin/common/errorMsg";
		}
		model.addAttribute("id", id);
		return "member/findIdByEmail";
	}
	
	//아이디 번호로 찾기(화면)
	@GetMapping("idFindByPhone")
	public String byPhone() {
		return "member/idFindByPhone";
	}
	
	//아이디 번호로 찾기(찐)
	@PostMapping("idFindByPhone")
	public String byPhone(String phone, Model model){
		log.info("c phone : " + phone);
		String jinPhone = memberService.findIdByPhone(phone);
		
		if(jinPhone == null || jinPhone == "") {
			model.addAttribute("msg", "이 전화번호로는 찾을 수 없어요");
			return "admin/common/errorMsg";
		}
		model.addAttribute("jinPhone", jinPhone);
		log.info("c jinPhone : " + jinPhone);
		return "member/findIdByPhone";
	}
	
	//비밀번호 찾기(화면)
	@GetMapping("findPw")
	public String fidnPw() {
		return "member/findPwd";
	}
	
	//비밀번호 메일로 찾기(화면)
	@GetMapping("pwdFindByEmail")
	public String byPwdMail(){
		return "member/pwdFindByEmail";
	}
	
	//비밀번호 메일로 찾기(찐)
	@PostMapping("pwdFindByEmail")
	public String byPwdMail(MemberVo vo, Model model){
		log.info("c email : " + vo);
		//작성한 이메일이랑 이름이 일치하는지 확인함 -> 결과값으로 그 이메일 리턴
		MemberVo lostMember = memberService.findPwdByEmail(vo);
		//return MemberVo lostMember
		
		if(lostMember.getEmail() == null || lostMember.getEmail() == "") {
			model.addAttribute("msg", "이 이메일로는 찾을 수 없어요");
			return "admin/common/errorMsg";
		}
		
		//임시비밀번호 생성
		//String 
		String tempKey = new Tempkey().getKey(10, true);
		String encKey = enc.encode(tempKey);
		lostMember.setPwd(encKey);
		int result = memberService.changeTempKey(lostMember);
		
		if(result==1) {
			MailHandler mh;
			try {
				mh = new MailHandler(mailSender);
				mh.setSubject("제목");
//				mh.setFrom("yes@naver.com", "YESS관리자");
				mh.setText("임시비밀번호입니다 : " + tempKey);
				mh.setTo(lostMember.getEmail());
				mh.send();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//임시비밀번호로 방금 조회해온 맴버의 비밀번호 업데이트
		
		//해당 이메일로 임시비번 전송할건데
		
		model.addAttribute("email", lostMember.getEmail());
		return "member/findPwdByEmail";
		//해당 이메일로 임시비밀번호를 전송했습니다~
	}
	
	//회원탈퇴
	@GetMapping("remove")
	public String removeMember(HttpSession session, Model model) {
		MemberVo vo = (MemberVo) session.getAttribute("loginMember");
		String id = vo.getId();
		
		int result = memberService.removeMember(id);
		
		if(result == 1) {
			session.invalidate();
			return "redirect:/main";
		}
		model.addAttribute("msg", "탈퇴실패");
		return "admin/common/errorMsg";
	}

}//class
