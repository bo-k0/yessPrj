package com.kh.yess.mall.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.CartVo;
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


}
