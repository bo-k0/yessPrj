package com.kh.yess.community.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardCmtVo;
import com.kh.yess.community.vo.BoardPageVo;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.member.vo.MemberVo;
import com.kh.yess.news.vo.NewsVo;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class CommunityDaoImpl implements CommunityDao {

	@Override
	public int write(SqlSessionTemplate sst, BoardVo vo) {
		return sst.insert("boardMapper.write", vo );
	}

	//이미지등록
	@Override
	public int addProdImg(SqlSessionTemplate sst, BoardAttachmentVo vo, int i) {
				
		if(i == 0) {
			return sst.insert("boardMapper.addProdImgThumb", vo);			
		}else {
			return sst.insert("boardMapper.addProdImg", vo);			
		}
		
	}
	
	@Override
	public int selectCnt(BoardPageVo bpvo, SqlSessionTemplate sst) {
		
		log.debug("start dao : " + bpvo.toString());
		
		int cnt = sst.selectOne("boardMapper.selectCnt" , bpvo);
		
		return cnt;
	}
	
	@Override
	public int selectQnaCnt(BoardPageVo bpvo, SqlSessionTemplate sst) {
		
		int cnt = sst.selectOne("boardMapper.selectQnaCnt" , bpvo);
		
		return cnt;
	}
	
	@Override
	public int selectChatCnt(BoardPageVo bpvo, SqlSessionTemplate sst) {
		
		int cnt = sst.selectOne("boardMapper.selectChatCnt" , bpvo);
		
		return cnt;
	}

	@Override
	public BoardVo selectInfoDetail(String no, SqlSessionTemplate sst) {
		System.out.println("selectInfoDetail called...");
		return sst.selectOne("boardMapper.selectInfoOne", no);
	}

	@Override
	public BoardVo selectInfoOne(SqlSessionTemplate sst, String no) {
//		int result = sst.update("boardMapper.increaseHit", no);
		return sst.selectOne("boardMapper.selectInfoOne", no);
	}

	@Override
	public int updateInfoOne(SqlSessionTemplate sst, BoardVo vo) {
		System.out.println("daoImpl called...");
		return sst.insert("boardMapper.updateInfoOne", vo);
	}

	@Override
	public int deleteInfoOne(SqlSessionTemplate sst, String no) {
		return sst.update("boardMapper.deleteInfoOne", no);
	}

	@Override
	public List<BoardVo> selectQnaList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv) {
		
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);		
		
		log.debug("start dao : " + bpvo.toString());
		
		List<BoardVo> list = sst.selectList("boardMapper.selectQnaList",bpvo, rb);
		
		return list;
	}

	@Override
	public List<BoardAttachmentVo> selectProdImg(SqlSessionTemplate sst, String no) {
		return sst.selectList("boardMapper.selectProdImgList",no);
	}


	@Override
	public List<BoardVo> selectList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv) {
		
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);		
		
		log.debug("start dao : " + bpvo.toString());
		
		List<BoardVo> list = sst.selectList("boardMapper.selectList",bpvo, rb);
		
		return list;
	}

	@Override
	public List<BoardVo> selectChatList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv) {
		
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);		
		
		log.debug("start dao : " + bpvo.toString());
		
		List<BoardVo> list = sst.selectList("boardMapper.selectChatList",bpvo, rb);
		
		return list;
	}

	//조회수 증가
	@Override
	public int increaseHit(String no, SqlSessionTemplate sst) {
		return sst.update("boardMapper.increaseHit",no);
	}

	//좋아요 조회
	@Override
	public int selectLike(SqlSessionTemplate sst, String no) {
		System.out.println("selectLike 실행중");
		return sst.selectOne("boardMapper.selectLike" , no);
	}

	@Override
	public int plusLikeCntOne(SqlSessionTemplate sst, String no) {
		System.out.println("plusLikeOne 실행중");
		System.out.println("no : " + no);
		return sst.update("boardMapper.plusLikeCntOne", no);
	}
	
	@Override
	public int insertCmt(BoardCmtVo cmtvo, SqlSessionTemplate sst) {
		System.out.println("insertCmt 실행중");
		return sst.insert("boardMapper.insertCmt", cmtvo );
	}



	



}
