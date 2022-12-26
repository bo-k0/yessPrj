package com.kh.yess.mall.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.dao.MallAdminDao;
import com.kh.yess.mall.dao.MallDao;
import com.kh.yess.mall.vo.ProdVo;

@Service
public class MallAdminServiceImpl implements MallAdminService{
	
	@Autowired private MallAdminDao adao;
	@Autowired private SqlSessionTemplate sst;
	
	
	
	
	@Override
	public List<ProdVo> selectlist(PageVo pv) {
		
		List<ProdVo> malllist = adao.selectMallList(sst, pv);
		
		return malllist;
	}




	@Override
	public int pageSelectCount() {
		return 0;
	}




	@Override
	public int addProd(ProdVo vo) {
		
		return adao.addProd(sst, vo);
		
	}
	
	
	
	

}
