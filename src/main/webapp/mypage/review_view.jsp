<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.spring.alltion.detailpage.*" %>
<%@ page import = "java.util.*" %>
<%
	List<ReviewVO> reviewlist = (List<ReviewVO>)request.getAttribute("reviewlist");
	int nowpage = (int)request.getAttribute("page");
	int maxpage = (int)((double)reviewlist.size()/5.0 + 0.99);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./resources/css/style.css">
    <link rel="stylesheet" href="./resources/css/review_view.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/kakaoTalk.css">
	<link rel="shortcut icon" type="image⁄x-icon" href="./resources/img/header/logo.jpg">
	<link rel="stylesheet" href="./resources/css/style.css?after">
    <title>All-tion</title>
    
</head>
<body>
    <!-- 모든 페이지 공통 영역 by 하나  -->
    <div class="header">
        <div class="upper_header">
            <div class="upper_header--nav">
                <span>
                    <a href="" id="clock"></a>
                </span>
                <ul>
                    <li>
                        <a href="./mypage.kj">${userId}</a>
                    </li>
                    <li>
                        <a href="./logout.kj">로그아웃</a>
                    </li>
                    <li>
                    	<a href="./registration.yb">판매하기</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="lower_header">
            <div class="lower_header--nav">
                <h1 class="logo">
                    <a href="/alltion/">ALL-TION</a>
                </h1>
                <div class="category">
                    <a class="category--drop">
                        <img src="./resources/img/header/category_tab.png">
                    </a>
                </div>
                <div class="search">
                    <select class="search--select">
                        <option value="">전체</option>
                        <option value="cate01">패션</option>
                        <option value="cate02">뷰티</option>
                        <option value="cate03">출산/유아동</option>
                        <option value="cate04">전자기기</option>
                        <option value="cate05">가전제품</option>
                        <option value="cate06">가구/인테리어</option>
                        <option value="cate07">반려동물/취미</option>
                        <option value="cate08">도서/음반/문구</option>
                        <option value="cate09">티켓/쿠폰</option>
                        <option value="cate10">스포츠</option>
                        <option value="cate11">공구/산업용품</option>
                        <option value="cate12">기타잡화</option>
                    </select>
                    <input type="text" placeholder="찾으시는 상품을 입력해 주세요" class="search__input">
                </div>
                <ul class="member_info">
                    <li>
                        <a href="./mypage.kj">
                            <span class="material-icons">perm_identity</span><br>
                            <span>마이 페이지</span>
                        </a>
                    </li>
                    <li>
                        <a href="wishList.yb?page=1&endDateFormat=0">
                            <span class="material-icons">turned_in_not</span><br>
                            <span>찜 목록</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">access_time</span><br>
                            <span>참여 경매</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="kakao-talk-channel-chat-button" style='display: none;'></div>
    <!-- 메인 내용 -->
    <div class="main_body">
        <div class="bidding_title">
            <h1>리뷰 보기</h1>
        </div>
        <div class="bidding_notify">
            <ul>
                <li>
                    회원님께 작성된 리뷰를 확인하실 수 있습니다.
                </li>
                <li>
                    욕설 및 비속어 사용글은 카카오톡 플러스 친구를 통해 신고 접수해주시기 바랍니다.
                </li>
                <li>
                    기타 궁금하신 사항은 카카오톡 플러스 친구를 통해 문의 주시기 바랍니다.
                </li>
            </ul>
        </div>
        <div class="table_title">
            <p>현재 회원님께 작성된 <font style="color:cornflowerblue;border-bottom: 1px solid #FFA30E;">리뷰</font>에 대해서 모두 <%=reviewlist.size() %>개가 검색되었습니다.</p>
        </div>
        <div class="review_title">
        	<div class="review_no">번호</div>
            <div class="product_image">이미지</div>
            <div class="product_subject">물품명</div>
            <div class="review_content">구매 후기</div>
            <div class="review_writer">작성자</div>
            <div class="review_date">작성일</div>
        </div>
        <%for(int i=0;i<reviewlist.size();i++){
        	ReviewVO reviewvo = reviewlist.get(i);
        	if(i >= 5*(nowpage-1) && i <= 4 + 5*(nowpage-1)){
        %>
        
        <div class="review_list">
        	<div class="review_no"><p><%=reviewvo.getReview_no() %></p></div>
            <div class="product_image"><img src="<%=reviewvo.getReview_image()%>"></div>
            <div class="product_subject"><p><%=reviewvo.getReview_subject() %></p></div>
            <div class="review_content"><p style="color: cornflowerblue;"><%=reviewvo.getReview_evaluate() %></p><p><%=reviewvo.getReview_content() %></p></div>
            <div class="review_writer"><p><%=reviewvo.getReview_evaluator().substring(0,3) %>***</p></div>
            <div class="review_date"><p><%=reviewvo.getReview_date() %></p></div>
        </div>
        
        <%}} %>
        <div class="page_btns" align="center">
            <%if(nowpage>1){ %>
	        <a href="./review_view.hs?page=<%=nowpage-1%>"><button>&#171;</button></a>
	        <%}else{%>
	        <a><button>&#171;</button></a>
	        <% }
	        for(int i=1;i<=maxpage;i++){ %>
	        <%if(i==nowpage){ %>
	        	<a href="./review_view.hs?page=<%=i %>"><button style="background-color:darkgray; cursor:default;" disabled="true"><%=i %></button></a>
	        <%}else{ %>	
	        	<a href="./review_view.hs?page=<%=i %>"><button><%=i %></button></a>
	        <%}} %>
	        
	        <%if(nowpage<maxpage){ %>
	        <a href="./review_view.hs?page=<%=nowpage+1%>"><button>&#187;</button></a>
        	<%}else{ %>
        	<a><button>&#187;</button></a>
        	<%} %>
        </div>
        
    </div>
   
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
                    <p>Copyright © eBay Korea LLC All rights reserved.</p>
                </li>
            </ul>
        </div>   
    </div>
    
    <!--  스크립트 영역  -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="./resources/js/common.js"></script>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="resources/js/kakaoTalk.js"></script>
</body>
</html>