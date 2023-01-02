package com.kh.yess.whereTo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.whereTo.vo.WhereToVo;

@Repository
public class whereToDaoImpl implements whereToDao{

	@Override
	public List<WhereToVo> whereToList(SqlSessionTemplate sst) {
		return sst.selectList("whereToMapper.whereToList");
	}

	@Override
	public WhereToVo whereToOne(SqlSessionTemplate sst, int no) {
		return sst.selectOne("whereToMapper.whereToOne", no);
	}

}
