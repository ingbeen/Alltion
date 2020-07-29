package com.spring.alltion.test;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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
	
		return product_list;
	}
	
	@Override
	public ArrayList<Product_kjVO> getdeliveryList(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		ArrayList<Product_kjVO> list = testMapper.getdeliveryList(userId);
		return list;
	}
	
	@Override
	public ArrayList<Product_kjVO> getdealcomplete_seller(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		ArrayList<Product_kjVO> list = testMapper.getdealcomplete_seller(userId);
		return list;
	}
	
	@Override
	public ArrayList<Product_kjVO> getSalelist(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		ArrayList<Product_kjVO>list = testMapper.getSalelist(userId);
		return list;
	}
	
	@Override
	public Product_kjVO selectProduct(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		Product_kjVO Product_kjvo = testMapper.selectProduct(userId);
		return Product_kjvo;
	}
	
	@Override
	public ArrayList<Product_kjVO> getdeposit_before(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		ArrayList<Product_kjVO>list = testMapper.getdeposit_before(userId);
		return list;
	}

	@Override
	public ArrayList<Product_kjVO> getdelivery_before(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		ArrayList<Product_kjVO>list = testMapper.getdelivery_before(userId);
		return list;
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
	public int after_deposit(Product_kjVO Product_kjvo) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		return testMapper.after_deposit(Product_kjvo);
	}

	
	@Override
	public int deliverycomplete(Product_kjVO Product_kjvo) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		return testMapper.deliverycomplete(Product_kjvo);
	}
	
	@Override
	public ArrayList<Product_kjVO> getdealcomplete_buyer(String userId) {
		TestMapper testMapper = sqlSession.getMapper(TestMapper.class);
		return testMapper.getdealcomplete_buyer(userId);
	}

}
