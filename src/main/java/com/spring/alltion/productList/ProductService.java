package com.spring.alltion.productList;

import java.util.HashMap;
import java.util.List;


public interface ProductService {
	//public List<ProductVO> getproductList(int page,int limit);
	public int getListCount();
	public List<ProductVO> getproductList(HashMap<String, Integer> hashmap);
	
}	
