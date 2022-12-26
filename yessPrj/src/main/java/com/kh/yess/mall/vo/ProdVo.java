package com.kh.yess.mall.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProdVo {
	
	private int prodNo;
	private int prodCateNo;
	private String prodName;
	private String prodInfo;
	private String prodDetail;
	private int prodPrice;
	private int prodStock;
	private List<MultipartFile> prodImg;
	
	private String prodImgPath;
	private String prodImgPath2;
	private String prodImgPath3;
	private String prodImgPath4;
	
	//------------------------------------------------------------------------
	
		public boolean isEmpty() {
			
			if(prodImg.get(0).isEmpty()) {return true;}
			if(prodImg == null) return true;
			if(prodImg.size() == 0) return true;
				
			return false;
			
		}//method

}
