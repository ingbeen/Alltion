package com.spring.mapper;

import com.spring.alltion.productList.ProductVO;

public interface ProductListMapper {
	public ProductVO getProductList(int product_number, String product_category_2);
	public Integer getListCount();
}
