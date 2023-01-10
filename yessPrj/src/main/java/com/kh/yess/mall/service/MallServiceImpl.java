package com.kh.yess.mall.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.dao.MallDao;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.OrderVo;
import com.kh.yess.mall.vo.PayVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;
import com.kh.yess.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
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

	//장바구니 수량변경
	@Override
	public int changeCnt(CartVo cart) {
		return dao.chengeCnt(sst, cart);
	}
	
	//장바구니 제품 삭제
	@Override
	public int deleteCart(int[] check, int no) {
		
		int result = 0;
		
		for(int i = 0; i < check.length; i++ ) {
			CartVo cart = new CartVo();
			cart.setMemberNo(no);
			cart.setProdNo(check[i]);
			result =+ dao.deleteCart(sst, cart);
		}
		
		if(result == check.length) {
			result = 1;
		}
		
		return result;
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

	//찜제품삭제
	@Override
	public int deleteZzim(CartVo prod) {
		return dao.deleteZzim(sst,  prod);
	}
	
	
//--------------------------------------------------------------------------------------------------------
	
	//주문페이지
	@Override
	public List<CartVo> order(int[] check, int no) {
		
		
		List<CartVo> orderList = new ArrayList<>();
		for(int i = 0; i < check.length; i++ ) {
			CartVo vo = new CartVo();
			vo.setMemberNo(no);
			vo.setProdNo(check[i]);
			vo = dao.orderOne(sst, vo);
			orderList.add(vo);
			log.debug(orderList.toString());
		}
		
		return orderList;
	}

	//주문완료했을때
	@Override
	@Transactional
	public int Pay(int[] prodListNo, PayVo pay, OrderVo order) {

		//주문정보 넣기
		int result = dao.insertOrder(sst, order);
		int result2 = 0;
		int result3 = 0;
		int result4 = 0;
		
		//주문번호에 해당하는 제품, 수량 넣기
		if(result == 1) {
			
			for(int i=0; i<prodListNo.length; i++) {
				log.info(""+prodListNo[i]);
							
				//제품번호로 장바구니에서 수량 조회해서 담아오기
				int prodno = prodListNo[i];
				order.setProdNo(prodno);
				
				OrderVo orderList = dao.orderOne(sst, order);
				//주문번호, 수량 주문정보에 삽입
				result2 += dao.insertOrderInfo(sst, orderList);
			}
			log.info("result2 : "+result2);
		}
		
		//결제정보 넣기
		if(result2 == prodListNo.length) {
			result3 = dao.insertPayInfo(sst, pay);
		}
		
		log.info("result3 : "+result3);
		
		//장바구니에서 제품 삭제
		if(result3 == 1) {
			
			for(int i=0; i<prodListNo.length; i++) {
				log.info(""+prodListNo[i]);
							
				int prodno = prodListNo[i];
				order.setProdNo(prodno);
				
				//구매한 제품번호에 해당하는 물품 장바구니에서 삭제
				result4 += dao.deleteCart(sst, order);
			}
			log.info("result4 : "+result4);
		}
		
		if(result4 == prodListNo.length){
			result4 = 1;
		}
		return result4;
		
		
	}


}
