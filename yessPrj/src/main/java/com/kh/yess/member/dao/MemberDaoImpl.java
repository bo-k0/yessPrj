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
//		log.info("d.vo : " + vo);
		return sst.selectOne("memberMapper.selectOneById" , vo);
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

	//이메일로 아이디 찾기
	@Override
	public String findIdByEmail(SqlSessionTemplate sst, String email) {
		return sst.selectOne("memberMapper.selectOneFindIdByEmail" , email);
	}

	//회원가입 시 신규가입포인트입력
	@Override
	public int insertMemberPoint(SqlSessionTemplate sst) {
		return sst.insert("memberMapper.insertPointOne");
	}

	//회원탈퇴
	@Override
	public int removeMember(SqlSessionTemplate sst, String id) {
		return sst.update("memberMapper.updateRemoveMember" , id);
	}

	//이메일로 비밀번호 찾기
	@Override
	public MemberVo findPwdByEmail(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("memberMapper.selectOneFindPwdByEmail" , vo);
	}

	//임시비밀번호 암호화
	@Override
	public int changeTempKey(SqlSessionTemplate sst, MemberVo lostMember) {
		return sst.update("memberMapper.changeTempKey" , lostMember);
	}

	//전화번호로 아이디 찾기
	@Override
	public String findIdByPhone(SqlSessionTemplate sst, String phone) {
		log.info("d.phone : " + phone);
		return sst.selectOne("memberMapper.selectOneFindIdByPhone" , phone);
	}

	//출석확인
	@Override
	public int checkAttend(SqlSessionTemplate sst, int no) {
		return sst.selectOne("memberMapper.checkAttend", no);
	}

	//출석 업데이트
	@Override
	public int updateAttend(SqlSessionTemplate sst, int no) {
		return sst.insert("memberMapper.updateAttend", no);
	}

	@Override
	public int updateAttendPoint(SqlSessionTemplate sst, int no) {
		return sst.insert("memberMapper.updateAttendPoint", no);
	}

	@Override
	public int updateMyPoint(SqlSessionTemplate sst, MemberVo loginMember) {
		return sst.update("memberMapper.updateMypoint", loginMember);
	}


}
