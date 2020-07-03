<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "com.spring.alltion.login.MemberVO" %>
<%
	MemberVO membervo = (MemberVO)request.getAttribute("memberVO");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./resources/css/style.css">
    <link href="https://fonts.googleapis.com/css2?
    family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>All-tion</title>
    <style>
        .joinWrap {
            width: 700px;
            margin: 160px auto;
            border: 1px solid #FEE7C5;
            border-radius: 4px;
            box-shadow: 2px 2px 2px rgba(238, 238, 238, 0.8);
        }
        
        .joinWrap > h3 {
            width: 356px;
            margin: 0 auto 32px auto;
        }
        
        .joinWrap h2 {
            margin-top: 24px;
            margin-bottom: 50px;
            font-size: 24px;
            text-align: center;
        }
        .joinWrap h1 {
            margin-top: 10px;
            font-size: 25px;
            text-align: left;
        }
        .joinWrap h4 {
            margin-top: 10px;
            font-size: 10px;
            text-align: left;
        }
        
        .row_group {
            width: 500px;
            margin: 0 auto;
        }
        
        .join_title {
            font-size: 16px;
        }
        
        .join_title_title {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 20px;
        }
        
        .join_row {
            margin: 0 auto;
            margin-bottom: 36px;
            text-align: left;
        }
        
        .int {
            margin-top: 4px;
            border-bottom: 1px solid rgba(0, 0, 0, 0.25);
            font-size: 16px;
            width: 100%;
            padding: 4px;
            transition: border .2s;
        }
        
        .int:focus {
            border-bottom: 1px solid #F9A825;
        }
        
        .int::placeholder {
            font-size: 14px;
        }
        
        .error_next_box {
            display: block;
            margin: 9px 0 -2px;
            font-size: 12px;
            line-height: 14px;
            color: red;
        }
        .ps_box.int_id {
            padding-right: 110px;
        }
        .ps_box.int_id_address {
            padding-right: 25px;
        }
        .ps_box, .ps_box_disable {
            display: block;
            position: relative;
            width: 100%;
            height: 51px;
            border: solid 1px #F9A825;
            padding: 10px 14px 10px 14px;
            background: #fff;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            vertical-align: top;
            border-radius: 5px;
        }
        
        .base_btn {
            margin-top: 15px;
            bottom: 4px;
            right: 0;
            display: inline-block;
            padding: 0 10px;
            height: 28px;
            background: #F8C436;
            color: #fff;
            text-align: center;
            vertical-align: middle;
            border-radius: 2px;
            font-size: 14px;
        }
        .base_btn1 {
            margin-top: 15px;
            margin-left : 400px;
            height: 40px;
            width: 100px;
            background: #F8C436;
            color: #fff;
            text-align: center;
            border-radius: 5px;
            font-size: 17px;
            
        }
        
       
        .base_btn:hover {background-color: #F9A825;}
        
        #member_email {
            width: 40%;
        }

    </style>
