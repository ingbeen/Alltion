<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.spring.alltion.creditScore.SaleCreditScoreVO" %>
<%@ page import = "com.spring.alltion.creditScore.PurchaseCreditScoreVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    SaleCreditScoreVO saleCreditVO = (SaleCreditScoreVO)request.getAttribute("saleCreditVO");
    PurchaseCreditScoreVO purchaseCreditVO  = (PurchaseCreditScoreVO)request.getAttribute("purchaseCreditVO");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image⁄x-icon" href="./resources/img/header/logo.jpg">
    <link rel="stylesheet" href="./resources/css/style.css?after">
    <link rel="stylesheet" href="./resources/css/creditScore.css?after">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Alltion</title>
</head>
<body>
    <!-- 모든 페이지 공통 영역 by 하나  -->
    <!-- 배너 및 헤더 -->
    <div class="header">
        <div class="upper_header">
             <div class="upper_header--nav">
                <p>
                    <a href="" id="clock"></a>
                </p>
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
                    <li>
                        <a href="#">고객 센터</a>
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
                    <div class="category--dropdown">
                        <ul class="whole_menu">
                            <li>
                                <a>
									패션
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate01">
                                    <h4>패션</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0101">여성의류</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0102">남성의류</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0103">여성신발</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0104">남성신발</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0105">악세서리</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0106">귀금속</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0107">모자</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0108">기타잡화/관련용품</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0109">수입명품</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									뷰티
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate02">
                                    <h4>뷰티</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0201">스킨케어</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0202">메이크업</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0203">헤어/바디</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0204">향수</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0205">네일케어</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0206">남성화장품</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0207">가발/기타용품</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									출산/유아동
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate03">
                                    <h4>출산/유아동</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0301">출산/육아용품</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0302">유아동안전/실내용품</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0303">유아동의류</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0304">유아동잡화</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0305">유아동가구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0306">기타 유아동용품</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									전자기기
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate04">
                                    <h4>전자기기</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0401">모바일</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0402">태블릿PC</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0403">노트북</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0404">데스크탑</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0405">카메라</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0406">캠코더</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									가전제품
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate05">
                                    <h4>가전제품</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0501">냉장고</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0502">TV</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0503">세탁기/건조기</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0504">주방가전</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0505">스마트홈</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0506">영상가전</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0507">음향가전</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0508">계절가전</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0509">생활가전</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0510">기타 가전제품</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									가구/인테리어
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate06">
                                    <h4>가구/인테리어</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0601">침실가구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0602">거실가구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0603">주방가구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0604">수납/선반/공간박스</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0605">사무용가구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0606">기타가구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0607">침구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0608">커튼/카페트</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0609">인테리어소품</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0610">이벤트/파티용품</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0611">리빙생활</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									반려동물/취미
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate07">
                                    <h4>반려동물/취미</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0701">반려동물</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0702">키덜트</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0703">핸드메이드/DIY</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0704">악기</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0705">예술작품/골동품/수집</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0706">미술재료/미술도구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0707">게임</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									도서/음반/문구
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate08">
                                    <h4>도서/음반/문구</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0801">유아동도서/음반</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0802">학습/교육</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0803">소설/만화책</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0804">여행/취미/레저</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0805">문화/과학/경영</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0806">예술/디자인</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0807">잡지</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0808">기타도서</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0809">음반/DVD/굿즈</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0810">문구/사무용품</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									티켓/쿠폰
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate09">
                                    <h4>티켓/쿠폰</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0901">티켓</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0902">상품권/쿠폰</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0903">여행숙박/이용권</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate0904">기타티켓/쿠폰/이용권</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									 스포츠
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate10">
                                    <h4>스포츠</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1001">골프</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1002">자전거</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1003">인라인/스케이트/전동</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1004">축구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1005">야구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1006">농구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1007">라켓스포츠</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1008">헬스/요가</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1009">수상스포츠</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1010">검도/격투/권투</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1011">기타 스포츠</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1012">레저/여행</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a>
									공구/산업용품
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate11">
                                    <h4>공구/산업용품</h4>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1101">드릴/전동공구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1102">에어/유압</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1103">작업공구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1104">측정공구</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1105">초경/절삭/접착윤활</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1106">전기/전자</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1107">배관설비/포장운송</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1108">금형공작</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1109">용접기자재</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1110">산업/안전/공구함</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1111">산업자재</a>
                                    </li>
                                    <li>
                                        <a href="./getCategorylist.ms?product_category_2=cate1112">농기계/농업용공구</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="./getCategorylist.ms?product_category_2=cate1201">
									기타잡화
                                </a>
                                <span class="material-icons">
                                    arrow_right
                                </span>
                                <ul class="cate12">
                                    <li>
                                        <a>기타 잡화</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
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
                            <span class="material-icons">perm_identity</span>
                            <span>마이 페이지</span>
                        </a>
                    </li>
                    <li>
                        <a href="wishList.yb?page=1&endDateFormat=0">
                            <span class="material-icons">turned_in_not</span>
                            <span>찜 목록</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">access_time</span>
                            <span>참여 경매</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 등급 페이지 by 하나 -->
    <div class="credit_score_form">
        <ul class="member_credit_score">
            <li class="sale_credit_score">
                <h3>판매 신용도</h3>
                <ul class="sale_credit_score-info"> 
                    <li>
                        <div class="sale_credit_score-form title">
                            <label>정상 거래</label>
                        </div>
                        <div class="sale_credit_score-form content">
                            <span><%=saleCreditVO.getSale_normal() %> 건</span>
                            <a href="saleNormalCount.hn">정상 거래</a>
                        </div>
                    </li>
                    <li>
                        <div class="sale_credit_score-form title">
                            <label>판매 거부</label>
                        </div>
                        <div class="sale_credit_score-form content">
                            <span><%=saleCreditVO.getSale_denial() %> 건</span>
                            <a href="saleDenialCount.hn">판매 거부</a>
                        </div>
                    </li>
                    <li>
                        <div class="sale_credit_score-form title">
                            <label>미배송</label>
                        </div>
                        <div class="sale_credit_score-form content">
                            <span><%=saleCreditVO.getSale_undelivered() %> 건</span>
                            <a href="saleUndeliveredCount.hn">미배송</a>
                        </div>
                    </li>

                    <li>
                        <div class="sale_credit_score-form title">
                            <label>반품</label>
                        </div>
                        <div class="sale_credit_score-form content">
                            <span><%=saleCreditVO.getSale_return() %> 건</span>
                            <a href="saleReturnCount.hn">반품</a>
                        </div>
                    </li>
                    <li>
                        <div class="sale_credit_score-form title">
                            <label>판매 성사율</label>
                        </div>
                        <div class="sale_credit_score-form content">
                            <span><%=saleCreditVO.getSale_success_rate() %> %</span>
                        </div>
                    </li>
                    <li>
                        <div class="sale_credit_score-form title">
                            <label>판매 신용도</label>
                        </div>
                        <div class="sale_credit_score-form content">
                            <span><%=saleCreditVO.getSale_credit_score() %> 점</span>
                        </div>
                    </li>
                </ul>
            </li>
            <li class="purchase_credit_score">
                <h3>구매 신용도</h3>
                <ul class="purchase_credit_score-info">
                    <li>
                        <div class="purchase_credit_score-form title">
                            <label>정상 거래</label>
                        </div>
                        <div class="purchase_credit_score-form content">
                            <span><%=purchaseCreditVO.getPurchase_normal() %> 건</span>
                            <a href="purchaseNormalCount.hn">정상 거래</a>
                        </div>
                    </li>
                    <li>
                        <div class="purchase_credit_score-form title">
                            <label>구매 거부</label>
                        </div>
                        <div class="purchase_credit_score-form content">
                            <span><%=purchaseCreditVO.getPurchase_denial() %> 건</span>
                            <a href="purchaseDenialCount.hn">구매 거부</a>
                        </div>
                    </li>
                    <li>
                        <div class="purchase_credit_score-form title">
                            <label>미입금</label>
                        </div>
                        <div class="purchase_credit_score-form content">
                            <span><%=purchaseCreditVO.getPurchase_undelivered() %> 건</span>
                            <a href="purchaseUndeliveredCount.hn">미입금</a>
                        </div>
                    </li>
                    <li>
                        <div class="purchase_credit_score-form title">
                            <label>반품</label>
                        </div>
                        <div class="purchase_credit_score-form content">
                            <span><%=purchaseCreditVO.getPurchase_return() %> 건</span>
                            <a href="purchaseReturnCount.hn">반품</a>
                        </div>
                    </li>
                    <li>
                        <div class="purchase_credit_score-form title">
                            <label>판매 성사율</label>
                        </div>
                        <div class="purchase_credit_score-form content">
                            <span><%=purchaseCreditVO.getPurchase_success_rate() %> %</span>
                        </div>
                    </li>
                    <li>
                        <div class="purchase_credit_score-form title">
                            <label>판매 신용도</label>
                        </div>
                        <div class="purchase_credit_score-form content">
                            <span><%=purchaseCreditVO.getPurchase_credit_score() %> 점</span>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="credit_score-btn">
            <a class="back_to_myPage" href="./mypage.kj">뒤로 가기</a>
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