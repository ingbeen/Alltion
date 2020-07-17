package com.spring.alltion.creditScore;

public interface CreditScoreService {
	public SaleCreditScoreVO getSaleCreditScore(String sale_id);
	public SaleCreditScoreVO getSaleScoreInfo(SaleCreditScoreVO saleCreditScorevo);
	public int saleNormalCount(SaleCreditScoreVO saleCreditScorevo);
	public int saleDenialCount(String sale_id);
	public int saleReturnCount(String sale_id);
	public int saleUndeliveredCount(String sale_id);
	public SaleCreditScoreVO saleRateScoreCount(String sale_id);
	
	public PurchaseCreditScoreVO getPurchaseCreditScore(String purchase_id);
	public PurchaseCreditScoreVO getPurchaseScoreInfo(PurchaseCreditScoreVO purchasevo);
	public int purchaseNormalCount(String purchase_id);
	public int purchaseDenialCount(String purchase_id);
	public int purchaseReturnCount(String purchase_id);
	public int purchaseUndeliveredCount(String purchase_id);
	public PurchaseCreditScoreVO purchaseRateScoreCount(String purchase_id);
}
