package com.kh.yess.community.dao;

import java.util.List;
import java.util.Map;

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
	public int selectCnt(SqlSessionTemplate sst) {
		return sst.selectOne("boardMapper.selectCnt");
	}

	@Override
	public BoardVo selectInfoDetail(String no, SqlSessionTemplate sst) {
		return sst.selectOne("boardMapper.selectInfoOne", no);
	}

	@Override
	public int plusLikeOne(SqlSessionTemplate sst, String no) {
		return sst.update("boardMapper.plusLikeOne", no);
	}

	@Override
	public BoardVo selectInfoOne(SqlSessionTemplate sst, String no) {
		int result = sst.update("boardMapper.increaseHit", no);
		return sst.selectOne("boardMapper.selectInfoOne", no);
	}

	@Override
	public int updateInfoOne(SqlSessionTemplate sst, BoardVo vo) {
		System.out.println("daoImpl called...");
		return sst.insert("boardMapper.updateInfoOne", vo);
	}

	@Override
	public int deleteInfoOne(SqlSessionTemplate sst, String no) {
		return sst.update("boardMapper.deleteInfoOne", no);
	}

	@Override
	public List<BoardVo> selectList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map) {
		return sst.selectList("boardMapper.selectList" , map);
	}


	@Override
	public List<BoardVo> selectQnaList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map) {
		return sst.selectList("boardMapper.selectQnaList" , map);
	}

}
