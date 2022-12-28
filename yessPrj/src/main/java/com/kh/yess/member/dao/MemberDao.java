package com.kh.yess.member.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.member.vo.MemberVo;

public interface MemberDao {

	//insertmember
	public int insertMember(SqlSessionTemplate sst , MemberVo vo);
	
	//selectmemberone
	public MemberVo selectOneMember(SqlSessionTemplate sst , MemberVo vo);

	//updateMember
	public int updateMember(SqlSessionTemplate sst, MemberVo vo);

}
