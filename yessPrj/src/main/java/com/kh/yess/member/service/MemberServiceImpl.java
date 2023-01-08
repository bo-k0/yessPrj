package com.kh.yess.member.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.yess.member.dao.MemberDao;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberServiceImpl implements MemberService{

	@Autowired
	private BCryptPasswordEncoder enc;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MemberDao memberDao;
	
	//회원가입
	@Override
	public int join(MemberVo vo) {
		
		//암호화
		String Pwd = vo.getPwd();
		String newPwd = enc.encode(Pwd);
		vo.setPwd(newPwd);
		
		return memberDao.insertMember(sst, vo);
	}

	//로그인
	@Override
	public MemberVo login(MemberVo vo) {
		
		MemberVo dbMember = memberDao.selectOneMember(sst, vo);
		
//		log.info("s.vo : " + vo);
		
		int gradeNo = dbMember.getGradeNo();
//		log.info("s.gradeNo : " + gradeNo);
		
		if(gradeNo == 9) return dbMember;
		
		String pwd = vo.getPwd();
//		log.info("s.Pwd : " + pwd);
		
		String dbPwd = dbMember.getPwd();
//		log.info("s.dbPwd : " + dbPwd);
		
		if(enc.matches(pwd, dbPwd)) {
			return dbMember;
		}else {
			return null;
		}
		
	}

	//마이페이지 비밀번호 확인
	@Override
	public int checkPwd(MemberVo vo, String cPwd) {
		
		MemberVo checkMember = memberDao.selectOnePwd(sst, vo);
		
		String dbPwd = checkMember.getPwd();
		
		if(enc.matches(cPwd, dbPwd)) {
			return 1;
		}else {
			return 0;
		}
		
	}
	
	//마이페이지 수정
	@Override
	public int memberInfoEdit(MemberVo vo) {
		return memberDao.updateMember(sst, vo);
	}

	//아이디 중복확인
	@Override
	public int doubleCheckbyId(String id) {
		return memberDao.doubleCheckbyId(sst , id);
	}

	//닉네임 중복확인
	@Override
	public int doubleCheckbyNick(String nick) {
		return memberDao.doubleCheckbyNick(sst , nick);
	}
	
	//휴대폰번호 중복확인
	@Override
	public int doubleCheckbyPhone(String phone) {
		return memberDao.doubleCheckbyPhone(sst , phone);
	}

	//이메일 중복확인
	@Override
	public int doubleCheckbyEmail(String email) {
		return memberDao.doubleCheckbyEmail(sst , email);
	}

	//이메일로 아이디 찾기
	@Override
	public String findIdByEmail(String email){
//		log.info("s email : " + email);
		return memberDao.findIdByEmail(sst, email);
	}

}//class
