package com.kh.yess.faq.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.faq.dao.FaqDao;
import com.kh.yess.faq.vo.FaqVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class FaqService {
	
	@Autowired
	private SqlSessionTemplate sst;
	@Autowired
	private FaqDao dao;

	////faq 리스트
	public List<FaqVo> faqList() {
		return dao.faqList(sst);
	}

}
