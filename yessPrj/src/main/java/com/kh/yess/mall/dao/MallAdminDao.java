package com.kh.yess.mall.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

public interface MallAdminDao {

	List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map);

	int addProd(SqlSessionTemplate sst, ProdVo vo);

	int addProdImg(SqlSessionTemplate sst, AttachmentVo vo, int i);

	int updateProd(SqlSessionTemplate sst, ProdVo vo);

	int updateProdImg(SqlSessionTemplate sst, ProdVo vo);

	int addNewProdImg(SqlSessionTemplate sst, AttachmentVo vo, int i);

}
