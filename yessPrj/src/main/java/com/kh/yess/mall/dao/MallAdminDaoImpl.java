package com.kh.yess.mall.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.ProdVo;

@Repository
public class MallAdminDaoImpl implements MallAdminDao {


	@Override
	public List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv) {
		return sst.selectList("mallMapper.selectMallList", pv);
	}

}
