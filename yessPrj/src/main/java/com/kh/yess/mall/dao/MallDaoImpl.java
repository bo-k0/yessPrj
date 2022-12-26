package com.kh.yess.mall.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

@Repository
public class MallDaoImpl implements MallDao {

	//상품리스트 조회
	@Override
	public List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv) {
		return sst.selectList("mallMapper.selectMallList", pv);
	}

	//상품검색리스트 조회
	@Override
	public List<ProdVo> ctSearchList(SqlSessionTemplate sst, PageVo pv) {
		return sst.selectList("mallMapper.selectSearchList",pv);
	}

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

}
