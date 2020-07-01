package com.spring.alltion.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.scribejava.core.model.OAuth2AccessToken;



@Controller
public class MemberController {

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO)
	{
		this.naverLoginBO = naverLoginBO;
	}
	
	@Autowired
	private MemberService memberService;

	@RequestMapping("/main.kj")
	public String mainPage()
	{
		return "index";
	}

		@RequestMapping(value = "/loginForm.kj")
		public String loginPage()
		{
			return "member/login";
		}
		
		@RequestMapping("/login.kj")
		public String userCheck(MemberVO membervo, HttpSession session,
				HttpServletResponse response) throws Exception
		{
			int res = memberService.userCheck(membervo);
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer = response.getWriter();
			if (res == 1)
			{
				session.setAttribute("member_id",membervo.getMember_id());
				//writer.write("<script>alert('�α��� ����!!');location.href='./';</script>");
				return "redirect:/";
			}
			else 	
			{
					
				writer.write("<script>alert('�ش� ���̵�� ��й�ȣ�� Ȯ���� �ּ���!!');location.href='./loginForm.kj';</script>");
				//return "redirect:/loginform.kj";
			}
			return null;
		}
		//�α׾ƿ�
		@RequestMapping(value = "/logout.kj", method = { RequestMethod.GET, RequestMethod.POST })
		public String logout(HttpSession session) throws IOException {
		session.invalidate();
		return "redirect:/";
		}
		
		//�α��� ù ȭ�� ��û �޼ҵ�
		@RequestMapping(value = "/naverjoin.kj", method = { RequestMethod.GET, RequestMethod.POST })
		public String login(Model model, HttpSession session) {
			/* ���̹����̵�� ���� URL�� �����ϱ� ���Ͽ� naverLoginBOŬ������ getAuthorizationUrl�޼ҵ� ȣ�� */
			String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
			//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
			//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
			System.out.println("���̹� : " + naverAuthUrl);
			//���̹�
			model.addAttribute("url", naverAuthUrl);
			
			return "member/join";
		}
		//���̹� �α��� ������ callbackȣ�� �޼ҵ�
		@RequestMapping(value = "/callback.kj", method = { RequestMethod.GET, RequestMethod.POST })
		public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {
			System.out.println("����� callback");
			OAuth2AccessToken oauthToken;
			oauthToken = naverLoginBO.getAccessToken(session, code, state);
			//1. �α��� ����� ������ �о�´�.
			apiResult = naverLoginBO.getUserProfile(oauthToken); // String������ json������
			/**
			 * apiResult json ���� {"resultcode":"00", "message":"success",
			 * "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
			 **/
			//2. String������ apiResult�� json���·� �ٲ�
			JSONParser parser = new JSONParser();
			Object obj = parser.parse(apiResult);
			JSONObject jsonObj = (JSONObject) obj;
			//3. ������ �Ľ�
			//Top���� �ܰ� _response �Ľ�
			JSONObject response_obj = (JSONObject) jsonObj.get("response");
			//response�� nickname�� �Ľ�
			String email = (String) response_obj.get("email");
			System.out.println(email);
			//4.�Ľ� �г��� �������� ����
			session.setAttribute("email", email); // ���� ����
			model.addAttribute("result", apiResult);
			
			return "member/joinForm";
		}
		
		@RequestMapping(value = "/joinForm.kj")
		public String joinFormPage()
		{
			return "member/joinForm";
		}
		@RequestMapping("/joinprocess.kj") 
		public String insertMember(MemberVO membervo, HttpServletResponse response) 
			throws Exception { 
			//�Ķ���Ϳ��� form ����� name�� ���� ���� ����ȴ�.\
			int res = memberService.insertMember(membervo);
			
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer = response.getWriter();
			if (res != 0)
			{
				writer.write("<script>alert('ȸ������ ����!!');"
						+ "location.href='./loginForm.kj';</script>");
			}
			else
			{
				writer.write("<script>alert('ȸ������ ����!!');"
						+ "location.href='./joinForm.kj';</script>");
			}
			return null;
		}
		@RequestMapping(value="/user_check.kj", produces= "application/json; charset=utf-8")
		private @ResponseBody int idCheck(String member_id)throws Exception
		{
			int res = memberService.idCheckService(member_id);
			return res;
		}
		@RequestMapping(value = "/mypage.kj")
		public String myPage()
		{
			return "member/mypage";
		}
		
}
