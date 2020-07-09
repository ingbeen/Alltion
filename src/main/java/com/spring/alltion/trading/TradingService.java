package com.spring.alltion.trading;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.alltion.productRegistration.ProductVO;
import com.spring.mapper.ProductMapper;
import com.spring.mapper.TradingMapper;

@Service
public class TradingService {

	@Autowired
	private SqlSession sqlSession;
	
	public void tradingInsert() {
		TradingMapper tradingMapper;
		ProductMapper producMapper;
		List<ProductVO> productEndList;
		TradingVO tradingVO;
		int res;
		
		try {
			tradingMapper = sqlSession.getMapper(TradingMapper.class);
			producMapper = sqlSession.getMapper(ProductMapper.class);
			
			productEndList = producMapper.searchEndOfDeadline();
			
			if (productEndList.size() == 0) {
				return;
			}
			
			for(ProductVO productVO : productEndList) {
				
			}
			
//			tradingMapper.tradingInsert(tradingVO);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
