package com.spring.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.alltion.detailpage.ReviewVO;
import com.spring.alltion.detailpage.Seller_Credit_Score_TestVO;
import com.spring.alltion.productRegistration.ProductVO;

public interface DetailMapper {

	ProductVO getDetail(int product_number);

	int selectNowPrice(int bid_product_number);

	void updateBoard(@Param("price")int price,@Param(value="bid_product_number") int bid_product_number);

	int selectPurchasePrice(int bid_product_number);

	Seller_Credit_Score_TestVO sellerTest(String sale_id);

	void updateProductProgress(@Param(value="bid_product_number") int bid_product_number);

	ArrayList<ReviewVO> getReviewList(String review_id);

//	int update_product_progress(int product_number);

}
