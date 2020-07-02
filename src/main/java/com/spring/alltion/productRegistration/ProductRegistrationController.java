package com.spring.alltion.productRegistration;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ProductRegistrationController {
	
	@RequestMapping(value = "home.yb")
	public String home(HttpSession session) {
		session.setAttribute("userId", "ingbeen");
		return "productRegistration/productRegistration";
	}
	
}
