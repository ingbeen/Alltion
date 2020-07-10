package com.spring.alltion.productRegistration;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.alltion.login.MemberVO;
import com.spring.alltion.trading.TradingService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private TradingService tradingService;
	
	@RequestMapping(value = "/registration.yb")
	public String home(HttpSession session, MemberVO membervo) {
		String userId = (String)session.getAttribute("userId");
        if(userId ==null)
        {
           return "member/login";
        }
        
		return "productRegistration/productRegistration";
	}

	/* test */
	@RequestMapping(value = "productSelectTest.yb")
	public String productSelectTest(Model model) {
		
		tradingService.seachEndOfProduct();
		
		ProductVO productVO = productService.productSelectTest();
		
		model.addAttribute("productVO", productVO);
		
		return "productRegistration/productListTest";
	}
	
}