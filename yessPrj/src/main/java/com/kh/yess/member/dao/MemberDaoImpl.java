package com.kh.yess.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.member.vo.MemberVo;

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

}
