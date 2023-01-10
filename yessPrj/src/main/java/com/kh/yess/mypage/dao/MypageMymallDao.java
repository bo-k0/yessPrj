package com.kh.yess.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.OrderVo;

@Repository
public class MypageMymallDao {

	public List<OrderVo> selectOrderList(SqlSessionTemplate sst, int no) {
		return sst.selectList("mallMapper.selectOrderList", no);
	}
}
