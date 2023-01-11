package com.kh.yess.mall.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

@Repository
public class MallAdminDaoImpl implements MallAdminDao {

	//상품리스트조회
	@Override
	public List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map) {
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		
		return sst.selectList("mallMapper.selectMallList", pv, rb);
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

	@Override
	public int addNewProdImg(SqlSessionTemplate sst, AttachmentVo vo, int i) {
		//수정이미지삽입
		if(i == 0) {
			return sst.insert("mallMapper.updateNewProdImgThumb", vo);			
		}else {
			return sst.insert("mallMapper.updateNewProdImg", vo);			
		}
	}

	//상품삭제
	@Override
	public int deleteProd(SqlSessionTemplate sst, int no) {
		return sst.update("mallMapper.deleteProd", no);
	}

	//삭제할 상품의 이미지 상태 변경
	@Override
	public int deleteProdImg(SqlSessionTemplate sst, int no) {
		return sst.update("mallMapper.deleteProdImg",no);
	}

	
	//-----------------------------------------------------------------------------------------

}
