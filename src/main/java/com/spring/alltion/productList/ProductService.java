package com.spring.alltion.productList;

import java.util.List;


public interface ProductService {
	public List<ProductVO> getproductList(int page,int limit);
	public int getListCount();
	
}	
