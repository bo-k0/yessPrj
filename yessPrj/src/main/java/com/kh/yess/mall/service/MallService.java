package com.kh.yess.mall.service;

import java.util.List;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.ProdVo;

public interface MallService {

	List<ProdVo> selectlist(PageVo pv);

	int pageSelectCount();

	List<ProdVo> selectSearchlist(PageVo pv);

}
