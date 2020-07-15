package com.spring.alltion.productRegistration;

public interface ProductService {
	// 상품객체 추가
	public void ProductInsert(ProductVO productVO);
	/* test */
	public ProductVO productSelectTest(int product_number);
}
