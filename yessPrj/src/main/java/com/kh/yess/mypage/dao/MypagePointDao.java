package com.kh.yess.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.member.vo.PointVo;

@Repository
public class MypagePointDao {

	public List<PointVo> pointList(SqlSessionTemplate sst, int memberNo) {
		return sst.selectList("pointMapper.myPointList", memberNo);
	}

}
