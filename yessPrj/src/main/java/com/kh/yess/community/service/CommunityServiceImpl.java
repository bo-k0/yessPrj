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
import com.kh.yess.community.vo.BoardVo;

@Service
public class CommunityServiceImpl implements CommunityService {
	
	@Autowired
	private CommunityDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;


	//글 작성 (이미지도 함께)
	@Override
	@Transactional //두개이상의 sql문을 실행할 때 두 개 전부 성공적으로 실행되어야 커밋됨
	public int write(BoardVo vo, List<BoardAttachmentVo> imglist) {
		
		//등록코드
		int result = dao.write(sst, vo);
		if(result != 1) {
			return 0;
		}
		int result2 = 0;
		
		//이미지등록코드
		for(int i=0; i<imglist.size(); i++) {
			
			result2 += dao.addProdImg(sst, imglist.get(i),i);
		}
		if(result2 != imglist.size()){
			return 0;
		}
		
		return 1;
		
		//원래내꺼
		//return dao.write(sst , vo, imglist);
	}

	//게시글 갯수
	@Override
	public int selectCnt() {
		return dao.selectCnt(sst);
	}

	@Override
	public BoardVo infoDetail(String no) {
		return dao.selectInfoDetail(no, sst);
	}

	@Override
	public int plusLikeOne(String no) {
		return dao.plusLikeOne(sst, no);
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
	public List<BoardVo> selectList(Map<String, String> map, PageVo pv) {
		return dao.selectList(sst, pv, map);
	}

	@Override
	public List<BoardVo> selectQnaList(Map<String, String> map, PageVo pv) {
		return dao.selectQnaList(sst, pv, map);
	}

	@Override
	public List<BoardAttachmentVo> selectProdImg(String no) {
		return dao.selectProdImg(sst,no);
	}

	@Override
	public List<BoardVo> selectChatList(Map<String, String> map, PageVo pv) {
		return dao.selectChatList(sst, pv, map);
	}


}
