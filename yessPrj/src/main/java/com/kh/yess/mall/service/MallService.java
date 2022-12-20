package com.kh.yess.mall.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.mall.dao.MallDao;

@Service
public class MallService {
	
	@Autowired private MallDao dao;
	@Autowired private SqlSessionTemplate sst;

}
