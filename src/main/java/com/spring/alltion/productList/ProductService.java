package com.spring.alltion.productList;

import java.util.HashMap;
import java.util.List;


public interface ProductService {
	//public List<ProductVO> getproductList(int page,int limit);
	public int getListCount();
	public List<ProductVOTest> getproductList(HashMap<String, Integer> hashmap);
	public List<ProductVOTest> list(String product_category_2, String product_category_1) throws Exception;
	//public List<ProductVO> getproductList(HashMap<String, Integer> hashmap, ProductVO vo);
}	
