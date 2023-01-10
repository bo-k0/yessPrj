package com.kh.yess.faq.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.faq.vo.FaqVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class FaqDao {

	public List<FaqVo> faqList(SqlSessionTemplate sst) {
		return sst.selectList("faqMapper.faqList");
	}

}
