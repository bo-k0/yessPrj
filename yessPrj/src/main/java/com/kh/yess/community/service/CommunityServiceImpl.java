package com.kh.yess.community.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.community.dao.CommunityDao;
import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.vo.BoardVo;

@Service
public class CommunityServiceImpl implements CommunityService {
	
	@Autowired
	private CommunityDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;


	@Override
	public int write(BoardVo vo) {
		return dao.write(sst , vo);
	}

	@Override
	public List<BoardVo> selectList(PageVo pv) {
		return dao.selectList(sst, pv);
	}

	//게시글 갯수
	@Override
	public int selectCnt() {
		return dao.selectCnt(sst);
	}

	@Override
	public BoardVo infoDetail(String no) {
		return dao.selectInfoDetail(no, sst);
	}

	@Override
	public int plusLikeOne(String no) {
		return dao.plusLikeOne(sst, no);
	}


}
