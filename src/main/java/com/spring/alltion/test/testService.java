package com.spring.alltion.test;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.alltion.login.MemberVO;

public interface testService {
	
		public List<Product_kjVO> getProductlist(String userId);
		public ArrayList<Product_kjVO> getSalelist(String userId);
		public ArrayList<Product_kjVO> getdeliveryList(String userId);
		public ArrayList<Product_kjVO> getdealcomplete_buyer(String userId);
		public ArrayList<Product_kjVO> getdealcomplete_seller(String userId);
		public ArrayList<Product_kjVO> getdeposit_before(String userId);
		public ArrayList<Product_kjVO> getdelivery_before(String userId);
		public Test_emoneyVO selectEmoney(String userId);
		public Product_kjVO selectProduct(String userId);	
		public int updateWaybill(Product_kjVO Product_kjvo);
		public int after_deposit(Product_kjVO Product_kjvo);	
		public int update_deal_address(MemberVO membervo);
		public int deliverycomplete(Product_kjVO Product_kjvo);	

}
