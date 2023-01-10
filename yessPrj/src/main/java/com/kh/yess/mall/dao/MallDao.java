package com.kh.yess.mall.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.OrderVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;

public interface MallDao {

	List<ProdVo> selectMallList(SqlSessionTemplate sst, PageVo pv, Map<String, String> map);

	ProdVo selectProd(SqlSessionTemplate sst, int no);

	List<AttachmentVo> selectProdImg(SqlSessionTemplate sst, int no);

	int writeRv(SqlSessionTemplate sst, ReviewVo rv);

	List<ReviewVo> selectRvlist(SqlSessionTemplate sst, ReviewVo rv);

	ReviewVo selectRv(SqlSessionTemplate sst, int no);

	int updateRv(SqlSessionTemplate sst, ReviewVo rvo);

	int deleteRv(SqlSessionTemplate sst, int rvNo);

	int addCart(SqlSessionTemplate sst, CartVo cart);

	CartVo checkCart(SqlSessionTemplate sst, CartVo cart);

	int plusCart(SqlSessionTemplate sst, CartVo cart);

	List<CartVo> showCart(SqlSessionTemplate sst, int no);

	//
	CartVo checkZzim(SqlSessionTemplate sst, CartVo prod);

	int addZzim(SqlSessionTemplate sst, CartVo prod);

	int deleteZzim(SqlSessionTemplate sst, CartVo prod);

	List<CartVo> showZzim(SqlSessionTemplate sst, int memberNo);

	int chengeCnt(SqlSessionTemplate sst, CartVo cart);

	CartVo orderOne(SqlSessionTemplate sst, CartVo vo);

	List<OrderVo> orderOne(SqlSessionTemplate sst, OrderVo order);

	int insertOrder(SqlSessionTemplate sst, OrderVo order);

	int insertOrderInfo(SqlSessionTemplate sst, OrderVo order);

	int insertPayInfo(SqlSessionTemplate sst, OrderVo order);

	int deleteCart(SqlSessionTemplate sst, OrderVo order);

	int deleteCart(SqlSessionTemplate sst, CartVo cart);





}
