package com.spring.alltion.pay;

import java.util.HashMap;
import java.util.List;

public interface PayService {
	void insertPay(PayVO vo);
	void deletePay(String buyer_email);
	PayVO getPayList(String merchant_uid);
	PayVO charge(PayVO payVO);
	void cancelPay(String convertChargeMoney, String pay_id);
	void chargePay(String convertChargeMoney, String pay_id);
	void insertPaylist(String pay_id);
	String findCurrentMoney(String pay_id);
	String findPayid(String pay_id);
}
