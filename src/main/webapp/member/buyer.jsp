<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./resources/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>All-tion</title>
    <style>
.btn_style{
    height: 40px;
    min-width: 80px;
    line-height: 40px;
    background: #FFAE36;
    font-size: 14px;
    color: #fff;
    text-align: center;
    font-family: "맑은 고딕","Malgun Gothic";
    border-radius: 7px;
}
.buyer_title  {
            font-size: 25px;
        }
.buyer h2 {
            line-height: 30px;
            margin-bottom: 50px;
            margin-left: 250px;
            font-size: 24px;
            margin-top: 50px;
        } 
.buyer_name h3{
			line-height: 30px;
            margin-bottom: 50px;
            margin-left: 250px;
            margin-top: 20px;
            font-size: 24px;
} 
.table {
      border-collapse: collapse;
      border-top: 3px solid  #F9A825;
      width: 1200px;
      margin : auto;
    }  
.table th {
      color:  #F9A825;
      background: #f0f6f9;
      text-align: left;
      font-size: 18px;
    }
.table td {
      padding: 5px;
      border: 1px solid  #F9A825;
      text-align: center;
    }
.table th:first-child, .table td:first-child {
      border-left: 0;
    }
.table th:last-child, .table td:last-child {
      border-right: 0;
    }
.table tr td:first-child{
      text-align: center;
    }
.table caption{caption-side: bottom; display: none;}
    </style>
</head>
<body>
    <!-- 모든 페이지 공통 영역 by 하나  -->
  
    <div class="header">
        <div class="upper_header">
            <div class="upper_header--nav">
                <p>
                    <a href="">고객 센터</a>
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
                        <option value="패션">패션</option>
                        <option value="뷰티">뷰티</option>
                        <option value="출산/유아동">출산/유아동</option>
                        <option value="전자기기">전자기기</option>
                        <option value="가전제품">가전제품</option>
                        <option value="가구/인테리어">가구/인테리어</option>
                        <option value="반려동물/취미">반려동물/취미</option>
                        <option value="도서/음반/문구">도서/음반/문구</option>
                        <option value="티켓/쿠폰">티켓/쿠폰</option>
                        <option value="스포츠">스포츠</option>
                        <option value="공구/산업용품">공구/산업용품</option>
                        <option value="기타잡화">기타잡화</option>
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
                        <a href="#">
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
    <!--구매자 현황 -->
   <div class = "buyer">
       <div class = "buyer_list">
           <div class = "buyer_list--list">
           	<div class = "buyer_name">
           	<h3>${userId}&nbsp;님</h3>
           	</div>
               <div class = "buyer_title">
                <h2># 구매 중</h2>                 
                </div>
                <table class="table">
                <tr><th colspan = "6">구매중 경매</th><th style = "text-align:right;"><button type = "submit" class = "btn_style">관리</button></th></tr>
                <tr><td>구분</td><td>상품 번호</td><td>상품명</td><td>구매 가격</td><td>입금 기한</td><td>거래 방식</td><td>판매자</td></tr>
                <tr><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                </table>  
                <div class = "buyer_title">
                <h2># 구매 완료</h2>
                </div>
                <table class="table">
                <tr><th colspan = "7">구매 완료 경매</tr>
                <tr><td>구분</td><td>상품 번호</td><td>상품명</td><td>구매 가격</td><td>구매한 날짜</td><td>구매 확정일</td><td>판매자</td></tr>
                <tr><td>1</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                </table>  
           </div>    
       </div>       
   </div>
    <!-- 경매 규칙 및 회원 등급 제도 설명 -->
    <div class="rules">
        <div class="rules__content">
            <ul class="rules__content">
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
    <!-- !! 메인 페이지 내용(지워서 사용함) !! end -->
    
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
            
        </div>        
    </div>
    
    <!--  스크립트 영역  -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            // 광고 없애기
            $(".ad__banner--closeBtn").click(function(){
                $(".ad__banner").hide();
			})
            
            // 헤더 고정
            var header = $('.lower_header');
            $(window).scroll(function(){
                if($(this).scrollTop() > 0){
                        header.addClass('sticky');
                   }else{
                        header.removeClass('sticky');
                   }
            })
            
            // 카테고리 누를 때마다 이동
            $("ul.deadline-items__category a").click(function(){
//                
//                var activeTab = $(this).attr('id');
//                
//				$('ul.deadline-items__category a').removeClass('active');
//				$('.menu-box').removeClass('active');
//				$(this).prop('checked', true);
//				$('div#' + activeTab).addClass('active');
            })
        });
    </script>
</body>
</html>