package com.kh.yess.mall.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;

@Repository
public class MallDaoImpl implements MallDao {

	//상품리스트 조회
	@Override
	public List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map) {
		return sst.selectList("mallMapper.selectMallList", map);
	}


//-------------------------------------------------------------------------------------
	
	//제품상세조회
	@Override
	public ProdVo selectProd(SqlSessionTemplate sst, int no) {
		return sst.selectOne("mallMapper.selectProdOne",no);
	}

	//제품이미지상세조회
	@Override
	public List<AttachmentVo> selectProdImg(SqlSessionTemplate sst, int no) {
		return sst.selectList("mallMapper.selectProdImgList",no);
	}
	@Override
	public List<ReviewVo> selectRvlist(SqlSessionTemplate sst, ReviewVo rv) {
		return sst.selectList("mallMapper.selectRvList",rv);
	}

//-------------------------------------------------------------------------------------

	//리뷰작성
	@Override
	public int writeRv(SqlSessionTemplate sst, ReviewVo rv) {
		return sst.insert("mallMapper.insertRv",rv);
	}


	//리뷰상세조회
	@Override
	public ReviewVo selectRv(SqlSessionTemplate sst, int no) {
		return sst.selectOne("mallMapper.selectRv",no);
	}


	@Override
	public int updateRv(SqlSessionTemplate sst, ReviewVo rvo) {
		return sst.update("mallMapper.updateRv",rvo);
	}




}
