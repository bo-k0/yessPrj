package com.kh.yess.community.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardPageVo;
import com.kh.yess.community.vo.BoardVo;

public interface CommunityDao {

	//게시글 작성
	public int write(SqlSessionTemplate sst, BoardVo vo);
	
	public int addProdImg(SqlSessionTemplate sst, BoardAttachmentVo vo, int i);

	public List<BoardVo> selectList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv);

	public int selectCnt(BoardPageVo bpvo, SqlSessionTemplate sst);

	public BoardVo selectInfoDetail(String no, SqlSessionTemplate sst);

	public int plusLikeOne(SqlSessionTemplate sst, String no);

	public BoardVo selectInfoOne(SqlSessionTemplate sst, String no);

	public int updateInfoOne(SqlSessionTemplate sst, BoardVo vo);

	public int deleteInfoOne(SqlSessionTemplate sst, String no);

	public List<BoardVo> selectQnaList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv);

	public List<BoardAttachmentVo> selectProdImg(SqlSessionTemplate sst, String no);

	public List<BoardVo> selectChatList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv);

	public int selectQnaCnt(BoardPageVo bpvo, SqlSessionTemplate sst);

	public int selectChatCnt(BoardPageVo bpvo, SqlSessionTemplate sst);

}
