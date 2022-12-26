package com.kh.yess.community.service;

import java.util.List;
import java.util.Map;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.vo.BoardVo;

public interface CommunityService {


	//게시글 작성
	public int write(BoardVo vo);

	//게시글 목록
	public List<BoardVo> selectList(Map<String, String> map, PageVo pv);

	//게시글 갯수 조회하기
	public int selectCnt();

	public BoardVo infoDetail(String no);

	public int plusLikeOne(String no);

	public BoardVo selectInfoOne(String no);

	public int infoEdit(BoardVo vo);

	public int deleteInfo(String no);

	public List<BoardVo> selectQnaList(Map<String, String> map, PageVo pv);
	
}
