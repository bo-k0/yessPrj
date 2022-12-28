package com.kh.yess.mall.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

@Repository
public class MallAdminDaoImpl implements MallAdminDao {


	@Override
	public List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map) {
		return sst.selectList("mallMapper.selectMallList", pv);
	}

	//------------------------------------------------------------------------------------------
	
	//상품등록
	@Override
	public int addProd(SqlSessionTemplate sst, ProdVo vo) {
		return sst.insert("mallMapper.addProd",vo);
	}

	//상품이미지등록
	@Override
	public int addProdImg(SqlSessionTemplate sst, AttachmentVo vo, int i) {
				
		if(i == 0) {
			return sst.insert("mallMapper.addProdImgThumb", vo);			
		}else {
			return sst.insert("mallMapper.addProdImg", vo);			
		}
		
	}

	//상품수정
	@Override
	public int updateProd(SqlSessionTemplate sst, ProdVo vo) {	
		//상품정보업데이트
		return sst.update("mallMapper.updateProd",vo);

	}

	@Override
	public int updateProdImg(SqlSessionTemplate sst, ProdVo vo) {
		//상품이미지 새로 추가해서 수정할 때
		return sst.update("mallMapper.updateProdImg", vo);
	}

	
	//-----------------------------------------------------------------------------------------

}
