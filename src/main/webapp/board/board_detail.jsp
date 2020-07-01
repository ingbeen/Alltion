<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.alltion.hongsub.*" %>
<%
	String id = (String)session.getAttribute("id");
	BoardVO bvo = (BoardVO)request.getAttribute("bvo");
	String writerId = bvo.getProduct_id();
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./resources/css/style.css">
    <link rel="stylesheet" href="./resources/css/product_detail.css"> <!-- 상세페이지 스타일시트 참조 (by.HONG)-->
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>All-tion</title>
    <style>
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
    <!-- 광고 배너 및 헤더 -->
    <div class="ad__banner">
        <a href="#" class="ad__banner--link">
            <img src=".resources/img/header/adEx.png" class="ad__banner--img">
            <button class="ad__banner--closeBtn"></button>
        </a>
    </div>
    <div class="header">
        <div class="upper_header">
            <div class="upper_header--nav">
                <p>
                    <a href="" id="clock"></a>
                </p>
                <ul>
                    <li>
                        <a href="loginForm.html">로그인</a>
                    </li>
                    <li>
                        <a href="joinForm.html">회원 가입</a>
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
                        <img src=".resources/img/header/category_tab.png">
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

    <!-- !! 메인 페이지 내용(지워서 사용함) !! start -->
    <!--  !! 여기에 내용 넣기 !!  by.Hong  -->
    <div align="center">
    <div class="main_body" align="left">
        <div class="product_summary">
            <!-- ↓↓경매 정보//사진,대략적인 정보↓↓-->
            <div class="summary_slideshow" align="center">
                <div class="slideshow-container">
                    <div class="mySlides fade">
                        <img class="target1" src="<%=bvo.getProduct_img1() %>" data-zoom="2">
                    </div>
                    <div class="mySlides fade">
                        <img class="target2" src="<%=bvo.getProduct_img2() %>" data-zoom="2">
                    </div>
                    <div class="mySlides fade">
                        <img class="target3" src="<%=bvo.getProduct_img3() %>" data-zoom="2">
                    </div>
                    <div class="mySlides fade">
                        <img class="target4" src="<%=bvo.getProduct_img4() %>" data-zoom="2">
                    </div>
                    <div class="mySlides fade">
                        <img class="target5" src="<%=bvo.getProduct_img5() %>" data-zoom="2">
                    </div>
                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </div>
                <br>
                <div class="dot_group">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                    <span class="dot" onclick="currentSlide(4)"></span>
                    <span class="dot" onclick="currentSlide(5)"></span>
                </div>
                <button type="button" class="mag_btn"><img src="./resources/img/product/magicon.png"></button>&nbsp;&nbsp;&nbsp;
                <button type="button" class="mag_close"><img src="./resources/img/product/mag_close.png"></button>
            </div>
            <!-- ↓↓경매 요약 정보에서 텍스트 부분↓↓ -->
            <div class="summary_information">
                <div class="summary_info_nowPrice">
                    <div class="summary_info_category" style="display: inline-block;">
                        <span><a href="">카테고리</a></span>
                        <span>&nbsp;&nbsp;&#10095;&nbsp;&nbsp;</span>
                        <span><a href="">카테고리</a></span>
                    </div>
                    <ul>
                        <li>
                            <p class="product_detail name" style="font-size: 28px;"><%=bvo.getProduct_subject() %></p>
                        </li>
                        <li>
                            <label for="now_price">현재가</label>
                            <p id="now_price"><%=bvo.getProduct_starting_price() %>원</p>
                        </li>
                    </ul>
                </div>
                <div class="summary_info">
                    <ul>
                       <li>
                            <label for="product_number">상품 번호</label>
                            <p><%=bvo.getProduct_number() %></p>
                        </li>
                        <li>
                            <label for="id">판매자</label>
                            <font><%=bvo.getProduct_id() %>&nbsp;님</font>&nbsp;&nbsp; 
                            <button id="seller_check_btn" onclick="modal_display(1)" style="background-color: #616161; color:white;">
                                	판매자 정보 확인하기
                            </button>
                            <!-- ↓↓판매자 정보확인하기 눌렀을때↓↓ Modal by.HONG-->
                            <div id="seller_info_modal" class="modal">
                                <div class="modal-content">
                                    <span class="close">&times;</span>
                                    <fieldset id="seller_info">
                                        <legend>판매자 정보</legend>
                                        <ul>
                                            <li>
                                                <label>아이디</label>
                                                <font>꾸엥꾸꾸엥</font>
                                            </li>
                                            <li>
                                                <label>이메일</label>
                                                <font>gugueng@naver.com</font>
                                            </li>
                                            <li>
                                                <label>정상거래</label>
                                                <font>20 건</font>
                                            </li>
                                            <li>
                                                <label>신고횟수</label>
                                                <font>0 건</font>
                                            </li>
                                            <li>
                                                <label>판매등급</label>
                                                <font>플레티넘</font>
                                            </li>
                                            <li>
                                                <label>현재 판매중 경매</label>
                                                <font>56건</font>
                                            </li>
                                        </ul>
                                    </fieldset>
                                </div>
                            </div>
                        </li>
                        <li>
                            <label for="boarddate">경매기간</label>
                            <p>2020/06/23 00:00:01 ~ 2020/06/24 23:59:59</p>
                        </li>
                        <li>
                            <label for="start_price">시작가</label>
                            <p><%=bvo.getProduct_starting_price() %></p>
                        </li>
                        <li>
                            <label for="end_price">즉시 구매가</label>
                            <p style="color:#F9A825;font-weight:bold;font-size:18px;"><%=bvo.getProduct_purchase_price() %>원</p>
                        </li>
                        <li>
                            <label for="boarddate">최고 응찰자</label>
                            <p><br></p>
                        </li>
                        <li>
                            <label for="boarddate">판매자 등급</label>
                            <p>플레티넘</p>
                        </li>
                        <li>
                            <label for="boarddate">거래방법</label>
                            <p>직거래 / 택배</p>
                        </li>

                        <li>
                            <label for="boarddate">남은시간</label>
                            <p style="font-weight:bold;font-size:18px;">20:19:49</p>
                        </li>
                        <li>
                            <label for="boarddate">응찰단위</label>
                            <font>1,000원</font>&nbsp;&nbsp; 
                            <button class="btns1" type="button" id="bid_notify_btn" onclick="modal_display(2)">응찰 유의사항</button>
                            <!-- ↓↓응찰 유의사항을 눌렀을때↓↓-->
                            <div id="bid_notify_modal" class="modal">
                                <div class="modal-content">
                                    <span class="close">&times;</span>
                                    <fieldset id="bid_notify">
                                        <legend>응찰시 유의사항!</legend>
                                        <ul>
                                            <li>
                                                <label>1조1항</label>
                                                <font>응찰시 취소 불가능.</font>
                                            </li>
                                            <li>
                                                <label>2조1항</label>
                                                <font>즉시구매가에 도달할 시 즉시 구매진행됨.</font>
                                            </li>
                                            <li>
                                                <label>2조3항</label>
                                                <font>택배 배송시 손상은 판매자에게 없음.</font>
                                            </li>
                                            <li>
                                                <label>3조1항</label>
                                                <font>시간이 종료시 최고응찰자가 낙찰됨.</font>
                                            </li>
                                            <li>
                                                <label>3조2항</label>
                                                <font>판매자나 관리자가 임의로 응찰을 취소할 수 없음.</font>
                                            </li>
                                            <li>
                                                <label>3조3항</label>
                                                <font>아무거나아무거나 아무거나 응찰해라~</font>
                                            </li>
                                            <li>
                                                <label>3조5항</label>
                                                <font>거지같은 물품올리지 마라~</font>
                                            </li>
                                            <li>
                                                <label>4조1항</label>
                                                <font>모달모달모달 모달모달모달</font>
                                            </li>
                                        </ul>
                                    </fieldset>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="btns" align="center">
                    <button type="button" id="bid_btn" onclick="bidInsert()">응찰하기</button>
                    <button type="button" id="bid_btn2">즉시구매</button>
