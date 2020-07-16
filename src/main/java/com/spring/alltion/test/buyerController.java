package com.spring.alltion.test;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.alltion.login.MemberService;
import com.spring.alltion.login.MemberVO;
@Controller
public class buyerController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private testService testservice;
	
	@RequestMapping(value = "/buyer.kj")
	public String getProductlist(Model model, HttpSession session)
	throws Exception
	{
		String userId = (String)session.getAttribute("userId");
		if(userId == null)
		{
			return "member/login";
		}
		else
		{
		ArrayList<Product_kjVO> product_list = testservice.getProductlist(userId);
		model.addAttribute("product_list", product_list);
		return  "mypage/buyer";
		}
	}
	
	@RequestMapping(value = "/buyer_emoney.kj")
	public String emoney(Model model,HttpSession session)
	throws Exception
	{
		String userId = (String)session.getAttribute("userId");
		if(userId == null)
		{
			return "member/login";
		}
		else
		{
			Test_emoneyVO emoneyvo = testservice.selectEmoney(userId);
			model.addAttribute("emoneyvo", emoneyvo);			
			Product_kjVO  Product_kjvo = testservice.selectProduct(userId);
			model.addAttribute("Product_kjvo", Product_kjvo);
		    return "mypage/buyer_emoney";
		}
	}	
	
	@RequestMapping(value = "/buyer_deal.kj")
	public String deal(Model model,HttpSession session
			,HttpServletResponse response)throws Exception
	{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		String userId = (String)session.getAttribute("userId");
		if(userId == null)
		{
			return "member/login";
		}
		else 
		{
			Test_emoneyVO emoneyvo = testservice.selectEmoney(userId);
			model.addAttribute("emoneyvo", emoneyvo);			
			Product_kjVO  Product_kjvo = testservice.selectProduct(userId);
			model.addAttribute("Product_kjvo", Product_kjvo);
			
			if(Integer.parseInt(emoneyvo.getTest_emoney()) >= Product_kjvo.getTrading_price())
			{
				return "mypage/buyer_deal";
			}else{
				writer.write("<script>alert('이머니가 부족합니다 충전해주세요!!');location.href='./buyer_emoney.kj';</script>");
				
			}
			return null;
		}
		
		
	
	
}
	
}
