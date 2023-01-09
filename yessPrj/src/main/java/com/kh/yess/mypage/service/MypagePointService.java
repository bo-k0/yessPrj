package com.kh.yess.mypage.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.member.vo.PointVo;
import com.kh.yess.mypage.dao.MypagePointDao;

@Service
public class MypagePointService {

	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private MypagePointDao dao;

	public List<PointVo> pointList(int memberNo) {
		return dao.pointList(sst, memberNo);
	}
	
}
