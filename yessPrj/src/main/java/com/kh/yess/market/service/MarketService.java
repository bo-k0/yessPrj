package com.kh.yess.market.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.dao.MarketDao;
import com.kh.yess.market.vo.MarketAttachmentVo;
import com.kh.yess.market.vo.MarketCmtVo;
import com.kh.yess.market.vo.MarketVo;


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
		log.info("[서비스] 마켓 상세조회 글번호 : " + no);
		int result = dao.increaseHit(sst, no);
		MarketVo vo = null;
		if(result == 1) {
			vo = dao.detail(sst, no);
			List<MarketAttachmentVo> changeNameList = dao.detailImg(sst, no);
			vo.setChangeNameList(changeNameList);			
		}
		
		return vo;
	}
	
	//마켓 댓글조회
	public List<MarketCmtVo> cmtList(int no) {
		MarketCmtVo cmtVo = null;
		
		List<MarketCmtVo> cmtListVo = dao.cmtList(sst, no);
		return cmtListVo;
	}
	
	//마켓 댓글갯수 조회
	public int cmtCnt(int no) {
		return dao.cmtCnt(sst, no);
	}
	
	// 마켓 수정
	@Transactional // 두개이상의 sql문을 실행할 때 두 개 전부 성공적으로 실행되어야 커밋됨
	public int edit(MarketVo vo, List<MarketAttachmentVo> marketImgList) {
		log.info("[서비스]마켓 글 수정 : " + vo.toString());
		log.info("[서비스]마켓 이미지 수정 : " + marketImgList.toString());
		
		// 마켓 글 수정
		int result1 = dao.edit(sst, vo);
		if (result1 != 1) {
			return 0;
		}

		
		// 마켓 이미지 수정 (삭제)
			int result2 = dao.editImgDelete(sst, vo);

			if(result2 !=0) {
				
				// 마켓 이미지 수정 (등록)
				
				int result3 = 0;
				for (int i = 0; i < marketImgList.size(); i++) {
					result3 += dao.editImgInsert(sst, marketImgList.get(i));
				}if (result3 != marketImgList.size()) {
					return 0;
				}
				
			}
		
		return 1;
	}


	
	//마켓 삭제
	public int delete(String no) {
		log.info("[서비스] 마켓 삭제 글번호 : " + no);
		return dao.delete(sst, no);
	}

	//댓글 등록
	public int cmtWrite(MarketCmtVo cmtVo) {
		log.info("[서비스] 댓글 등록  : " + cmtVo);
		return dao.cmtWrite(sst, cmtVo);
	}

	//댓글 삭제
	public int cmtDelete(int no) {
		log.info("[서비스] 댓글 삭제 글번호 : " + no);
		return dao.cmtDelete(sst, no);
	}

	//거래완료 변경
	public int tradeY(String no) {
		log.info("[서비스] 마켓 거래완료 : " + no);
		return dao.tradeY(sst, no);
	}






}