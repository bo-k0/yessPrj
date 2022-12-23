package com.kh.yess.community.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.yess.community.dao.CommunityDao;
import com.kh.yess.community.vo.BoardVo;

@Service
public class CommunityService {

	@Autowired
	private CommunityDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;

	//게시글 작성
	//@Transactional //메소드 안에 내용을 하나의 트랜잭션으로 처리하게 해줌 (메소드 둘 다 예외없이 처리가 됐을 때 그 때 커밋이 되게끔)
	public int write(BoardVo vo) {
		
		//int result1 = dao.write(sst, vo);
		//int result2 = dao.updateCnt(sst);
		
		return dao.write(sst , vo);
	}

	//게시글 목록
	public List<BoardVo> selectList() {
		return dao.selectList(sst);
	}
	
}
