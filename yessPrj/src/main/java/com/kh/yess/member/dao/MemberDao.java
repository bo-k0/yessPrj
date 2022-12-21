package com.kh.yess.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.member.vo.MemberVo;

public interface MemberDao {

	//insert member
		public int insertMember(SqlSessionTemplate sst , MemberVo vo);
		
		//select member one
		public MemberVo selectOneMember(SqlSessionTemplate sst , MemberVo vo);
}
