package com.kh.yess.mall.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.dao.MallAdminDao;
import com.kh.yess.mall.dao.MallDao;
import com.kh.yess.mall.vo.AttachmentVo;
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
	@Transactional //두개이상의 sql문을 실행할 때 두 개 전부 성공적으로 실행되어야 커밋됨
	public int addProd(ProdVo vo, List<AttachmentVo> imglist) {

		int result = adao.addProd(sst, vo);
		if(result != 1) {
			return 0;
		}
		
		int result2 = 0;
		
		for(int i=0; i<imglist.size(); i++) {
			
			result2 += adao.addProdImg(sst, imglist.get(i),i);
		}
		
		if(result2 != imglist.size()){
			return 0;
		}
		return 1;
			
	}
	
	
	
	

}
