package com.spring.alltion.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.alltion.creditScore.CreditScoreService;
import com.spring.alltion.creditScore.PurchaseCreditScoreVO;
import com.spring.alltion.creditScore.SaleCreditScoreVO;



@Controller
public class CreditScoreController  {
	
	@Autowired
	private CreditScoreService creditScoreService;
	
	@RequestMapping(value = "creditScore.hn")
	public String checkCreditScore(Model model, HttpSession session) throws Exception {
		
		String userId = (String)session.getAttribute("userId");
		
        if(userId == null) {
        	return "member/login";
        } else {
        	SaleCreditScoreVO salevo = creditScoreService.getSaleCreditScore(userId);
        	
        	model.addAttribute("saleCreditVO", salevo);
        	System.out.println(salevo.getSale_success_rate());
        	System.out.println(salevo.getSale_credit_score());
        	
        	PurchaseCreditScoreVO purchasevo = creditScoreService.getPurchaseCreditScore(userId);
        	model.addAttribute("purchaseCreditVO", purchasevo);
        
        	return "mypage/creditScore";
        }
	}
	
	@RequestMapping(value = "/saleNormalCount.hn")
	public String saleNormalCount(Model model, HttpSession session) throws Exception {
		
		String userId = (String)session.getAttribute("userId");
		
        if(userId == null) {
        	return "member/login";
        } else {
        	SaleCreditScoreVO salevo = creditScoreService.saleNormalCount(userId);
        	model.addAttribute("saleCreditVO", salevo);
        	System.out.println(salevo.getSale_success_rate());
        	System.out.println(salevo.getSale_credit_score());
        	
        	PurchaseCreditScoreVO purchasevo = creditScoreService.getPurchaseCreditScore(userId);
        	model.addAttribute("purchaseCreditVO", purchasevo);
        	
        	return "mypage/creditScore";
        }
	}
}
