<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.spring.alltion.login.MemberVO" %>
<%@ page import = "com.spring.alltion.test.Product_kjVO" %>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	
	List<Product_kjVO> product_list =
			(List<Product_kjVO>)request.getAttribute("product_list");
%>
<%
	ArrayList<Product_kjVO> delivery_list =
			(ArrayList<Product_kjVO>)request.getAttribute("delivery_list");
%>
<%
	ArrayList<Product_kjVO> dealcomplete_list =
			(ArrayList<Product_kjVO>)request.getAttribute("dealcomplete_list");
%>
<%
	ArrayList<Product_kjVO> delivery_before_list =
			(ArrayList<Product_kjVO>)request.getAttribute("delivery_before_list");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./resources/css/main_style.css?after">
    <link rel="stylesheet" href="./resources/css/buyer.css">
    <link href="https://fonts.googleapis.com/css2?
    family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>All-tion</title>
</head>
<body>
    <!-- 모든 페이지 공통 영역 by 하나  -->
    
    <div class="header">
        <jsp:include page="../header/main_header.jsp"></jsp:include>
    </div>
    <div id="kakao-talk-channel-chat-button" style='display: none;'></div>
    <div class="main_body">
        <div class="bidding_title">
            <h1>구매 경매</h1>
        </div>
        <div class="bidding_notify">
            <ul>
                <li>
                    회원님께서 현재 구매 중인 경매 리스트입니다.
                <li>
                <li>
                    문의 사항은 고객센터에 문의해주시기 바랍니다.
                </li>
            </ul>
        </div>
        </div>
       
        <div class="buyer--form">
        <h3>구매 중 경매가<%=product_list.size() %>개가 검색되었습니다</h3>
        <% 
        	for(int i = 0; i < product_list.size(); i++)
        	{
        		Product_kjVO vo = (Product_kjVO)product_list.get(i);
        		
        	
        %> 
            <div class="buyer--content">
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>상품 번호</span>
                        </div>
                        <div class="buyer_form__list content">
                        <span><%=vo.getProduct_number() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>상품명</span>
                        </div>
                        <div class="buyer_form__list content">
                        <span><%=vo.getProduct_subject() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>구매 가격</span>
                        </div>
                        <div class="buyer_form__list content">
                        <span><%=vo.getTrading_price() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>입금 기한</span>
                        </div>
                        <div class="buyer_form__list content">
                        <span><%=vo.getTrading_deposit_deadline() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>거래 방식</span>
                        </div>
                        <div class="buyer_form__list content">
                        <span><%=vo.getTrading_transaction_method() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>판매자</span>
                        </div>
                        <div class="buyer_form__list content">
                        	<span><%=vo.getProduct_id() %></span>
                        </div>    
                    </li>
                </ul>
               
        </div>
         <a href = "./buyer_emoney.kj"  class = "base_btn" >입금 하기</a>	
    	
    <%
        	}
    %>
	</div>
    <!-- 배송 대기중 상품 -->
    <%if(delivery_before_list.size()!=0) {%>
    <%
    for(int x = 0; x < delivery_before_list.size(); x++)
    {
    	Product_kjVO delivery_beforevo = (Product_kjVO)delivery_before_list.get(x);
    
    %>
    <div class="buyer--form">
        <h3>배송 대기중 상품입니다</h3>
            <div class="buyer--content">
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>상품 번호</span>
                        </div>
                        <div class="buyer_form__list content">
                             <span><%=delivery_beforevo.getProduct_number() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>상품명</span>
                        </div>
                        <div class="buyer_form__list content">
                            <span><%=delivery_beforevo.getProduct_subject() %></span>
                        </div>    
                    </li>
                </ul>  
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>구매 가격</span>
                        </div>
                        <div class="buyer_form__list content">
                             <span><%=delivery_beforevo.getTrading_price() %></span>
                        </div>    
                    </li>
                </ul>        
        </div>
        </div>
        <%
    }}
        %>
    <!-- 배송중 상품 -->
    <%if(delivery_list.size()==0) {%>
    <div class="buyer--form">
        <h3>배송중 경매상품이 없습니다</h3>
    </div>
    <%}else{ %>
    <%
    for(int i = 0; i <delivery_list.size(); i++)
    {
    	Product_kjVO deliveryvo = (Product_kjVO)delivery_list.get(i);
    
    %>
    <form name="delivery" action="./delivery.kj" method="post">
	<input type = "hidden" name = "trading_product_number" id = "trading_product_number" value = "<%=deliveryvo.getTrading_product_number()%>">		
	<input type = "hidden" name = "trading_progress" id = "trading_progress" value = "<%=deliveryvo.getTrading_progress()%>">		
	<input type = "hidden" name = "trading_purchase_date" id = "trading_purchase_date" value = "<%=deliveryvo.getTrading_purchase_date()%>">											
    <input type = "hidden" name = "product_number" id = "product_number" value = "<%=deliveryvo.getProduct_number() %>">
    <div class="buyer--form">			
            <h3>배송중 경매상품</h3>
            <div class="buyer--content">
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>상품 번호</span>
                        </div>
                        <div class="buyer_form__list content">
                             <span><%=deliveryvo.getProduct_number() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>상품명</span>
                        </div>
                        <div class="buyer_form__list content">
                            <span><%=deliveryvo.getProduct_subject() %></span>
                        </div>    
                    </li>
                </ul> 
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>운송장 번호</span>
                        </div>
                        <div class="buyer_form__list content">
                             <span><%=deliveryvo.getTrading_waybill_number() %></span>
                        </div>    
                    </li>
                </ul>      
        </div>
        <a href="javascript:delivery.submit()" class="base_btn" >배송 완료</a>&nbsp;&nbsp; 
	</div>
	    			</form>
    <%
    	}}
    %>
    <!--구매 완료 -->
    <%if(dealcomplete_list.size()==0) {%>
    <div class="buyer--form">
            <h3>구매 완료된 경매가 없습니다</h3>
    </div>
    <%}else{ %>
    <%
    	for(int i = 0; i < dealcomplete_list.size(); i++)
    	{
    		Product_kjVO dealcompletevo = (Product_kjVO)dealcomplete_list.get(i);
    	
    %>
        <div class="buyer--form">
            <h3>구매 완료</h3>
            <div class="buyer--content">
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>상품 번호</span>
                        </div>
                        <div class="buyer_form__list content">
                           	<span><%=dealcompletevo.getProduct_number() %></span> 
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>상품명</span>
                        </div>
                        <div class="buyer_form__list content">
                            <span><%=dealcompletevo.getProduct_subject() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>구매 가격</span>
                        </div>
                        <div class="buyer_form__list content">
                            <span><%=dealcompletevo.getTrading_price() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>구매 날짜</span>
                        </div>
                        <div class="buyer_form__list content">
                            <span><%=dealcompletevo.getTrading_purchase_date() %></span>
                        </div>    
                    </li>
                </ul>
                <ul class="buyer_form list">
                    <li>
                        <div class="buyer_form__list title">
                            <span>판매자</span>
                        </div>
                        <div class="buyer_form__list content">
                            <span><%=dealcompletevo.getProduct_id() %></span>
                        </div>    
                    </li>
                </ul> 
        </div>
        	<form name = "review" action = "./review" method = "post">
        		<textarea rows="50" cols="50"></textarea>
        	</form>
    </div>
    <%
    	}}
    %>
    <!-- 푸터 영역 -->
    <div class="footer">
        <div class="upper_footer">
            <ul class="upper_footer--list">
                <li>
                    <a href="#">
                        올션소개
                    </a>
                </li>
                <li>
                    <a href="#">
                        채용정보
                    </a>
                </li>
                <li>
                    <a href="#">
                        공지사항
                    </a>
                </li>
                <li>
                    <a href="#">
                        이용약관
                    </a>
                </li>
                <li>
                    <a href="#">
                        개인정보처리방침
                    </a>
                </li>
                <li>
                    <a href="#">
                        전자금융거래약관
                    </a>
                </li>
                <li>
                    <a href="#">
                        제휴서비스
                    </a>
                </li>
            </ul>
        </div>
		<div class="lower_footer">
            <ul class="lower_footer__content">
                <li>
                    <p>상호명 : (주)올션 / 짜면된다 / 주소: 서울특별시 종로구 삼일대로 서울특별시 서초구 서초4동 강남대로</p>
                    <p>Tel: 02-000-0000 Fax : 02-000-0000 메일 : master@alltion.co.kr</p>
                    <p>사업자등록번호 : ###-##-##### 통신판매업 신고번호 : 제##–###호</p>
                </li>
                <li>
                    <p>올션은 통신판매중개자이며 통신 판매의 당사자가 아닙니다. 따라서 올션은 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.</p> 
                    <p>Copyright © Alltion All rights reserved.</p>
                </li>
            </ul>
        </div>      
    </div>
    
    <!--  스크립트 영역  -->
    <!--  스크립트 영역  -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
   <script src="resources/js/kakaoTalk.js"></script>
   <script src="./resources/js/buyer.js"></script>

</body>
</html>