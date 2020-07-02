package com.spring.alltion.productList;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.ProductListMapper;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired(required=false)
	private SqlSession sqlSession;
	
	@Override
	public List<ProductVO> getproductList(int page, int limit) {
		// TODO Auto-generated method stub
		int startrow=(page-1)*5+1; //�б� ������ row ��ȣ.
		int endrow=startrow+limit-1; //���� ������ row ��ȣ.
		HashMap<String, Integer> params = new HashMap<String, Integer>();
		params.put("start", startrow);
		params.put("end", endrow);
		
		List<ProductVO> productlist = sqlSession.selectList("com.spring.mapper.ProductListMapper.getProductList",params);
		
		return productlist;
	}

	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		int res = productListMapper.getListCount();
		return res;
	}

}
