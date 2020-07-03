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
    <!-- ��� ������ ���� ���� by �ϳ�  -->
    <!-- top Ű -->
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
                        <a href="./logout.kj">�α׾ƿ�</a>
                    </li>
                    <li>
                        <a href="#">�� ����</a>
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
                        <option value="">��ü</option>
                        <option value="cate01">�м�</option>
                        <option value="cate02">��Ƽ</option>
                        <option value="cate03">���/���Ƶ�</option>
                        <option value="cate04">���ڱ��</option>
                        <option value="cate05">������ǰ</option>
                        <option value="cate06">����/���׸���</option>
                        <option value="cate07">�ݷ�����/���</option>
                        <option value="cate08">����/����/����</option>
                        <option value="cate09">Ƽ��/����</option>
                        <option value="cate10">������</option>
                        <option value="cate11">����/�����ǰ</option>
                        <option value="cate12">��Ÿ��ȭ</option>
                    </select>
                    <input type="text" placeholder="ã���ô� ��ǰ�� �Է��� �ּ���" class="search__input">
                </div>
                <ul class="member_info">
                    <li>
                        <a href="mypage.html">
                            <span class="material-icons">perm_identity</span>
                            <span>���� ������</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">turned_in_not</span>
                            <span>�� ���</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="material-icons">access_time</span>
                            <span>���� ���</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- ȸ�� ���� ���� -->
        <div class = "joinWrap">
        <h2>All-tion ȸ�� ���� ����</h2>
        <div class = "row_group">
            <div class = "join_row">
                <label class = "join_title" text-align = "left">���̵�</label>
                <h1><%=membervo.getMember_id()%></h1>
                <h4>���̵�� ���� �Ұ����մϴ�.</h4>
                <input type = "hidden" id = "member_id" class = "int">
            </div>
            <div class = "join_row">
                <label class = "join_title" text-align = "left">��й�ȣ</label>
                <input type = "password" id = "member_password" class = "int" maxlength = "20" >
            </div>
            <div class = "join_row">
                <label class = "join_title" text-align = "left">��й�ȣ ��Ȯ��</label>
                <input type = "password" id = "member_password2" class = "int" maxlength = "20" >
             <input type = "button" value = "��й�ȣ ����" class = "base_btn"> 
            </div>
            <div class = "join_row">
                <label class = "join_title" text-align = "left">�̸���</label>
             	 
                <div>
                    <input type="text" class = "int" id="member_email" size="35" placeholder="<%=membervo.getEmail() %>">
                    <br>
                    <input type = "button" value = "�̸��� ����" class = "base_btn">
                </div>
            </div>  
            <div class = "join_row">
                <label class = "join_title" text-align = "left">�޴� ��ȭ ��ȣ</label>
                <input type = "text" id = "member_phone" class = "int" maxlength = "11" placeholder="<%=membervo.getMember_phone() %>">
                <input type = "button" value = "�޴���ȭ ����" class = "base_btn">
            </div>
            <input type = "button" value = "�ڷΰ���" class = "base_btn1"> 
        </div>    
        </div>    
    <!-- ��� ��Ģ �� ȸ�� ��� ���� ���� -->
    <div class="rules">
        <div class="rules__content">
            <ul class="rules__content">
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
    <!-- !! ���� ������ ����(������ �����) !! end -->
    
    <!-- Ǫ�� ���� -->
    <div class="footer">
        <div class="upper_footer">
            <ul class="upper_footer--list">
                <li>
                    <a href="#">
                        �üǼҰ�
                    </a>
                </li>
                <li>
                    <a href="#">
                        ä������
                    </a>
                </li>
                <li>
                    <a href="#">
                        ��������
                    </a>
                </li>
                <li>
                    <a href="#">
                        �̿���
                    </a>
                </li>
                <li>
                    <a href="#">
                        ��������ó����ħ
                    </a>
                </li>
                <li>
                    <a href="#">
                        ���ڱ����ŷ����
                    </a>
                </li>
                <li>
                    <a href="#">
                        ���޼���
                    </a>
                </li>
            </ul>
        </div>
        <div class="lower_footer">
            
        </div>        
    </div>
    
    <!--  ��ũ��Ʈ ����  -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            // TOP Ű
            let sc = $(window).scrollTop(); // scroll�� ���� ���� ���� �� ��ġ��
            if(sc == 0){
                $("#topKey").fadeOut();
            }
            
            $("#topKey").click(function(){
                $("html,body").animate({
                    "scrollTop" : "0px"
                });
            })
            
            // scroll�� ���� ���� ���� �� �����
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
            
            // ���� ���ֱ�
            $(".ad__banner--closeBtn").click(function(){
                $(".ad__banner").hide();
			})
            
            // ��� ����
            let header = $('.lower_header');
            $(window).scroll(function(){
                if($(this).scrollTop() > 0){
                        header.addClass('sticky');
                   }else{
                        header.removeClass('sticky');
                   }
            })
            
            // �α� ��� - ī�װ� ���� ������ �̵�
            $("ul.deadline-items__category > li").click(function(){
                
                let activeTab = $(this).attr('id');
                
				$('ul.deadline-items__category > li').removeClass('active');
				$('.deadline-items--product').removeClass('active');
				$(this).addClass('active');
				$('div.deadline-items--product.' + activeTab).addClass('active');
            })
        });
        
        // 2020-06-23 pm 03:55 �߰�
        // �ǽð� �ð� ���ϱ�
        setInterval(function(){
            let nowDate = new Date();
            let day = ['(��)', '(��)', '(ȭ)', '(��)', '(��)', '(��)', '(��)'];
            let dayNum = nowDate.getDay();
            let year = nowDate.getFullYear();
            let month= nowDate.getMonth() + 1;
            let date = nowDate.getDate();
            let hour = nowDate.getHours();
            let min = nowDate.getMinutes();
            let sec = nowDate.getSeconds();
            
            /*
            // ���� ���ķ� ������ ���� ��
            let amPm = '����';
            
            if(hour >= 12) {
                amPm = '����';
                hour = hour - 12;
            }
            
            document.getElementById('clock').innerHTML = year + '��' + '&nbsp;' + month + '��' + '&nbsp;' + date + '��' + day[dayNum] + '&nbsp;' + amPm + '&nbsp;' + addZero(hour) + ":" + addZero(min) + ":" + addZero(sec);
            */
            
            document.getElementById('clock').innerHTML = year + '��' + '&nbsp;' + month + '��' + '&nbsp;' + date + '��' + day[dayNum] + '&nbsp;' + hour + ":" + addZero(min) + ":" + addZero(sec);
        },1000);
        
        // ���� �ڸ� ������ �� 0 �ٿ� �ֱ�
        function addZero(i) {
            if (i < 10) {
                i = '0' + i
            };
            return i;
        } // 2020-06-23 pm 03:55 �߰�
    </script>
</body>
</html>