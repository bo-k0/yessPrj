package com.kh.yess.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.yess.member.vo.MemberVo;

public interface MemberService {

	//회원가입
	public int join(MemberVo vo);
	
	//로그인
	public MemberVo login(MemberVo vo);

	//마이페이지 비밀번호확인
	public int checkPwd(MemberVo vo, String cPwd);
	
	//마이페이지 수정
	public int memberInfoEdit(MemberVo vo);
	
	//아이디 중복확인
	public int doubleCheckbyId(String id);
	
	//닉네임 중복확인
	public int doubleCheckbyNick(String nick);

	//휴대폰번호 중복확인
	public int doubleCheckbyPhone(String phone);

	//이메일 중복확인
	public int doubleCheckbyEmail(String email);

	//이메일로 아이디 찾기
	public String findIdByEmail(String email);

	//회원탈퇴
	public int removeMember(String id);

	//이메일로 비밀번호 찾기
	public MemberVo findPwdByEmail(MemberVo vo);

	public int changeTempKey(MemberVo lostMember);

}
