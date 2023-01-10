package com.kh.yess.mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.member.vo.MemberVo;

@Repository
public class MypageDao {

	public int updateMember(SqlSessionTemplate sst, MemberVo vo) {
		return sst.update("memberMapper.updatemember", vo);
	}

	public MemberVo selectOneMember(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("memberMapper.selectOneById" , vo);
	}

}
