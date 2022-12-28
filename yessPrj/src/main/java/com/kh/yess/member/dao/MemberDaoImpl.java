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
		log.info("djoin" + vo.toString());
		return sst.insert("memberMapper.insertMember" , vo);
	}

	//로그인
	@Override
	public MemberVo selectOneMember(SqlSessionTemplate sst, MemberVo vo) {
		log.info("d" + vo.toString());
		return sst.selectOne("memberMapper.selectOneById" , vo);
	}

	@Override
	public int updateMember(SqlSessionTemplate sst, MemberVo vo) {
		log.info("dupdate" + vo.toString());
		return sst.update("memberMapper.updatemember" , vo);
	}

}
