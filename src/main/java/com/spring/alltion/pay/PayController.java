package com.spring.alltion.pay;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.spring.mybatismember.MemberService;
//import com.spring.mybatismember.MemberVO;


@Controller
public class PayController {
	
	@Autowired
	private PayService payService;
	//private MemberService memberService;
	
	@RequestMapping(value = "/pay.ms")
	public String home(HttpSession session) 
	{
		String userId = (String)session.getAttribute("userId");
        if(userId ==null)
        {
           return "member/login";
        }
        String currentMoney = payService.findCurrentMoney(userId);
        if(currentMoney == null) {
			currentMoney = "0";
		}
        session.setAttribute("currentMoney", currentMoney);
		return "pay/pay";
	}
	
	@RequestMapping(value = "/cancel.bo", method = RequestMethod.POST)
	@ResponseBody
	public String cancel(@RequestParam(value="pay_merchant_uid") String pay_merchant_uid) {  // 결제번호 : merchant_uid
		System.out.println("merchant_uid=" + pay_merchant_uid);
		PaymentCheck obj = new PaymentCheck();
		String token = obj.getImportToken();
		int res = obj.cancelPayment(token, pay_merchant_uid);
		if (res == 1) {
			return "Success";
		}else
			return "Failure";
	}
	
	@RequestMapping(value = "/getSuccessData.bo", method = RequestMethod.POST, produces="application/json;charset=UTF-8")
	@ResponseBody
	public void goOracle(PayVO payVO){
		try {
			System.out.println("goOracle");
			System.out.println("successdata pay_amount = " + payVO.getPay_amount());
			System.out.println("successdata pay_id = " + payVO.getPay_id());
			System.out.println("successdate pay_merchant_uid = " + payVO.getPay_merchant_uid());
			System.out.println("successdate pay_status = " + payVO.getPay_status());
			PayVO vo = new PayVO();
			vo.setPay_merchant_uid(payVO.getPay_merchant_uid());
			vo.setPay_amount(payVO.getPay_amount());
			vo.setPay_status(payVO.getPay_status());
			vo.setPay_id(payVO.getPay_id());
			
			System.out.println("Payid 값  = " + vo.getPay_id());
			String id = payService.findPayid(vo.getPay_id());
			
			if(id == null) {
				payService.insertPaylist(vo.getPay_id());;
			}
			
			System.out.println("insert 전");
			payService.insertPay(vo);
			System.out.println("insert 후");
			
			
			String pay_id = vo.getPay_id();
			String currentMoney = payService.findCurrentMoney(pay_id);
			System.out.println("currentMoney = " + currentMoney);
			if(currentMoney == null) {
				currentMoney = "0";
			}
			String plusMoney = payVO.getPay_amount();
			Integer chargeMoney = Integer.parseInt(currentMoney) + Integer.parseInt(plusMoney);
			String convertChargeMoney = Integer.toString(chargeMoney);
			System.out.println("successdata pay_convertChareMoney = " + convertChargeMoney);
			System.out.println("pay_id = " + pay_id);
			System.out.println("chargePay 전");
			payService.chargePay(convertChargeMoney, pay_id);
			System.out.println("chargePay 후");
			
			System.out.println("데이터삽입 완료");
		}catch(Exception e) {
			System.out.println("데이터삽입 실패");
			e.printStackTrace();
		}
			
	}
	
	@RequestMapping(value = "/cancelData.bo", method = RequestMethod.POST)
	@ResponseBody
	public void cancelOracle(@RequestParam(value="pay_merchant_uid") String pay_merchant_uid) {
		System.out.println("cancelOracle: " + pay_merchant_uid);
		PayVO vo = new PayVO();
		vo = payService.getPayList(pay_merchant_uid);
		vo.setPay_merchant_uid(vo.getPay_merchant_uid());
		//vo.setName(vo.getName());
		vo.setPay_amount(vo.getPay_amount());
		vo.setPay_status("결제취소");
		//vo.setBuyer_email(vo.buyer_email);
		vo.setPay_id(vo.getPay_id());
		//vo.setBuyer_tel(vo.getBuyer_tel());
		payService.insertPay(vo);
		String currentMoney = payService.findCurrentMoney(vo.getPay_id());
		if(currentMoney == null) {
			currentMoney = "0";
		}
		String minusMoney = vo.getPay_amount();
		Integer cancelMoney = Integer.parseInt(currentMoney) - Integer.parseInt(minusMoney);
		String convertCancelMoney = Integer.toString(cancelMoney);
		String pay_id = vo.getPay_id();
		payService.cancelPay(convertCancelMoney, pay_id);
	}
	
	@RequestMapping(value = "/charge.ms", method = RequestMethod.POST)
	public String gocharge() {

		return "pay/payfnc";
	}
	
	@RequestMapping(value = "/drawback.ms", method = RequestMethod.POST)
	public String gocancel() {

		return "pay/cancelfnc";
	}
}
