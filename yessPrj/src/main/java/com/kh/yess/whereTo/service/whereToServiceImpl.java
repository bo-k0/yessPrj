package com.kh.yess.whereTo.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.whereTo.dao.whereToDao;
import com.kh.yess.whereTo.vo.WhereToVo;

@Service
public class whereToServiceImpl implements WhereToService{

	@Autowired
	private SqlSessionTemplate sst;
	
	@Autowired
	private whereToDao dao;

	@Override
	public List<WhereToVo> whereToList() {		
		return dao.whereToList(sst);
	}

	@Override
	public WhereToVo whereToOne(int no) {
		return dao.whereToOne(sst, no);
	}
	
	
}
