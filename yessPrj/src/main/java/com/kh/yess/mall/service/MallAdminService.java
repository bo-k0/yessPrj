package com.kh.yess.mall.service;

import java.util.List;
import java.util.Map;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

public interface MallAdminService {

	List<ProdVo> selectlist(Map<String, String> map, PageVo pv);

	int pageSelectCount();

	int addProd(ProdVo vo, List<AttachmentVo> imglist);

	int updateProd(ProdVo vo, List<AttachmentVo> imglist);

}
