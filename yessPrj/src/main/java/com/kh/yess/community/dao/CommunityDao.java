package com.kh.yess.community.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.community.vo.BoardVo;

@Repository
public class CommunityDao {

	//게시글 작성
	public int write(SqlSessionTemplate sst, BoardVo vo) {
		System.out.println("33?");
		return sst.insert("boardMapper.write", vo);
	}

}
