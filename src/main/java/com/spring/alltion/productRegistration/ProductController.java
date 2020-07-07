package com.spring.alltion.productRegistration;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/")
	public String home(HttpSession session) {
		session.setAttribute("userId", "ingbeen");
		return "productRegistration/productRegistration";
	}
	

	/* test */
	@RequestMapping(value = "productSelectTest.yb")
	public String productSelectTest(Model model) {
		
		ProductVO productVO = productService.productSelectTest();
		
		model.addAttribute("productVO", productVO);
		
		return "productRegistration/productListTest";
	}
	
}
