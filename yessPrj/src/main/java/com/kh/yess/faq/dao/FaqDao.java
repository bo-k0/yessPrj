package com.kh.yess.faq.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.faq.vo.FaqVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class FaqDao {

	//faq 리스트
	public List<FaqVo> faqList(SqlSessionTemplate sst, int typeNo) {
		return sst.selectList("faqMapper.faqList", typeNo);
	}

	//faq 등록
	public int faqWrite(SqlSessionTemplate sst, FaqVo vo) {
		log.info("[다오] faq 등록 : " + vo.toString());
		return sst.insert("faqMapper.faqWrite", vo);
	}

}
