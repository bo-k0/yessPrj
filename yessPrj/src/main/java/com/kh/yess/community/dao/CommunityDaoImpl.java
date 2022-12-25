package com.kh.yess.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.vo.BoardVo;

@Repository
public class CommunityDaoImpl implements CommunityDao {

	@Override
	public int write(SqlSessionTemplate sst, BoardVo vo) {
		return sst.insert("boardMapper.write", vo);
	}

	@Override
	public List<BoardVo> selectList(SqlSessionTemplate sst, PageVo pv) {
		return sst.selectList("boardMapper.selectList");
	}

	@Override
	public int selectCnt(SqlSessionTemplate sst) {
		return sst.selectOne("boardMapper.selectCnt");
	}

}
