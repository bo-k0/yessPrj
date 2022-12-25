package com.kh.yess.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.vo.BoardVo;

public interface CommunityDao {

	//게시글 작성
	public int write(SqlSessionTemplate sst, BoardVo vo);

	public List<BoardVo> selectList(SqlSessionTemplate sst, PageVo pv);

	public int selectCnt(SqlSessionTemplate sst);

}
