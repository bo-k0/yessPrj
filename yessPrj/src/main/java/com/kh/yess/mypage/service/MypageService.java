package com.kh.yess.mypage.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.mypage.dao.MypageDao;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MypageService{

	@Autowired
	private BCryptPasswordEncoder enc;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MypageDao dao;
	
	public int memberInfoEdit(MemberVo vo) {
		//암호화
		if(vo.getPwd() == null || vo.getPwd() == "") {
			log.debug("널처리 댐");
			vo.setPwd("");
			return dao.updateMember(sst, vo);
		}
		
		String Pwd = vo.getPwd();
		String newPwd = enc.encode(Pwd);
		vo.setPwd(newPwd);			
		log.debug("암호화 됌");
		
		return dao.updateMember(sst, vo);
	}

	public MemberVo memberSelectOne(MemberVo vo) {
		return dao.selectOneMember(sst, vo);
	}
}
