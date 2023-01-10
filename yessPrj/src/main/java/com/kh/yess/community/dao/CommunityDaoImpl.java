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
import com.kh.yess.member.vo.MemberVo2;
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
	public int selectMyCommunityCnt(BoardPageVo bpvo, SqlSessionTemplate sst, int no) {
		
		int cnt = sst.selectOne("boardMapper.selectMyCommunityCnt" , no);
		System.out.println("selectMyCommunityCnt :: " + cnt);
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
		return sst.selectOne("boardMapper.selectInfoOne", no);
	}

	@Override
	public BoardVo selectInfoOne(SqlSessionTemplate sst, String no) {
//		int result = sst.update("boardMapper.increaseHit", no);
		return sst.selectOne("boardMapper.selectInfoOne", no);
	}

	@Override
	public int updateInfoOne(SqlSessionTemplate sst, BoardVo vo) {
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
	
	@Override
	public List<BoardVo> selectMyCommunityList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv, int no) {
		
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);		
				
		List<BoardVo> list = sst.selectList("boardMapper.selectMyCommunityList",no,rb);
		
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
		return sst.selectOne("boardMapper.selectLike" , no);
	}

	@Override
	public int plusLikeCntOne(SqlSessionTemplate sst, String no) {
		return sst.update("boardMapper.plusLikeCntOne", no);
	}
	
	@Override
	public int insertCmt(BoardCmtVo cmtvo, SqlSessionTemplate sst) {
		System.out.println("insertCmt 실행중");
		System.out.println("cmtvo ::" + cmtvo);
		return sst.insert("boardMapper.insertCmt", cmtvo );
	}

	//조회수 TOP 조회
	@Override
	public BoardVo selectTopHit(String no, SqlSessionTemplate sst) {
		return sst.selectOne("boardMapper.selectTopHit", no);
	}

	@Override
	public BoardVo selectTopView(String no, SqlSessionTemplate sst) {
		return sst.selectOne("boardMapper.selectTopView", no);
	}
	
	@Override
	public BoardVo selectTopCmt(String no, SqlSessionTemplate sst) {
		return sst.selectOne("boardMapper.selectTopCmt", no);
	}

	@Override
	public List<BoardCmtVo> selectCommCmt(String no, SqlSessionTemplate sst) {
		return sst.selectList("boardMapper.selectCommCmt", no);
	}

	@Override
	public int cmtDelete(String cmtNo, SqlSessionTemplate sst) {
		System.out.println("cmtDelete DaoImpl 실행중..");
		System.out.println("cmtNo : " +cmtNo);
		return sst.update("boardMapper.cmtDelete", cmtNo);
	}

	@Override
	public int selectMyCommunityCommentCnt(BoardPageVo bpvo, SqlSessionTemplate sst, int no) {
		int cnt = sst.selectOne("boardMapper.selectMyCommunityCommentCnt" , no);
		return cnt;
	}

	@Override
	public List<BoardCmtVo> selectMyCommunityCommentList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv, int no) {
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);		
				
		List<BoardCmtVo> list = sst.selectList("boardMapper.selectMyCommunityCommentList",no,rb);
		
		return list;
	}

	//회원쪽
	@Override
	public int selectAllMemberCnt(BoardPageVo bpvo, SqlSessionTemplate sst) {
		int cnt = sst.selectOne("boardMapper.selectAllMemberCnt" );
		return cnt;
	}

	@Override
	public List<MemberVo2> selectAllMemberList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv) {
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);		
				
		List<MemberVo2> list = sst.selectList("boardMapper.selectAllMemberList",rb);
		
		return list;
	}

	@Override
	public MemberVo2 memberDetail(String no, SqlSessionTemplate sst) {
		return sst.selectOne("boardMapper.memberDetail", no);
	}

	@Override
	public int report(String no, SqlSessionTemplate sst) {
		System.out.println("report no :: " + no);
		return sst.update("boardMapper.report", no);
	}

	@Override
	public int selectReportedCommCnt(BoardPageVo bpvo, SqlSessionTemplate sst) {
		int cnt = sst.selectOne("boardMapper.selectReportedCommCnt" );
		return cnt;
	}

	@Override
	public List<BoardVo> selectReportedCommList(SqlSessionTemplate sst, BoardPageVo bpvo, PageVo pv) {
		int offset = (pv.getCurrentPage()-1) *pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);		
				
		List<BoardVo> list = sst.selectList("boardMapper.selectReportedCommList",rb);
		
		return list;
	}



}
