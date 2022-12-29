package com.kh.yess.mall.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.dao.MallDao;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;

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
	public List<ProdVo> selectlist(Map<String, String> map, PageVo pv) {
		List<ProdVo> malllist = dao.selectMallList(sst, pv, map);
		
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
	
	//리뷰조회
	@Override
	public List<ReviewVo> selectRvlist(ReviewVo rv) {
		
		return dao.selectRvlist(sst, rv);
		
	}

//--------------------------------------------------------------------------------------------------------

	//리뷰작성
	@Override
	public int writeRv(ReviewVo rv) {
		
		return dao.writeRv(sst, rv);
	}

	@Override
	public ReviewVo selectRv(int no) {
		
		return dao.selectRv(sst, no);
	}


	
	

}
