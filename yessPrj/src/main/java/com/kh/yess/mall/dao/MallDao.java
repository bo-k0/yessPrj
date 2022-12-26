package com.kh.yess.mall.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

public interface MallDao {

	List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map);

	List<ProdVo> selectSearchList(SqlSessionTemplate sst, PageVo pv);

	ProdVo selectProd(SqlSessionTemplate sst, int no);

	List<AttachmentVo> selectProdImg(SqlSessionTemplate sst, int no);


}
