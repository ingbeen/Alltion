package com.spring.alltion.productRegistration;

import org.springframework.stereotype.Service;

public interface ProductService {
	
	// 상품객체 추가
	public int ProductInsert(ProductVO productVO);
	/* test */
	public ProductVO productSelectTest(int product_number);
}
