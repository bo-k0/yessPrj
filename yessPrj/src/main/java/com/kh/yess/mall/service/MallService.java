package com.kh.yess.mall.service;

import java.util.List;
import java.util.Map;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;
import com.kh.yess.mall.vo.ReviewVo;

public interface MallService {

	List<ProdVo> selectlist(Map<String, String> map, PageVo pv);

	int pageSelectCount();

	ProdVo selectProd(int no);

	List<AttachmentVo> selectProdImg(int no);

	int writeRv(ReviewVo rv);

	List<ReviewVo> selectRvlist(ReviewVo rv);

	ReviewVo selectRv(int no);

}
