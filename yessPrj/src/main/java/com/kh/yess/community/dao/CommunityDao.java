package com.kh.yess.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.community.vo.BoardVo;

@Repository
public class CommunityDao {

	//게시글 작성
	public int write(SqlSessionTemplate sst, BoardVo vo) {
		return sst.insert("boardMapper.write", vo);
	}

	public List<BoardVo> selectList(SqlSessionTemplate sst) {
		return sst.selectList("boardMapper.selectList");
	}

}
