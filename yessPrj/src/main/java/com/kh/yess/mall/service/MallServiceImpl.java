package com.kh.yess.mall.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.dao.MallDao;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;

@Service
public class MallServiceImpl implements MallService{
	
	@Autowired private MallDao dao;
	@Autowired private SqlSessionTemplate sst;
	
	
	@Override
	public int pageSelectCount() {
		return 0;
	}
	
	//제품리스트조회 -페이징.;;남음
	@Override
	public List<ProdVo> selectlist(Map<String, String> map, PageVo pv) {
		List<ProdVo> malllist = dao.selectMallList(sst, pv, map);
		
		return malllist;
	}
	

//--------------------------------------------------------------------------------------------------------
	//제품상세조회
	
	//제품상세조회
	@Override
	public ProdVo selectProd(int no) {
		return dao.selectProd(sst, no);
	}

	//제품상세조회 사진불러오기
	@Override
	public List<AttachmentVo> selectProdImg(int no) {
		return dao.selectProdImg(sst,no);
	}
	
	//리뷰목록조회
	@Override
	public List<ReviewVo> selectRvlist(ReviewVo rv) {
		
		return dao.selectRvlist(sst, rv);
		
	}

//--------------------------------------------------------------------------------------------------------

	//리뷰작성
	@Override
	public int writeRv(ReviewVo rv) {
		
		return dao.writeRv(sst, rv);
	}

	//리뷰상세조회
	@Override
	public ReviewVo selectRv(int no) {
		
		return dao.selectRv(sst, no);
	}

	//리뷰수정
	@Override
	public int updateRv(ReviewVo rvo) {
		return dao.updateRv(sst, rvo);
	}

	@Override
	public int deleteRv(int rvNo) {
		
		return dao.deleteRv(sst, rvNo);
	}

//--------------------------------------------------------------------------------------------------------
	
	//장바구니 상품추가
	@Override
	public int addCart(CartVo cart) {
		//같은 제품 있는지 확인
		CartVo cvo = dao.checkCart(sst, cart);
		//같은 제품 없을때
		if(cvo == null) {
			return dao.addCart(sst, cart);
		}
		
		int a = cvo.getProdNo();
		int b = cart.getProdNo();
		int cntA = cvo.getCnt();
		//최종갯수..?
		int cntB = cntA + cart.getCnt();
		//같은 제품이 있을 때엔 수량만 추가
		if(a == b) {
			cart.setCnt(cntB);
			return dao.plusCart(sst, cart);
		}
			
		//같은 제품이 없을 때엔 인서트
		return dao.addCart(sst, cart);	
		
	}

	//장바구니 목록 조회
	@Override
	public List<CartVo> showCart(int memberNo) {
		return dao.showCart(sst, memberNo);
	}

//--------------------------------------------------------------------------------------------------------
	
	@Override
	public int addZzim(CartVo prod) {
		
		//같은 제품 있는지 확인
		CartVo zzim = dao.checkZzim(sst, prod);
		
		//같은 제품 없을때
		if(zzim == null) {
			return dao.addZzim(sst, prod);
		}else {		
		//같은 제품이 이미 찜 되어 있을 때는 찜 해제
				 return 2;
		}
			
	}


	//찜 목록 조회
	@Override
	public List<CartVo> showZzim(int memberNo) {
		return dao.showZzim(sst, memberNo);
	}


	
	
//--------------------------------------------------------------------------------------------------------
	
	

}
