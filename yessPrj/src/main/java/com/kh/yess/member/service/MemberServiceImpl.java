package com.kh.yess.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.kh.yess.member.dao.MemberDao;
import com.kh.yess.member.vo.MemberVo;

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
		return 0;
	}

	//로그인
	@Override
	public MemberVo login(MemberVo vo) {
		
		MemberVo dbMember = memberDao.selectOneMember(sst, vo);
		
		String Pwd = vo.getPwd();
		String dbPwd = dbMember.getPwd();
		
		if(enc.matches(Pwd, dbPwd)) {
			return dbMember;
		}else {
			return null;
		}
		
	}

}//class
