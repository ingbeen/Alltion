package com.spring.alltion.test;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.alltion.detailpage.ReviewVO;
import com.spring.alltion.login.MemberVO;
import com.spring.mapper.TestMapper;

@Service("testService")
public class testServiceImpl implements testService{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Product_kjVO> getProductlist(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		List<Product_kjVO>product_list = testMapper.getProductlist(userId);
		for(int i = 0; i < product_list.size(); i++) {
		Product_kjVO product_listvo = (Product_kjVO)product_list.get(i);
		if(product_listvo.getProduct_delivery().equals("none")) {
			product_listvo.setProduct_delivery("불가능");
			}
		if(product_listvo.getProduct_transaction_area().equals("none")){
			product_listvo.setProduct_transaction_area("불가능");
			}
		}
		return product_list;
	}
	
	@Override
	public List<Product_kjVO> getdelivery_before(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		List<Product_kjVO>delivery_before_list	= testMapper.getdelivery_before(userId);
		return delivery_before_list;
	}	
	
	@Override
	public List<Product_kjVO> getdeliveryList(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		List<Product_kjVO> complete_list = testMapper.getdeliveryList(userId);
		return complete_list;
	}
	
	@Override
	public List<Product_kjVO> getdealcomplete_seller(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		List<Product_kjVO> sale_complete_list = testMapper.getdealcomplete_seller(userId);
		return sale_complete_list;
	}
	
	@Override
	public List<Product_kjVO> getSalelist(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		List<Product_kjVO>sell_list = testMapper.getSalelist(userId);
		return sell_list;
	}
	
	@Override
	public Product_kjVO selectProduct(String userId, int product_number) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		Product_kjVO Product_kjvo = testMapper.selectProduct(userId,product_number);
		return Product_kjvo;
	}
	
	@Override
	public List<Product_kjVO> getdeposit_before(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		List<Product_kjVO>getdeposit_before_list = testMapper.getdeposit_before(userId);
		return getdeposit_before_list;
	}

	
	
	@Override
	public Test_emoneyVO selectEmoney(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		Test_emoneyVO emoneyvo = testMapper.selectEmoney(userId);
		return emoneyvo;
	}

	@Override
	public int update_deal_address(MemberVO membervo) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		return testMapper.update_deal_address(membervo);
	}

	@Override
	public int updateWaybill(Product_kjVO Product_kjvo) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		return testMapper.updateWaybill(Product_kjvo);
	}

	@Override
	public int after_deposit(Product_kjVO Product_kjvo, int trading_product_number, String trading_id) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		return testMapper.after_deposit(Product_kjvo,trading_product_number,trading_id);
	}

	
	@Override
	public int deliverycomplete(Product_kjVO Product_kjvo, int product_number) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		return testMapper.deliverycomplete(Product_kjvo,product_number);
	}
	
	@Override
	public List<Product_kjVO> getdealcomplete_buyer(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		return testMapper.getdealcomplete_buyer(userId);
	}

	@Override
	public Product_kjVO Waybill(String userId, int product_number) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		Product_kjVO Product_kjvo = testMapper.Waybill(userId, product_number);
		return Product_kjvo;
	}

	@Override
	public int insertReview(ReviewVO Reviewvo) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		int res = testMapper.insertReview(Reviewvo);
		
		return res;
	}

}
