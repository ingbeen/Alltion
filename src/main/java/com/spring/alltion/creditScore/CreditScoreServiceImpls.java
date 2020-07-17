package com.spring.alltion.creditScore;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CreditScoreMapper;

@Service
public class CreditScoreServiceImpls implements CreditScoreService {
	
	@Autowired
	private SqlSession sqlSession;
	
	public SaleCreditScoreVO getSaleCreditScore(String sale_id) {
		SaleCreditScoreVO saleCreditScorevo = new SaleCreditScoreVO();
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		saleCreditScorevo = scoreMapper.getSaleCreditScore(sale_id);
		saleCreditScorevo.saleCreditScoreProcess();
		saleCreditScorevo.saleSuccessRateProcess();
		
		return saleCreditScorevo;
	}
	
	public SaleCreditScoreVO getSaleScoreInfo(SaleCreditScoreVO salevo) {
		SaleCreditScoreVO saleCreditScorevo = new SaleCreditScoreVO();
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		saleCreditScorevo = scoreMapper.getSaleScoreInfo(salevo);
		
		return saleCreditScorevo;
	}
	
	public int saleNormalCount(SaleCreditScoreVO saleCreditScorevo) {
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		return scoreMapper.saleNormalCount(saleCreditScorevo);
	}
	
	public int saleDenialCount(String sale_id) {
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		return scoreMapper.saleDenialCount(sale_id);
	}
	
	public int saleReturnCount(String sale_id) {
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		return scoreMapper.saleReturnCount(sale_id);
	}
	
	public int saleUndeliveredCount(String sale_id) {
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		return scoreMapper.saleUndeliveredCount(sale_id);
	}
	
	public SaleCreditScoreVO saleRateScoreCount(String sale_id) {
		SaleCreditScoreVO saleCreditScorevo = new SaleCreditScoreVO();
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		saleCreditScorevo = scoreMapper.saleRateScoreCount(sale_id);
		
		return saleCreditScorevo;
	}
	
	public PurchaseCreditScoreVO getPurchaseCreditScore(String purchase_id) {
		PurchaseCreditScoreVO purchaseCreditScorevo = new PurchaseCreditScoreVO();
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		purchaseCreditScorevo = scoreMapper.getPurchaseCreditScore(purchase_id);
		purchaseCreditScorevo.purchaseScoreRate();
		purchaseCreditScorevo.saleScoreProcess();
		return purchaseCreditScorevo;
	}
	
	public PurchaseCreditScoreVO getPurchaseScoreInfo(PurchaseCreditScoreVO purchasevo) {
		PurchaseCreditScoreVO purchaseCreditScorevo = new PurchaseCreditScoreVO();
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		purchaseCreditScorevo = scoreMapper.getPurchaseScoreInfo(purchasevo);
		
		return purchaseCreditScorevo;
	}
	
	public int purchaseNormalCount(String purchase_id) {
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		return scoreMapper.purchaseNormalCount(purchase_id);
	}
	
	public int purchaseDenialCount(String purchase_id) {
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		return scoreMapper.purchaseDenialCount(purchase_id);
	}
	
	public int purchaseReturnCount(String purchase_id) {
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		return scoreMapper.purchaseReturnCount(purchase_id);
	}
	
	public int purchaseUndeliveredCount(String purchase_id) {
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		return scoreMapper.purchaseUndeliveredCount(purchase_id);
	}
	
	public PurchaseCreditScoreVO purchaseRateScoreCount(String purchase_id) {
		PurchaseCreditScoreVO purchaseCreditScorevo = new PurchaseCreditScoreVO();
		CreditScoreMapper scoreMapper = sqlSession.getMapper(CreditScoreMapper.class);
		purchaseCreditScorevo = scoreMapper.purchaseRateScoreCount(purchase_id);
		
		return purchaseCreditScorevo;
	}
}
