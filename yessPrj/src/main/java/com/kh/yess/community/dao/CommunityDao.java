package com.kh.yess.community.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardCmtVo;
import com.kh.yess.community.vo.BoardPageVo;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.member.vo.MemberVo2;

public interface CommunityDao {

	//게시글 작성
	public int write(SqlSessionTemplate sst, BoardVo vo);
	
	public int addProdImg(SqlSessionTemplate sst, BoardAttachmentVo vo, int i);

	public List<BoardVo> selectList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv);

	public int selectCnt(BoardPageVo bpvo, SqlSessionTemplate sst);

	public BoardVo selectInfoDetail(String no, SqlSessionTemplate sst);

	public int plusLikeCntOne(SqlSessionTemplate sst, String no);

	public BoardVo selectInfoOne(SqlSessionTemplate sst, String no);

	public int updateInfoOne(SqlSessionTemplate sst, BoardVo vo);

	public int deleteInfoOne(SqlSessionTemplate sst, String no);

	public List<BoardVo> selectQnaList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv);

	public List<BoardAttachmentVo> selectProdImg(SqlSessionTemplate sst, String no);

	public List<BoardVo> selectChatList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv);

	public int selectQnaCnt(BoardPageVo bpvo, SqlSessionTemplate sst);

	public int selectChatCnt(BoardPageVo bpvo, SqlSessionTemplate sst);

	//조회수 증가
	public int increaseHit(String no, SqlSessionTemplate sst);

	public int selectLike(SqlSessionTemplate sst, String no);

	public int insertCmt(BoardCmtVo cmtvo, SqlSessionTemplate sst);

	public BoardVo selectTopHit(String no, SqlSessionTemplate sst);

	public BoardVo selectTopView(String no, SqlSessionTemplate sst);

	public List<BoardCmtVo> selectCommCmt(String no, SqlSessionTemplate sst);

	public int cmtDelete(String cmtNo, SqlSessionTemplate sst);

	public int selectMyCommunityCnt(BoardPageVo bpvo, SqlSessionTemplate sst, int no);

	public List<BoardVo> selectMyCommunityList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv, int no);

	public int selectMyCommunityCommentCnt(BoardPageVo bpvo, SqlSessionTemplate sst, int no);

	public List<BoardCmtVo> selectMyCommunityCommentList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv, int no);

	public BoardVo selectTopCmt(String no, SqlSessionTemplate sst);

	public int selectAllMemberCnt(BoardPageVo bpvo, SqlSessionTemplate sst);

	public List<MemberVo2> selectAllMemberList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv);

	public MemberVo2 memberDetail(String no, SqlSessionTemplate sst);

}
