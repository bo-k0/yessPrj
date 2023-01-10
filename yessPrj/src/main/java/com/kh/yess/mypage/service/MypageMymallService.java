package com.kh.yess.mypage.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.OrderVo;
import com.kh.yess.mypage.dao.MypageMymallDao;

@Service
public class MypageMymallService {
	
	@Autowired
	private MypageMymallDao mmdao;
	
	@Autowired
	private SqlSessionTemplate sst;

	public List<OrderVo> selectOrderList(int memberNo) {
		
		return mmdao.selectOrderList(sst, memberNo);
		
	}

}
