package com.kh.yess.mall.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.ProdVo;

public interface MallAdminDao {

	List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv);

}
