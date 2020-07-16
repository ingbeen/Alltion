package com.spring.alltion.pay;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.PayMapper;

@Service("payservice")
public class PayServiceImpl implements PayService {

	@Autowired
	private SqlSession sqlSession;


	@Override
	public void insertPay(PayVO vo) {
		// TODO Auto-generated method stub
		PayMapper payMapper = sqlSession.getMapper(PayMapper.class);
		payMapper.insertPay(vo);
		return;
	}
	
	@Override
	public void deletePay(String buyer_email) {
		// TODO Auto-generated method stub

	}

	@Override
	public PayVO charge(PayVO payVO) {
		// TODO Auto-generated method stub
		payVO.setPay_amount(payVO.getPay_amount());
		payVO.setPay_id(payVO.getPay_id());
		System.out.println(payVO.getPay_amount());
		System.out.println(payVO.getPay_id());
		return payVO;
	}

	@Override
	public PayVO getPayList(String merchant_uid) {
		PayMapper payMapper = sqlSession.getMapper(PayMapper.class);
		PayVO payVO = new PayVO();
		System.out.println("getlist1: " + merchant_uid);
		payVO.setPay_merchant_uid(merchant_uid);
		System.out.println("getlist2(payVOuid): " + payVO.getPay_merchant_uid());
		payVO = payMapper.getPayList(payVO.getPay_merchant_uid());
		System.out.println("status:" + payVO.getPay_status());
		//payVO.setName(payVO.getName());
		payVO.setPay_status(payVO.getPay_status());
		payVO.setPay_amount(payVO.getPay_amount());
		//payVO.setBuyer_email(payVO.getBuyer_email());
		payVO.setPay_id(payVO.getPay_id());
		//payVO.setBuyer_tel(payVO.getBuyer_tel());
		return payVO;
	}

	@Override
	public void chargePay(String convertChargeMoney, String pay_id) {
		PayMapper payMapper = sqlSession.getMapper(PayMapper.class);
		payMapper.chargePay(convertChargeMoney, pay_id);
		
	}

	@Override
	public void cancelPay(String convertChargeMoney, String pay_id) {
		PayMapper payMapper = sqlSession.getMapper(PayMapper.class);
		payMapper.cancelPay(convertChargeMoney, pay_id);
	}

	@Override
	public String getCurrentmoney(String pay_id) {
		// TODO Auto-generated method stub
		PayMapper payMapper = sqlSession.getMapper(PayMapper.class);
		String currentMoney = payMapper.getCurrentmoney(pay_id);
		return currentMoney;
	}

}
