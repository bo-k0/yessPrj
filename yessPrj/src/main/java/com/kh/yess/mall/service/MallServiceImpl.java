package com.kh.yess.mall.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.dao.MallDao;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

@Service
public class MallServiceImpl implements MallService{
	
	@Autowired private MallDao dao;
	@Autowired private SqlSessionTemplate sst;
	
	
	@Override
	public int pageSelectCount() {
		return 0;
	}
	
	//제품리스트조회 -페이징.;;남음
	@Override
	public List<ProdVo> selectlist(PageVo pv) {
		
		List<ProdVo> malllist = dao.selectMallList(sst, pv);
		
		return malllist;
	}

	//상품검색리스트조회
	@Override
	public List<ProdVo> selectSearchlist(PageVo pv) {
		
		List<ProdVo> malllist = dao.ctSearchList(sst, pv);
		return malllist;
	
	}

//--------------------------------------------------------------------------------------------------------
	
	//제품상세조회
	@Override
	public ProdVo selectProd(int no) {
		return dao.selectProd(sst, no);
	}

	//제품상세조회 사진불러오기
	@Override
	public List<AttachmentVo> selectProdImg(int no) {
		return dao.selectProdImg(sst,no);
	}
	
	

}
