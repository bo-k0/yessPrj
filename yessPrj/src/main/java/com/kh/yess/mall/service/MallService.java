package com.kh.yess.mall.service;

import java.util.List;
import java.util.Map;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.OrderVo;
import com.kh.yess.mall.vo.PayVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;

public interface MallService {

	List<ProdVo> selectlist(Map<String, String> map, PageVo pv);

	ProdVo selectProd(int no);

	List<AttachmentVo> selectProdImg(int no);

	int writeRv(ReviewVo rv);

	List<ReviewVo> selectRvlist(ReviewVo rv);

	ReviewVo selectRv(int no);

	int updateRv(ReviewVo rvo);

	int deleteRv(int rvNo);

	int addCart(CartVo cart);

	List<CartVo> showCart(int i);

	int addZzim(CartVo prod);

	List<CartVo> showZzim(int no);

	int deleteZzim(CartVo prod);

	int changeCnt(CartVo cart);

	List<CartVo> order(int[] check, int no);

	int Pay(int[] prodListNo, PayVo pay, OrderVo order);

	int deleteCart(int[] check, int no);

	int listCount(Map<String, String> map);

}
