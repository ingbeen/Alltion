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

	/*
	@Override
	public List<ProductVO> getproductList(int page, int limit) {
		// TODO Auto-generated method stub
		int startrow=(page-1)*5+1; //읽기 시작할 row 번호.
		int endrow=startrow+limit-1; //읽을 마지막 row 번호.
		HashMap<String, Integer> params = new HashMap<String, Integer>();
		params.put("start", startrow);
		params.put("end", endrow);
		
		List<ProductVO> productlist = sqlSession.selectList("com.spring.mapper.ProductListMapper.getProductList",params);
		
		return productlist;
	}
*/
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		int res = productListMapper.getListCount();
		return res;
	}
/*
	@Override
	public List<ProductVO> getproductList(HashMap<String, Integer> hashmap, ProductVO vo) {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		List<ProductVO> productlist = productListMapper.getProductList(hashmap, vo);
		return productlist;
	}
*/
	@Override
	public List<ProductVOTest> list(String product_category_2, String product_category_1) throws Exception {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("product_category_2", product_category_2);
		map.put("product_category_1", product_category_1);
		List<ProductVOTest> productlist = productListMapper.list(product_category_2, product_category_1);
		
		return productlist;
		
	}

	@Override
	public List<ProductVOTest> getproductList(HashMap<String, Integer> hashmap) {
		// TODO Auto-generated method stub
		ProductListMapper productListMapper = sqlSession.getMapper(ProductListMapper.class);
		List<ProductVOTest> productlist = productListMapper.getProductList(hashmap);
		return productlist;
	}

}
