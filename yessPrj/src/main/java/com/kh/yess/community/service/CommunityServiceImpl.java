package com.kh.yess.community.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.yess.community.dao.CommunityDao;
import com.kh.yess.community.page.PageVo;
import com.kh.yess.community.vo.BoardAttachmentVo;
import com.kh.yess.community.vo.BoardCmtVo;
import com.kh.yess.community.vo.BoardPageVo;
import com.kh.yess.community.vo.BoardVo;
import com.kh.yess.member.vo.MemberVo;

@Service
public class CommunityServiceImpl implements CommunityService {
	
	@Autowired
	private CommunityDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;


	//글 작성 (이미지도 함께)
	@Override
	@Transactional //두개이상의 sql문을 실행할 때 두 개 전부 성공적으로 실행되어야 커밋됨
	public int write(BoardVo vo) {
		
		//등록코드
		int result = dao.write(sst, vo);
		
		return 1;
		
		//원래내꺼
		//return dao.write(sst , vo, imglist);
	}

	@Override
	@Transactional
	public BoardVo infoDetail(String no) {

		//조회수 증가
		int result = dao.increaseHit(no,sst);
		
		System.out.println("조회수 증가 result : " + result);
		return dao.selectInfoDetail(no, sst);
	}

	
	@Override
	@Transactional
	public String plusLikeOne(String no) {
		
		//좋아요
		int result = dao.plusLikeCntOne(sst, no);

		int recomm = 1;
		if(result == 1) {
			recomm = dao.selectLike(sst, no);
		}
		
		String str = String.valueOf(recomm);
		return str;
	}

	@Override
	public BoardVo selectInfoOne(String no) {
		return dao.selectInfoOne(sst, no);
	}

	@Override
	public int infoEdit(BoardVo vo) {
		System.out.println("serviceImpl called..");
		return dao.updateInfoOne(sst, vo);
	}

	@Override
	public int deleteInfo(String no) {
		return dao.deleteInfoOne(sst, no);
	}

	@Override
	public List<BoardVo> selectList(BoardPageVo bpvo, PageVo pv) {
		return dao.selectList(sst, bpvo, pv);
	}

	@Override
	public List<BoardVo> selectQnaList(BoardPageVo bpvo, PageVo pv) {
		return dao.selectQnaList(sst, bpvo, pv);
	}

	@Override
	public List<BoardAttachmentVo> selectProdImg(String no) {
		return dao.selectProdImg(sst,no);
	}

	@Override
	public List<BoardVo> selectChatList(BoardPageVo bpvo, PageVo pv) {
		return dao.selectChatList(sst, bpvo, pv);
	}

	//게시글 갯수
	@Override
	public int selectCnt(BoardPageVo bpvo) {
		return dao.selectCnt(bpvo, sst);
	}

	@Override
	public int selectQnaCnt(BoardPageVo bpvo) {
		return dao.selectQnaCnt(bpvo, sst);
	}

	@Override
	public int selectChatCnt(BoardPageVo bpvo) {
		return dao.selectChatCnt(bpvo, sst);
	}

	@Override
	public int writeCmt(BoardCmtVo cmtvo) {
		return dao.insertCmt(cmtvo, sst);
	}

	@Override
	public BoardVo selectTopHit(String no) {
		return dao.selectTopHit(no, sst);
	}

	@Override
	public BoardVo selectTopView(String no) {
		return dao.selectTopView(no, sst);
	}

	@Override
	public List<BoardCmtVo> selectCommCmt(String no) {
		return dao.selectCommCmt(no, sst);
	}




}
