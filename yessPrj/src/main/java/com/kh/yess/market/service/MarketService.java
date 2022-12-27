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

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MarketService {

	@Autowired
	private SqlSessionTemplate sst;

	@Autowired
	private MarketDao dao;

	// list
	public List<MarketVo> list(Map<String, String> map, PageVo pv) {
		log.info("서비스에서 받은 map" + map);
		return dao.list(sst, map, pv);
	}

	// 마켓 전체 게시글 갯수 조회
	public int listCount() {
		return dao.listCount(sst);
	}

	// 마켓 작성
	@Transactional // 두개이상의 sql문을 실행할 때 두 개 전부 성공적으로 실행되어야 커밋됨
	public int write(MarketVo vo, List<MarketAttachmentVo> marketImgList) {

		// 마켓 글 작성
		int result = dao.write(sst, vo);
		if (result != 1) {
			return 0;
		}

		// 마켓 이미지 등록
		int result2 = 0;

		for (int i = 0; i < marketImgList.size(); i++) {

			result2 += dao.writeImg(sst, marketImgList.get(i), i);
		}
		if (result2 != marketImgList.size()) {
			return 0;
		}

		return 1;
	}

}