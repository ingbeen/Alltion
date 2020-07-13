package com.spring.alltion.creditScore;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CreditScoreMapper;

@Service
public class CreditScoreServiceImpl implements CreditScoreService {
	
	@Autowired
	private SqlSession sqlSession;
	
	public SaleCreditScoreVO getSaleCreditScore(String sale_id) {
		SaleCreditScoreVO saleCreditScorevo = new SaleCreditScoreVO();
		saleCreditScorevo.saleScoreProcess();
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		saleCreditScorevo = scoreMapper.getSaleCreditScore(sale_id);
		
		return saleCreditScorevo;
	}
	
	public PurchaseCreditScoreVO getPurchaseCreditScore(String purchase_id) {
		PurchaseCreditScoreVO purchaseCreditScorevo = new PurchaseCreditScoreVO();
		purchaseCreditScorevo.purchaseScoreProcess();
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		purchaseCreditScorevo = scoreMapper.getPurchaseCreditScore(purchase_id);
		
		return purchaseCreditScorevo;
	}
}
