package com.kh.yess.market.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.market.dao.MarketDao;
import com.kh.yess.market.vo.MarketAttachmentVo;
import com.kh.yess.market.vo.MarketVo;
import com.kh.yess.news.vo.NewsVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MarketService {

	@Autowired
	private SqlSessionTemplate sst;

	@Autowired
	private MarketDao dao;

	// 마켓 리스트
	public List<MarketVo> list(Map<String, String> map, PageVo pv) {
		log.info("[서비스에]마켓 검색 : " + map);
		return dao.list(sst, map, pv);
	}

	// 마켓 전체 게시글 갯수 조회
	public int listCount(Map<String, String> map) {
		return dao.listCount(sst, map);
	}

	// 마켓 작성
	@Transactional // 두개이상의 sql문을 실행할 때 두 개 전부 성공적으로 실행되어야 커밋됨
	public int write(MarketVo vo, List<MarketAttachmentVo> marketImgList) {
		log.info("[서비스]마켓 글 작성 : " + vo.toString());
		log.info("[서비스]마켓 이미지 업로드 : " + marketImgList.toString());
		
		// 마켓 글 작성
		int result = dao.write(sst, vo);
		if (result != 1) {
			return 0;
		}

		// 마켓 이미지 업로드
		int result2 = 0;

		for (int i = 0; i < marketImgList.size(); i++) {
			result2 += dao.writeImg(sst, marketImgList.get(i));
		}if (result2 != marketImgList.size()) {
			return 0;
		}
		return 1;
	}

	//마켓 상세 (글 + 이미지)
	public MarketVo detail(int no) {
		log.info("[서비스] 마켓 상세조회 글번호 : ", no);
		
		MarketVo vo = dao.detail(sst, no);
		List<MarketAttachmentVo> changeNameList = dao.detailImg(sst, no);
		vo.setChangeNameList(changeNameList);
		
		return vo;
	}
	
	//마켓 수정
	public int edit(int no, MarketVo vo, List<MarketAttachmentVo> marketImgList) {
		
		log.info("[서비스]마켓 글 수정 : " + vo.toString());
		log.info("[서비스]마켓 이미지 수정 : " + marketImgList.toString());
		
		// 마켓 글 작성
		int result = dao.edit(sst, vo);
		if (result != 1) {
			return 0;
		}

		// 마켓 이미지 업로드
		int result2 = 0;

		for (int i = 0; i < marketImgList.size(); i++) {
			result2 += dao.editImg(sst, marketImgList.get(i));
		}if (result2 != marketImgList.size()) {
			return 0;
		}
		return 1;
	}
	
	//마켓 삭제
	public int delete(String no) {
		log.info("[서비스] 마켓 삭제 글번호 : ", no);
		return dao.delete(sst, no);
	}



}