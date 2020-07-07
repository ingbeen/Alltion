package com.spring.alltion.productRegistration;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.alltion.login.MemberService;
import com.spring.alltion.login.MemberVO;

@Controller
public class ProductRegistrationController {
	

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/registration.yb")
	public String home(HttpSession session, MemberVO membervo) {
		String userId = (String)session.getAttribute("userId");
		membervo.setMember_id(userId);
		session.setAttribute("userId", membervo.getMember_id());
		return "productRegistration/productRegistration";
	}
	
}
