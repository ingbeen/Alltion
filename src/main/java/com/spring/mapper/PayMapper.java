package com.spring.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.spring.alltion.pay.PayVO;

public interface PayMapper {
	int insertPay(PayVO vo);
	void deletePay(String imp_uid);
	PayVO getPayList(String merchant_uid);
	String getCurrentmoney(String pay_merchant_uid);
	void chargePay(@Param("convertChargeMoney")String convertChargeMoney, @Param("pay_id")String pay_id);
	void cancelPay(@Param("convertChargeMoney")String convertChargeMoney, @Param("pay_id")String pay_id);
}
