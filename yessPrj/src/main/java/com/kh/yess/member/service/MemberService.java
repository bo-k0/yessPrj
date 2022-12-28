package com.kh.yess.member.service;

import com.kh.yess.member.vo.MemberVo;

public interface MemberService {

	//회원가입
	public int join(MemberVo vo);
	
	//로그인
	public MemberVo login(MemberVo vo);

	//마이페이지 수정
	public int memberInfoEdit(MemberVo vo);
	
}
