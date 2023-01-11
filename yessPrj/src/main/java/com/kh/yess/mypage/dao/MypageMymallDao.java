package com.kh.yess.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.vo.CartVo;
import com.kh.yess.mall.vo.OrderVo;

@Repository
public class MypageMymallDao {

	public List<OrderVo> selectOrderList(SqlSessionTemplate sst, int no, PageVo pv) {
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		
		return sst.selectList("mallMapper.selectOrderList", no, rb);
	}

	public int myListCount(SqlSessionTemplate sst, int memberNo) {
		return sst.selectOne("marketMapper.myListCount", memberNo);
	}
}
