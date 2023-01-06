package com.kh.yess.member.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
			model.addAttribute("msg", "회원가입에 성공했습니다.");
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
		
		if(loginMember.getId() == null) {
			return "common/error";
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
	
	//email로 비밀번호 찾기(인증번호발송)
	@RequestMapping(value = "/pw_auth.me")
	public ModelAndView pw_auth(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = (String)request.getParameter("email");
		String name = (String)request.getParameter("name");

		MemberVo vo = memberService.selectMember(email);
			
		if(vo != null) {
		Random r = new Random();
		int num = r.nextInt(999999); // 랜덤난수설정
			if (vo.getName().equals(name)) {
				session.setAttribute("email", vo.getEmail());
	
				String setfrom = "yess0113@naver.com"; // naver 
				String tomail = email; //받는사람
				String title = "[예쓰] 비밀번호변경 인증 이메일 입니다"; 
				String content = System.getProperty("line.separator") + "안녕하세요 회원님" + System.getProperty("line.separator")
						+ "예쓰 비밀번호찾기(변경) 인증번호는 " + num + " 입니다." + System.getProperty("line.separator"); // 
	
				try {
					MimeMessage message = mailSender.createMimeMessage();
					MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "utf-8");
	
					messageHelper.setFrom(setfrom); 
					messageHelper.setTo(tomail); 
					messageHelper.setSubject(title);
					messageHelper.setText(content); 
	
					mailSender.send(message);
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
	
				ModelAndView mv = new ModelAndView();
				mv.setViewName("YM/pw_auth");
				mv.addObject("num", num);
				return mv;
			}
		}else {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("YM/pw_find");
			return mv;
		}
	}//찾아서 줄맞추기...하
	
	//이메일 인증번호 확인
	@RequestMapping(value = "/pw_set.me", method = RequestMethod.POST)
	public String pw_set(@RequestParam(value="email_injeung") String email_injeung,
				@RequestParam(value = "num") String num) throws IOException{
			
			if(email_injeung.equals(num)) {
				return "YM/pw_new";
			}
			else {
				return "YM/pw_find";
			}
	}
	
	//DB 비밀번호 업데이트
	@RequestMapping(value = "/pw_new.me", method = RequestMethod.POST)
	public String pw_new(MemberVo vo, HttpSession session) throws IOException{
		int result = memberService.pwUpdate_M(vo);
		if(result == 1) {
			return "jj/loginForm";
		}
		else {
			System.out.println("pw_update"+ result);
			return "YM/pw_new";
		}
	}
}//class
