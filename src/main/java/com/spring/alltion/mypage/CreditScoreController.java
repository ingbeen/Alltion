package com.spring.alltion.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
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
        	
        	PurchaseCreditScoreVO purchasevo = creditScoreService.getPurchaseCreditScore(userId);
        	model.addAttribute("purchaseCreditVO", purchasevo);
        
        	return "mypage/creditScore";
        }
	}
	
	@RequestMapping(value = "/saleNormalCount.hn")
	public void saleNormalCount(SaleCreditScoreVO salevo, HttpServletResponse response, HttpSession session) throws Exception {
		
		String userId = (String)session.getAttribute("userId");
		salevo.setSale_id(userId);

		int result = creditScoreService.saleNormalCount(salevo);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		if (result != 0) {
			writer.write("<script>alert('테스트');location.href='./creditScore.hn';</script>");
		} else {
			writer.write("<script>alert('-_-');location.href='./creditScore.hn';</script>");
		}
	}
}
