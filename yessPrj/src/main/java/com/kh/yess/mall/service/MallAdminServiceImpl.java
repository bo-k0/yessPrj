package com.kh.yess.mall.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.yess.common.PageVo;
import com.kh.yess.mall.dao.MallAdminDao;
import com.kh.yess.mall.dao.MallDao;
import com.kh.yess.mall.vo.AttachmentVo;
import com.kh.yess.mall.vo.ProdVo;

@Service
public class MallAdminServiceImpl implements MallAdminService{
	
	@Autowired private MallAdminDao adao;
	@Autowired private SqlSessionTemplate sst;
	
	//상품리스트조회
	@Override
	public List<ProdVo> selectlist(Map<String, String> map, PageVo pv) {
		List<ProdVo> malllist = adao.selectMallList(sst, pv, map);
		
		return malllist;
	}


	@Override
	public int pageSelectCount() {
		return 0;
	}



	//상품등록(이미지등록도 함께)
	@Override
	@Transactional //두개이상의 sql문을 실행할 때 두 개 전부 성공적으로 실행되어야 커밋됨
	public int addProd(ProdVo vo, List<AttachmentVo> imglist) {

		//상품등록코드
		int result = adao.addProd(sst, vo);
		if(result != 1) {
			return 0;
		}
		int result2 = 0;
		
		//이미지등록코드
		for(int i=0; i<imglist.size(); i++) {
			
			result2 += adao.addProdImg(sst, imglist.get(i),i);
		}
		if(result2 != imglist.size()){
			return 0;
		}
		
		return 1;
			
	}


	//상품수정
	@Override
	@Transactional
	public int updateProd(ProdVo vo, List<AttachmentVo> imglist) {
		
		int result = adao.updateProd(sst, vo); //상품 정보 업데이트
		if(result != 1) {
			return 0; //정보 업데이트에 실패하면 0리턴
		}
		int result2 = 0;
		int result3 = 0;

		if(imglist != null) { //새로운 사진으로 선택했을 때 진행되는 업데이트
			result2 = adao.updateProdImg(sst, vo); //기존사진 status를 바꾸기(업데이트)
			if(result2 == 0) {
				return 0;
			}
			
			//새로운 사진 삽입
			for(int i=0; i<imglist.size(); i++) {
				result3 += adao.addNewProdImg(sst, imglist.get(i),i);
			}
			if(result3 != imglist.size()){
				return 0;
			}
			//기존 사진파일 삭제 작업 추가하기
			
		}
		
		return 1;
	
	}

	//제품삭제
	@Override
	@Transactional
	public int deleteProd(int no) {
		
		int result = adao.deleteProd(sst, no); //상품 삭제(deleteYn y)
		if(result != 1) {
			return 0; //정보 업데이트에 실패하면 0리턴
		}
		int result2 = 0;
		//사진들 status x처리			
		result2 += adao.deleteProdImg(sst, no);
	
		if(result2 !=1) {
			return 0;
		}
		return 1;
		
		
	}
	
	
	
	

}
