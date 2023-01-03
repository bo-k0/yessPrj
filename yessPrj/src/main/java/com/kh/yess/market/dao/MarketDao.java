package com.kh.yess.market.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.vo.MarketAttachmentVo;
import com.kh.yess.market.vo.MarketCmtVo;
import com.kh.yess.market.vo.MarketVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MarketDao {

	// 마켓 리스트 
	public List<MarketVo> list(SqlSessionTemplate sst, Map<String, String> map, PageVo pv) {
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
	      int limit = pv.getBoardLimit();
	      RowBounds rb = new RowBounds(offset, limit);
	      log.info("[다오]마켓 검색 : " + map);
		return sst.selectList("marketMapper.list", map, rb);
	}
	
	
	
	// 마켓 리스트 갯수
	public int listCount(SqlSessionTemplate sst, Map<String, String> map) {
		return sst.selectOne("marketMapper.listCount", map);
	}

	//마켓 글 작성
	public int write(SqlSessionTemplate sst, MarketVo vo) {
		log.info("[다오]마켓 글 작성 : " + vo.toString());
		return sst.insert("marketMapper.write", vo);
	}
	
	//마켓 이미지 업로드
	public int writeImg(SqlSessionTemplate sst, MarketAttachmentVo marketAttachmentVo) {
		log.info("[다오]마켓 이미지 업로드 : " + marketAttachmentVo.toString());
		return sst.insert("marketMapper.writeImg", marketAttachmentVo);
		
//		if(i == 0) {
//			return sst.insert("marketMapper.writeImgThumb", marketAttachmentVo);			
//		}else {
//			return sst.insert("marketMapper.writeImg", marketAttachmentVo);			
//		}
	}

	//마켓 상세 (글)
	public MarketVo detail(SqlSessionTemplate sst, int no) {
		log.info("[다오] 마켓 상세조회 글번호 : ", no);
		return sst.selectOne("marketMapper.detail", no);
//		 sst.selectList("marketMapper.detailImg", no);
//		 sst.selectList("marketMapper.detailCmt", no);
	}

	//마켓 상세 (이미지)
	public List<MarketAttachmentVo> detailImg(SqlSessionTemplate sst, int no) {
		return sst.selectList("marketMapper.detailImg", no);
	}
	
	//마켓 댓글조회
	public List<MarketCmtVo> cmtList(SqlSessionTemplate sst, int no) {
		return sst.selectList("marketMapper.cmtList", no);
	}
	
	//마켓 댓글갯수 조회
	public int cmtCnt(SqlSessionTemplate sst, int no) {
		return sst.selectOne("marketMapper.cmtCnt", no);
	}
	
	//마켓 상세 조회수 증가
	public int increaseHit(SqlSessionTemplate sst, int no) {
		return sst.update("marketMapper.increaseHit", no);
	}
	
	//마켓 글 수정
	public int edit(SqlSessionTemplate sst, MarketVo vo) {
		log.info("[다오]마켓 글 수정 : " + vo.toString());
		return sst.update("marketMapper.edit", vo);
	}

	//마켓 이미지 수정
	public int editImg(SqlSessionTemplate sst, MarketAttachmentVo marketAttachmentVo) {
		log.info("[다오]마켓 이미지 수정 : " + marketAttachmentVo.toString());
		return sst.update("marketMapper.editImg", marketAttachmentVo);
	}
	
	//마켓 삭제
	public int delete(SqlSessionTemplate sst, String no) {
		log.info("[다오] 마켓 삭제 글번호 : ", no);
		return sst.update("marketMapper.delete", no);
	}













}
