package com.spring.alltion.test;

import java.io.IOException;
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

import com.spring.alltion.creditScore.CreditScoreService;
import com.spring.alltion.creditScore.PurchaseCreditScoreVO;
import com.spring.alltion.creditScore.SaleCreditScoreVO;
import com.spring.alltion.login.MemberService;
import com.spring.alltion.login.MemberVO;
@Controller
public class buyerController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private testService testservice;
	@Autowired
	private CreditScoreService creditScoreService;
	
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
		ArrayList<Product_kjVO> delivery_list = testservice.getdeliveryList(userId);
		model.addAttribute("delivery_list", delivery_list);
		ArrayList<Product_kjVO> dealcomplete_list = testservice.getdealcomplete_buyer(userId);
		model.addAttribute("dealcomplete_list", dealcomplete_list);
		return  "mypage/buyer";
		}
	}
	
	@RequestMapping(value = "/seller.kj")
	public String getSeller(Model model, HttpSession session)
	throws Exception
	{
		String userId = (String)session.getAttribute("userId");
		if(userId == null)
		{
			return "member/login";
		}
		else
		{
		ArrayList<Product_kjVO> getSale_list = testservice.getSalelist(userId);
		model.addAttribute("getSale_list", getSale_list);
		ArrayList<Product_kjVO> dealcompleteseller_list = testservice.getdealcomplete_seller(userId);
		model.addAttribute("dealcompleteseller_list", dealcompleteseller_list);
		return  "mypage/seller";
		}
	}
	
	@RequestMapping(value = "/waybill.kj")
	public String waybillpage(Model model, HttpSession session)
			throws Exception
			{
				String userId = (String)session.getAttribute("userId");
				if(userId == null)
				{
					return "member/login";
				}
				else
				{
				ArrayList<Product_kjVO> getSale_list = testservice.getSalelist(userId);
				model.addAttribute("getSale_list", getSale_list);
				return "mypage/waybill";
				}
		
	}
	
	
	@RequestMapping(value = "/insert_waybill.kj")
	public String insertwaybill(Product_kjVO Product_kjvo , HttpServletResponse response,  HttpSession session) 
			throws Exception
	{
		String userId = (String)session.getAttribute("userId");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		int res = testservice.updateWaybill(Product_kjvo);
		if(userId == null)
		{
			return "member/login";
		}
		else
		{
		if(res != 0)
		{
			
			writer.write("<script>alert('운송장 번호 입력 완료되었습니다');"
			+ "location.href='/alltion/seller.kj';</script>");
		}
		 else 
		{
			writer.write("<script>alert('운송장 번호 입력이 실패하였습니다!!');location.href='./waybill.kj';</script>");
		}
		return null;
		}
	}
	
	@RequestMapping(value = "/delivery.kj")
	public String deliverycomplete(PurchaseCreditScoreVO purchasevo, SaleCreditScoreVO salevo,Product_kjVO Product_kjvo , HttpServletResponse response,  HttpSession session)
	throws Exception
	{
		String userId = (String)session.getAttribute("userId");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		int res = testservice.deliverycomplete(Product_kjvo,userId);
		int result_sale = creditScoreService.saleNormalCount(salevo);
		int result_purchase = creditScoreService.purchaseNormalCount(purchasevo);
		if(userId == null)
		{
			return "member/login";
		}
		else
		{
		if(res != 0)
		{
			if(result_sale != 0)
			{
				if(result_purchase != 0)
				{
					
				}
			}
			writer.write("<script>alert('구매가 완료되었습니다');"
			+ "location.href='/alltion/buyer.kj';</script>");
		}
		 else 
		{
			writer.write("<script>alert('구매가  실패하였습니다!!');location.href='./waybill.kj';</script>");
		}
		return null;
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
			MemberVO membervo = memberService.selectMember(userId);
			model.addAttribute("membervo", membervo);
		    return "mypage/buyer_emoney";
		}
	}	
	
	@RequestMapping(value = "/buyer_deal.kj")
	public String deal(Test_emoneyVO emoneyvo, Product_kjVO  Product_kjvo, Model model, HttpSession session, HttpServletResponse response)throws Exception
	{
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		String userId = (String)session.getAttribute("userId");
		
		int res = testservice.after_deposit(Product_kjvo);
		//int res_emoney = testservice.update_emoney(userId);
		if(userId == null)
		{
			return "member/login";
		}
		else 
		{
			
			if(emoneyvo.getEmoney() >= Product_kjvo.getTrading_price())
			{
				//if(res_emoney != 0)
				//{
					
					if(res != 0)
					{
						writer.write("<script>alert('결제가 완료되었습니다');"
						+ "location.href='/alltion/buyer.kj';</script>");
					}
				//}
			else
			{
				writer.write("<script>alert('이머니가 부족합니다 충전해주세요!!');location.href='./buyer_emoney.kj';</script>");
				
			}
			
			}
			return null;
		}
	}
		@RequestMapping(value = "/buyer_deal_update") 
		public String address_update(MemberVO membervo, HttpSession session ,HttpServletResponse response)throws Exception
		{
			
			String userId = (String)session.getAttribute("userId");
			membervo.setMember_id(userId);
			int  res = testservice.update_deal_address(membervo);
			if(userId == null)
			{
			return "member/login";
			}
			else
			{			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer = response.getWriter();
			if(res != 0)
			{
				writer.write("<script>alert('주소가 변경되었습니다');"
						+ "location.href='./buyer_emoney.kj';</script>");
			}
			else
			{
				writer.write("<script>alert('주소 변경실패!!');"
						+ "location.href='./buyer_emoney.kj';</script>");
			}
			return null;
		}
		
	}
		
	
	
}
