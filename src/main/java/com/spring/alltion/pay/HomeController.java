package com.spring.alltion.pay;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
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
public class HomeController {
	
	@Autowired
	private PayService payService;
	//private MemberService memberService;
	
	@RequestMapping(value = "/pay.ms", method = RequestMethod.GET)
	public String home() {
	
		return "pay/payfnc";
	}
	
	@RequestMapping(value = "/cancel.ms", method = RequestMethod.POST)
	@ResponseBody
	public String cancel(@RequestParam(value="merchant_uid") String merchant_uid) {  // ������ȣ : merchant_uid
		System.out.println("merchant_uid=" + merchant_uid);
		PaymentCheck obj = new PaymentCheck();
		String token = obj.getImportToken();
		int res = obj.cancelPayment(token, merchant_uid);
		if (res == 1) {
			return "Success";
		}else
			return "Failure";
	}
	
	@RequestMapping(value = "/getSuccessData.ms", method = RequestMethod.POST, produces="application/json;charset=UTF-8")
	@ResponseBody
	public void goOracle(PayVO vo){
		try {
			payService.insertPay(vo);
			System.out.println("�����ͻ��� �Ϸ�");
		}catch(Exception e) {
			System.out.println("����");
		}
			
	}
	
	@RequestMapping(value = "/cancelData.ms", method = RequestMethod.POST)
	@ResponseBody
	public void cancelOracle(@RequestParam(value="merchant_uid") String merchant_uid) {
		PayVO vo = new PayVO();
		vo = payService.getPayList(merchant_uid);
		vo.setMerchant_uid(vo.getMerchant_uid());
		//vo.setName(vo.getName());
		vo.setAmount(vo.getAmount());
		vo.setStatus("�������");
		//vo.setBuyer_email(vo.buyer_email);
		vo.setBuyer_name(vo.getBuyer_name());
		//vo.setBuyer_tel(vo.getBuyer_tel());
		payService.insertPay(vo);
	}
	/*
	@RequestMapping(value="/goPay.do", method = RequestMethod.POST)
	@ResponseBody
	public String buyEMoney(MemberVO memberVO, HttpSession session, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		session.setAttribute("id",memberVO.getId());
		writer.write("<script>location.href='./pay.jsp';</script>");
		return null;
	}
	*/
}
