package com.kh.yess.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.member.vo.MemberVo;

public interface MemberDao {

	//회원가입
	public int insertMember(SqlSessionTemplate sst , MemberVo vo);
	
	//로그인
	public MemberVo selectOneMember(SqlSessionTemplate sst , MemberVo vo);
	
	//관리자 로그인
	public MemberVo selectAdmin(SqlSessionTemplate sst, MemberVo vo);

	//마이페이지 정복수정
	public int updateMember(SqlSessionTemplate sst, MemberVo vo);

	//마이페이지 비밀번호 확인
	public MemberVo selectOnePwd(SqlSessionTemplate sst, MemberVo vo);

	//아이디 중복확인
	public int doubleCheckbyId(SqlSessionTemplate sst, String id);
	
	//닉네임 중복확인
	public int doubleCheckbyNick(SqlSessionTemplate sst, String nick);

	//휴대폰번호 중복확인
	public int doubleCheckbyPhone(SqlSessionTemplate sst, String phone);

	//이메일 중복확인
	public int doubleCheckbyEmail(SqlSessionTemplate sst, String email);

}
