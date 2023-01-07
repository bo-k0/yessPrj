package com.kh.yess.mall.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;

@Repository
public class MallDaoImpl implements MallDao {

	//상품리스트 조회
	@Override
	public List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map) {
		return sst.selectList("mallMapper.selectMallList", map);
	}


//-------------------------------------------------------------------------------------
	
	//제품상세조회
	@Override
	public ProdVo selectProd(SqlSessionTemplate sst, int no) {
		return sst.selectOne("mallMapper.selectProdOne",no);
	}

	//제품이미지상세조회
	@Override
	public List<AttachmentVo> selectProdImg(SqlSessionTemplate sst, int no) {
		return sst.selectList("mallMapper.selectProdImgList",no);
	}
	@Override
	public List<ReviewVo> selectRvlist(SqlSessionTemplate sst, ReviewVo rv) {
		return sst.selectList("mallMapper.selectRvList",rv);
	}

//-------------------------------------------------------------------------------------

	//리뷰작성
	@Override
	public int writeRv(SqlSessionTemplate sst, ReviewVo rv) {
		return sst.insert("mallMapper.insertRv",rv);
	}


	//리뷰상세조회
	@Override
	public ReviewVo selectRv(SqlSessionTemplate sst, int no) {
		return sst.selectOne("mallMapper.selectRv",no);
	}

	//리뷰수정
	@Override
	public int updateRv(SqlSessionTemplate sst, ReviewVo rvo) {
		return sst.update("mallMapper.updateRv",rvo);
	}

	//리뷰삭제
	@Override
	public int deleteRv(SqlSessionTemplate sst, int rvNo) {
		return sst.update("mallMapper.deleteRv", rvNo);
	}



//-------------------------------------------------------------------------------------
	
	//장바구니 상품추가
	@Override
	public int addCart(SqlSessionTemplate sst, CartVo cart) {
		return sst.insert("mallMapper.addCart",cart);
	}

	//장바구니에 같은제품 있는지 확인
	@Override
	public CartVo checkCart(SqlSessionTemplate sst, CartVo cart) {
		return sst.selectOne("mallMapper.checkCart", cart);
	}
	
	//장바구니에 같은 제품 있을 시 수량만 추가
	@Override
	public int plusCart(SqlSessionTemplate sst, CartVo cart) {
		return sst.update("mallMapper.plusCart", cart);
	}

	//장바구니 목록 조회
	@Override
	public List<CartVo> showCart(SqlSessionTemplate sst, int memberNo) {
		return sst.selectList("mallMapper.showCart",memberNo);
	}

	@Override
	public int chengeCnt(SqlSessionTemplate sst, CartVo cart) {
		return sst.update("mallMapper.changeCnt", cart);
	}
//-------------------------------------------------------------------------------------	

	//찜목록 같은 제품 있는지 확인
	@Override
	public CartVo checkZzim(SqlSessionTemplate sst, CartVo prod) {
		return sst.selectOne("mallMapper.checkZzim", prod);
	}

	//찜목록에 제품추가
	@Override
	public int addZzim(SqlSessionTemplate sst, CartVo prod) {
		return sst.insert("mallMapper.addZzim", prod);
	}

	//찜목록 제품 삭제
	@Override
	public int deleteZzim(SqlSessionTemplate sst, CartVo prod) {
		return sst.delete("mallMapper.deleteZzim",prod);
	}

	//찜 리스트 보기
	@Override
	public List<CartVo> showZzim(SqlSessionTemplate sst, int memberNo) {
		return sst.selectList("mallMapper.showZzim", memberNo);
	}

//-------------------------------------------------------------------------------------	
	
	@Override
	public CartVo orderOne(SqlSessionTemplate sst, CartVo vo) {
		return sst.selectOne("mallMapper.orderOne", vo);
	}




}
