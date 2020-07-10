package com.spring.alltion.productList;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.alltion.productRegistration.ProductVO;
import com.spring.mapper.ProductListMapper;

@Service
public class ProductlistServiceImpl implements ProductlistService {

	@Autowired(required=false)
	private SqlSession sqlSession;

	/*
	@Override
	public List<ProductVO> getproductList(int page, int limit) {
		// TODO Auto-generated method stub
		int startrow=(page-1)*5+1; 
		int endrow=startrow+limit-1; 
		HashMap<String, Integer> params = new HashMap<String, Integer>();
		params.put("start", startrow);
		params.put("end", endrow);
		
		List<ProductVO> productlist = sqlSession.selectList("com.spring.mapper.ProductListMapper.getProductList",params);
		
		return productlist;
	}
*/
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		int res = productListMapper.getListCount();
		return res;
	}
/*
	@Override
	public List<ProductVO> getproductList(HashMap<String, Integer> hashmap, ProductVO vo) {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		List<ProductVO> productlist = productListMapper.getProductList(hashmap, vo);
		return productlist;
	}
*/
	@Override
	public List<ProductVO> getCategorylist(String product_category_2) {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		List<ProductVO> productlist = productListMapper.getCategorylist(product_category_2);
		productlist.get(0).setProduct_category_1(TranslateCate_1(productlist.get(0).getProduct_category_1()));
		productlist.get(0).setProduct_category_2(TranslateCate_2(productlist.get(0).getProduct_category_2()));
		return productlist;
		
	}

	@Override
	public List<ProductVO> getproductList(HashMap<String, Integer> hashmap) {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		List<ProductVO> productlist = productListMapper.getProductList(hashmap);
		return productlist;
	}
	@Override
	public List<ProductVO> getMainlist() {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		List<ProductVO> productlist = productListMapper.getMainlist();
		System.out.println(productlist.get(0).getProduct_number());
		return productlist;
	}
	
	
	public String TranslateCate_1(String product_category_1) {
		
		switch(product_category_1) {
			case "cate01":
				product_category_1 = "패션";
				break;
			case "cate02":
				product_category_1 = "뷰티";
				break;
			case "cate03":
				product_category_1 = "출산/유아동";
				break;
			case "cate04":
				product_category_1 = "전자기기";
				break;
			case "cate05":
				product_category_1 = "가전제품";
				break;
			case "cate06":
				product_category_1 = "가구/인테리어";
				break;
			case "cate07":
				product_category_1 = "반려동물/취미";
				break;
			case "cate08":
				product_category_1 = "도서/음반/문구";
				break;
			case "cate09":
				product_category_1 = "티켓/쿠폰";
				break;
			case "cate10":
				product_category_1 = "스포츠";
				break;
			case "cate11":
				product_category_1 = "공구/산업";
				break;
			case "cate12":
				product_category_1 = "기타잡화";
				break;
			default:
				product_category_1 = "기타잡화";
				break;
		}
		
		return product_category_1;
	}
	
	public String TranslateCate_2(String product_category_2) {
		
		switch(product_category_2) {
		case "cate0101":
			product_category_2 = "여성의류";
			break;
		case "cate0102":
			product_category_2 = "남성의류";
			break;
		case "cate0103":
			product_category_2 = "여성신발";
			break;
		case "cate0104":
			product_category_2 = "남성신발";
			break;
		case "cate0105":
			product_category_2 = "액세서리";
			break;
		case "cate0106":
			product_category_2 = "귀금속";
			break;
		case "cate0107":
			product_category_2 = "모자";
			break;
		case "cate0108":
			product_category_2 = "기타잡화/관련용품";
			break;
		case "cate0109":
			product_category_2 = "수입명품";
			break;
			
		case "cate0201":
			product_category_2 = "스킨케어";
			break;
		case "cate0202":
			product_category_2 = "메이크업";
			break;
		case "cate0203":
			product_category_2 = "헤어/바디";
			break;
		case "cate0204":
			product_category_2 = "향수";
			break;
		case "cate0205":
			product_category_2 = "네일케어";
			break;
		case "cate0206":
			product_category_2 = "남성 화장품";
			break;
		case "cate0207":
			product_category_2 = "가발/기타용품";
			break;
		
		case "cate0301":
			product_category_2 = "출산/육아용품";
			break;
		case "cate0302":
			product_category_2 = "유아동안전/실내용품";
			break;
		case "cate0303":
			product_category_2 = "유아동의류";
			break;
		case "cate0304":
			product_category_2 = "유아동잡화";
			break;
		case "cate0305":
			product_category_2 = "유아동가구";
			break;
		case "cate0306":
			product_category_2 = "기타 유아동용품";
			break;
		
		case "cate0401":
			product_category_2 = "모바일";
			break;
		case "cate0402":
			product_category_2 = "태블릿 PC";
			break;
		case "cate0403":
			product_category_2 = "노트북";
			break;
		case "cate0404":
			product_category_2 = "데스크탑";
			break;
		case "cate0405":
			product_category_2 = "카메라";
			break;
		case "cate0406":
			product_category_2 = "캠코더";
			break;	
			
		default:
			product_category_2 = "기타잡화";
			break;
		}
		
		return product_category_2;
	}
	
}