</head>
<body>
    <!-- 모든 페이지 공통 영역 by 하나  -->
    <!-- top 키 -->
    <div id="topKey" class="topKey_btn" >
        <span class="material-icons">
            keyboard_arrow_up
        </span>
    </div>
   
    </div>
    <div class="header">
        <div class="upper_header">
            <div class="upper_header--nav">
                <p>
                    <a href="" id="clock"></a>
                </p>
                <ul>
                    <li>
                        <a href="./main.kj">${member_id}</a>
                    </li>
                    <li>
                        <a href="./logout.kj">로그아웃</a>
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
                    <a href="index.html">ALL-TION</a>
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
                        <a href="mypage.html">
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
    <!-- 회원 정보 수정 -->
        <div class = "joinWrap">
        <h2>All-tion 회원 정보 수정</h2>
        <div class = "row_group">
            <div class = "join_row">
                <label class = "join_title" text-align = "left">아이디</label>
                <h1><%=membervo.getMember_id()%></h1>
                <h4>아이디는 변경 불가능합니다.</h4>
                <input type = "hidden" id = "member_id" class = "int">
            </div>
            <div class = "join_row">
                <label class = "join_title" text-align = "left">비밀번호</label>
                <input type = "password" id = "member_password" class = "int" maxlength = "20" >
            </div>
            <div class = "join_row">
                <label class = "join_title" text-align = "left">비밀번호 재확인</label>
                <input type = "password" id = "member_password2" class = "int" maxlength = "20" >
             <input type = "button" value = "비밀번호 변경" class = "base_btn"> 
            </div>
            <div class = "join_row">
                <label class = "join_title" text-align = "left">이메일</label>
             	 
                <div>
                    <input type="text" class = "int" id="member_email" size="35" placeholder="<%=membervo.getEmail() %>">
                    <br>
                    <input type = "button" value = "이메일 변경" class = "base_btn">
                </div>
            </div>  
            <div class = "join_row">
                <label class = "join_title" text-align = "left">휴대 전화 번호</label>
                <input type = "text" id = "member_phone" class = "int" maxlength = "11" placeholder="<%=membervo.getMember_phone() %>">
                <input type = "button" value = "휴대전화 변경" class = "base_btn">
            </div>
            <input type = "button" value = "뒤로가기" class = "base_btn1"> 
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
            // TOP 키
            let sc = $(window).scrollTop(); // scroll이 제일 위에 있을 때 위치값
            if(sc == 0){
                $("#topKey").fadeOut();
            }
            
            $("#topKey").click(function(){
                $("html,body").animate({
                    "scrollTop" : "0px"
                });
            })
            
            // scroll이 제일 위에 왔을 때 숨기기
            $(window).scroll(function(){
                sc = $(this).scrollTop();
                
                if(sc == 0){
                    $("#topKey").fadeOut();
                }
                else {
                    $("#topKey").fadeIn();
                }
                
//                console.log(sc);
            })
            
            // 광고 없애기
            $(".ad__banner--closeBtn").click(function(){
                $(".ad__banner").hide();
			})
            
            // 헤더 고정
            let header = $('.lower_header');
            $(window).scroll(function(){
                if($(this).scrollTop() > 0){
                        header.addClass('sticky');
                   }else{
                        header.removeClass('sticky');
                   }
            })
            
            // 인기 경매 - 카테고리 누를 때마다 이동
            $("ul.deadline-items__category > li").click(function(){
                
                let activeTab = $(this).attr('id');
                
				$('ul.deadline-items__category > li').removeClass('active');
				$('.deadline-items--product').removeClass('active');
				$(this).addClass('active');
				$('div.deadline-items--product.' + activeTab).addClass('active');
            })
        });
        
        // 2020-06-23 pm 03:55 추가
        // 실시간 시간 구하기
        setInterval(function(){
            let nowDate = new Date();
            let day = ['(일)', '(월)', '(화)', '(수)', '(목)', '(금)', '(토)'];
            let dayNum = nowDate.getDay();
            let year = nowDate.getFullYear();
            let month= nowDate.getMonth() + 1;
            let date = nowDate.getDate();
            let hour = nowDate.getHours();
            let min = nowDate.getMinutes();
            let sec = nowDate.getSeconds();
            
            /*
            // 오전 오후로 나누고 싶을 때
            let amPm = '오전';
            
            if(hour >= 12) {
                amPm = '오후';
                hour = hour - 12;
            }
            
            document.getElementById('clock').innerHTML = year + '년' + '&nbsp;' + month + '월' + '&nbsp;' + date + '일' + day[dayNum] + '&nbsp;' + amPm + '&nbsp;' + addZero(hour) + ":" + addZero(min) + ":" + addZero(sec);
            */
            
            document.getElementById('clock').innerHTML = year + '년' + '&nbsp;' + month + '월' + '&nbsp;' + date + '일' + day[dayNum] + '&nbsp;' + hour + ":" + addZero(min) + ":" + addZero(sec);
        },1000);
        
        // 일의 자리 숫자일 때 0 붙여 주기
        function addZero(i) {
            if (i < 10) {
                i = '0' + i
            };
            return i;
        } // 2020-06-23 pm 03:55 추가
    </script>
</body>
</html>