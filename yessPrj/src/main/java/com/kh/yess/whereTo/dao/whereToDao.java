package com.kh.yess.whereTo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.whereTo.vo.WhereToVo;

public interface whereToDao {

	public List<WhereToVo> whereToList(SqlSessionTemplate sst);

	public WhereToVo whereToOne(SqlSessionTemplate sst, int no);

}