<!--                            <button type="button" id="bid_btn3">문의하기</button>-->
                </div>

            </div>
        </div>
        <!-- ↓↓상세정보페이지 네비게이션바↓↓ -->
        <ul class="detail_page_nav">
            <li style="border-radius: 4px 4px 0 0;background-color:#BBBBBB;font-weight: bold;">
                <a style="color:white;">응찰자 리스트</a>
            </li>
            <li>
                <a type="button" onclick="move(2)">상품 정보</a>
            </li>
            <li>
                <a type="button" onclick="move(3)">문의 사항</a>
            </li>
            <li>
                <a type="button" onclick="move(4)">판매자 정보</a>
            </li>
        </ul>

        <!-- ↓↓응찰자 리스트↓↓ -->
        <div class="bid_list" align="center">

            <div class="bid_list_column">
                <div class="bid_list_no">응찰 번호</div>
                <div class="bid_price">응찰 가격</div>
                <div class="bidder_id">응찰자</div>
                <div class="bid_time">응찰 시간</div>
            </div>
            <div class="bidder">
                <div class="bid_list_no">4</div>
                <div class="bid_price">30,000 원</div>
                <div class="bidder_id">가지마 님</div>
                <div class="bid_time">몇 시간전</div>
            </div>
            <div class="bidder">
                <div class="bid_list_no">3</div>
                <div class="bid_price">20,000 원</div>
                <div class="bidder_id">가지마1 님</div>
                <div class="bid_time">몇 시간전</div>
            </div>
            <div class="bidder">
                <div class="bid_list_no">2</div>
                <div class="bid_price">19,000 원</div>
                <div class="bidder_id">가지마2 님</div>
                <div class="bid_time">몇 시간전</div>
            </div>
            <div class="bidder">
                <div class="bid_list_no">1</div>
                <div class="bid_price">15,000 원</div>
                <div class="bidder_id">가지마3 님</div>
                <div class="bid_time">몇 시간전</div>
            </div>
        </div>


        <ul class="detail_page_nav">
            <li>
                <a type="button" onclick="move(1)">응찰자 리스트</a>
            </li>
            <li style="border-radius: 4px 4px 0 0;background-color:#BBBBBB;font-weight: bold;">
                <a style="color:white;">상품 정보</a>
            </li>
            <li>
                <a type="button" onclick="move(3)">문의 사항</a>
            </li>
            <li>
                <a type="button" onclick="move(4)">판매자 정보</a>
            </li>
        </ul>

        <!-- ↓↓경매의 사진들 펼쳐놓음.↓↓ -->
        <div class="product_information">

            <div class="product_information_text">

            </div>
            <div class="img_1">
                <div align="center">
                    <img src="<%=bvo.getProduct_img1() %>" align="center"></div>
            </div>
            <div class="img_2">
                <div align="center">
                    <img src="<%=bvo.getProduct_img2() %>" align="center">
                </div>
            </div>
            <div class="img_3">
                <div align="center">
                    <img src="<%=bvo.getProduct_img3() %>" align="center">
                </div>
            </div>

            <ul class="detail_page_nav">
                <li>
                    <a type="button" onclick="move(1)">응찰자 리스트</a>
                </li>
                <li>
                    <a type="button" onclick="move(2)">상품 정보</a>
                </li>
                <li style="border-radius: 4px 4px 0 0;background-color:#BBBBBB;font-weight: bold;">
                    <a style="color:white;">문의 사항</a>
                </li>
                <li>
                    <a type="button" onclick="move(4)">판매자 정보</a>
                </li>
            </ul>
        </div>

        <!-- ↓↓경매물품의 상세정보↓↓ -->
        <div class="information_detail">
            <span class="dot1"></span>
            <span>제품 설명</span>
            <p>
                가나다라마바사아자차카타파하<br>
                가나다라마바사아자차카타파하<br>
                가나다라마바사아자차카타파하<br>
                가나다라마바사아자차카타파하<br>
                가나다라마바사아자차카타파하<br>
                가나다라마바사아자차카타파하<br>
            </p>
        </div>

        <ul class="detail_page_nav">
            <li>
                <a type="button" onclick="move(1)">응찰자 리스트</a>
            </li>
            <li>
                <a type="button" onclick="move(2)">상품 정보</a>
            </li>
            <li>
                <a type="button" onclick="move(3)">문의 사항</a>
            </li>
            <li style="border-radius: 4px 4px 0 0;background-color:#BBBBBB;font-weight: bold;">
                <a style="color:white;">판매자 정보</a>
            </li>
        </ul>

        <!-- ↓↓판매자 정보넣어둠. //수정 필요. 다른 항목을 넣어야 될듯.↓↓  -->
        <div class="seller_detail">
            <span class="dot1"></span>
            <span>판매자 정보</span>
            <ul>
                <li>
                    <label for="id">판매자 아이디</label>
                    아푸아푸아푸
                </li>
                <li>
                    <label for="grade">판매자 등급</label>
                    플레티넘
                </li>
                <li>
                    <label for="info1">정보1</label>
                    정보정보정보
                </li>
                <li>
                    <label for="info1">정보2</label>
                    정보정보정보
                </li>
                <li>
                    <label for="info1">정보3</label>
                    정보정보정보
                </li>

            </ul>
        </div>

    </div>
    </div>

    <!-- !! 메인 페이지 내용(지워서 사용함) !! end -->

    <!-- 푸터 영역 -->
    <div class="footer" style="margin-top: 100px;">
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
        var check = false;

        $(function() {
            // TOP 키
            // 현재 브라우저 y스크롤 위치를 sc 변수에 저장
            let sc = $(window).scrollTop();
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
            $(".ad__banner--closeBtn").click(function() {
                $(".ad__banner").hide();
            })

            // 헤더 고정
            var header = $('.lower_header');
            $(window).scroll(function() {
                if ($(this).scrollTop() > 0) {
                    header.addClass('sticky');
                } else {
                    header.removeClass('sticky');
                }
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
        
        // ↓↓ 이미지 슬라이드. ↓↓ by.HONG
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);

        }

        function currentSlide(n) {
            showSlides(slideIndex = n);

        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");


            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";


            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
                slides[i].className = slides[i].className.replace(" magSlides", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }

        // ↑↑이미지 슬라이드.↑↑
        
        // ↓↓돋보기 버튼↓↓
        // 버튼클릭시 mySlides클래스 태그에 " magSlides" 클래스명을 추가한 뒤 돋보기 함수 실행
        $(document).on('click','.mag_btn',function(event){
            var slides = document.getElementsByClassName("mySlides");
            slides[slideIndex - 1].className += " magSlides";
            mag(slideIndex);  //돋보기 함수 실행
        });
        
        $(document).on('click','.mag_close',function(event){
            $('.magSlides').off();
        });
        // ↓↓이미지 돋보기기능.↓↓ by.HONG
        function mag(i) {
            var target = $('.target' + i);
            var zoom = target.data('zoom');

            $(".magSlides")
                .on('mousemove', magnify)
                .prepend("<div class='magnifier'></div>")
                .children('.magnifier').css({
                    "background": "url('" + target.attr("src") + "') no-repeat",
                    "background-size": target.width() * zoom + "px " + target.height() * zoom + "px"
                });

            var magnifier = $('.magnifier');

            function magnify(e) {
                // 마우스 위치에서 .magnify의 위치를 차감해 컨테이너에 대한 마우스 좌표를 얻는다.
                var mouseX = e.pageX - $(this).offset().left;
                var mouseY = e.pageY - $(this).offset().top;

                // 컨테이너 밖으로 마우스가 벗어나면 돋보기를 없앤다.
                if (mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0) {
                    magnifier.fadeIn(100);
                } else {
                    magnifier.fadeOut(100);
                }

                //돋보기가 존재할 때
                if (magnifier.is(":visible")) {

                    // 마우스 좌표 확대될 이미지 좌표를 일치시킨다.
                    var rx = -(mouseX * zoom - magnifier.width() / 2);
                    var ry = -(mouseY * zoom - magnifier.height() / 2);

                    //돋보기를 마우스 위치에 따라 움직인다.
                    //돋보기의 width, height 절반을 마우스 좌표에서 차감해 마우스와 돋보기 위치를 일치시킨다.
                    var px = mouseX - magnifier.width() / 2;
                    var py = mouseY - magnifier.height() / 2;

                    //적용
                    magnifier.css({
                        left: px,
                        top: py,
                        backgroundPosition: rx + "px " + ry + "px"
                    });


                }
            }
        };
        // ↑↑이미지 돋보기기능↑↑

        // ↓↓메뉴 클릭시 해당위치로 이동↓↓
        function move(n) {
            if (n == 1) {
                var offset = $(".bid_list").offset();
            } else if (n == 2) {
                var offset = $(".product_information").offset();
            } else if (n == 3) {
                var offset = $(".information_detail").offset();
            } else if (n == 4) {
                var offset = $(".seller_detail").offset();
            }
            $('html, body').animate({
                scrollTop: offset.top - 200}, 400);
        }

        // ↓↓모달 : 판매자 정보확인 버튼, 응찰 유의사항 버튼 ↓↓
        function modal_display(n) {
            // ↓↓판매자 정보확인
            if (n == 1) {
                var seller_info_modal = document.getElementById('seller_info_modal');
                var close0 = document.getElementsByClassName('close')[0];
                seller_info_modal.style.display = "block";
                close0.onclick = function(event) {
                    seller_info_modal.style.display = "none";
                }

            // ↓↓응찰유의사항
            } else if (n == 2) { 
                var bid_notify_modal = document.getElementById('bid_notify_modal');
                var close1 = document.getElementsByClassName('close')[1];
                bid_notify_modal.style.display = "block";
                close1.onclick = function(event) {
                    bid_notify_modal.style.display = "none";
                }
            }

            // ↓↓모달창 외부 클릭시 모달창 닫아짐.
            window.onclick = function(event) {
                if (event.target == seller_info_modal) {
                    seller_info_modal.style.display = "none";
                }
                if (event.target == bid_notify_modal) {
                    bid_notify_modal.style.display = "none";
                }
            }
        }
    </script>
</body></html>
