package com.spring.alltion.test;

import java.util.ArrayList;

import com.spring.alltion.login.MemberVO;

public interface testService {
	
		public ArrayList<Product_kjVO> getProductlist(String userId);
		public Test_emoneyVO selectEmoney(String userId);
		public Product_kjVO selectProduct(String userId);		
		public int update_deal_address(MemberVO membervo);
		public ArrayList<Product_kjVO> getSalelist(String userId);
		//public int update_emoney(String userId, Integer trading_price);
		public int updateWaybill(Product_kjVO Product_kjvo);
		public int after_deposit(Product_kjVO Product_kjvo);
		public ArrayList<Product_kjVO> getdeliveryList(String userId);
		public ArrayList<Product_kjVO> getdealcomplete(String userId);
}
