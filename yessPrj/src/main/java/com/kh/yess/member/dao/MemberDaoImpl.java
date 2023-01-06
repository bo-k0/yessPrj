package com.kh.yess.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MemberDaoImpl implements MemberDao{

	//회원가입
	@Override
	public int insertMember(SqlSessionTemplate sst, MemberVo vo) {
		return sst.insert("memberMapper.insertMember" , vo);
	}

	//로그인
	@Override
	public MemberVo selectOneMember(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("memberMapper.selectOneById" , vo);
	}
	
	//관리자 로그인
	@Override
	public MemberVo selectAdmin(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("memberMapper.selectAdmin" , vo);
	}

	//마이페이지 비밀번호 확인
	@Override
	public MemberVo selectOnePwd(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("memberMapper.selectOnePwd" , vo);
	}
	
	//마이페이지 정보수정
	@Override
	public int updateMember(SqlSessionTemplate sst, MemberVo vo) {
		return sst.update("memberMapper.updatemember" , vo);
	}

	//아이디 중복확인
	@Override
	public int doubleCheckbyId(SqlSessionTemplate sst, String id) {
		return sst.selectOne("memberMapper.selectOneCheckId" , id);
	}

	//닉네임 중복확인
	@Override
	public int doubleCheckbyNick(SqlSessionTemplate sst, String nick) {
		return sst.selectOne("memberMapper.selectOneCheckNick" , nick);
	}

	//휴대폰번호 중복확인
	@Override
	public int doubleCheckbyPhone(SqlSessionTemplate sst, String phone) {
		return sst.selectOne("memberMapper.selectOneCheckPhone" , phone);
	}

	//이메일 중복확인
	@Override
	public int doubleCheckbyEmail(SqlSessionTemplate sst, String email) {
		return sst.selectOne("memberMapper.selectOneCheckEmail" , email);
	}

}
