package com.kh.yess.market.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.market.vo.MarketAttachmentVo;
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
		//return sst.selectList("marketMapper.list", map, rb);
	      log.info("[다오]마켓 검색 : " + map);
		return sst.selectList("marketMapper.list", map, rb);
	}

	// 마켓 리스트 갯수
	public int listCount(SqlSessionTemplate sst) {
		return sst.selectOne("marketMapper.listCount");
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


	// 마켓 검색
}
