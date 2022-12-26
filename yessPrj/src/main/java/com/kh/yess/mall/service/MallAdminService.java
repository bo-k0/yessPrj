package com.kh.yess.mall.service;

import java.util.List;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.ProdVo;

public interface MallAdminService {

	List<ProdVo> selectlist(PageVo pv);

	int pageSelectCount();

	int addProd(ProdVo vo);

}
