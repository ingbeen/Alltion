// 헤더 고정
var header = $('.lower_header');
$(window).scroll(function(){
    if($(this).scrollTop() > 0){

        header.addClass('sticky');
    }else{
        header.removeClass('sticky');
    }
})

// 카테고리변경 by.유빈
function changeCategory(item) {
    var name = item.name; // 카테고리1, 카테고리2
    var value = item.value; // 선택한 카테고리
    var selectOutput = ''; // 카테고리표 출력
    var routeOutput = ''; // 카테고리 경로 출력
    
    // 선택한 카테고리가 1차인지 2차인지
    if (name == 'product_category_1') {
    	
    	// 카테고리가 1차이면 선택한 값을 카테고리 경로로 바꾼다
    	// '선택해주세요'를 선택하면 공란으로 바꾼다
        routeOutput = $('.category--select__01 option:selected').text();
        if (routeOutput == '- 선택해주세요 -') {
            $('.category--route__text').children('p').html('');
            $('.category--select__01').next().remove();
            return;
        } else {
            $('.category--route__text').children('p').html(routeOutput);
        }
        
        // 선택한 1차 카테고리에 대한 세부적인 2차 카테고리를 띄운다
        /* 시작 */
        if (value == 'cate01') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0101">여성의류</option>';
            selectOutput += '<option value="cate0102">남성의류</option>';
            selectOutput += '<option value="cate0103">여성신발</option>';
            selectOutput += '<option value="cate0104">남성신발</option>';
            selectOutput += '<option value="cate0105">액세서리</option>';
            selectOutput += '<option value="cate0106">귀금속</option>';
            selectOutput += '<option value="cate0107">모자</option>';
            selectOutput += '<option value="cate0108">기타잡화/관련용품</option>';
            selectOutput += '<option value="cate0109">수입명품</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate02') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0201">스킨케어</option>';
            selectOutput += '<option value="cate0202">메이크업</option>';
            selectOutput += '<option value="cate0203">헤어/바디</option>';
            selectOutput += '<option value="cate0204">향수</option>';
            selectOutput += '<option value="cate0205">네일케어</option>';
            selectOutput += '<option value="cate0206">남성 화장품</option>';
            selectOutput += '<option value="cate0207">가발/기타용품</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate03') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0301">출산/육아용품</option>';
            selectOutput += '<option value="cate0302">유아동안전/실내용품</option>';
            selectOutput += '<option value="cate0303">유아동의류</option>';
            selectOutput += '<option value="cate0304">유아동잡화</option>';
            selectOutput += '<option value="cate0305">유아동가구</option>';
            selectOutput += '<option value="cate0306">기타 유아동용품</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate04') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2"         size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0401">모바일</option>';
            selectOutput += '<option value="cate0402">태블릿 PC</option>';
            selectOutput += '<option value="cate0403">노트북</option>';
            selectOutput += '<option value="cate0404">데스크탑</option>';
            selectOutput += '<option value="cate0405">카메라</option>';
            selectOutput += '<option value="cate0406">캠코더</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate05') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0501">냉장고</option>';
            selectOutput += '<option value="cate0502">TV</option>';
            selectOutput += '<option value="cate0503">세탁기/건조기</option>';
            selectOutput += '<option value="cate0504">주방가전</option>';
            selectOutput += '<option value="cate0505">스마트홈</option>';
            selectOutput += '<option value="cate0506">영상가전</option>';
            selectOutput += '<option value="cate0507">음향가전</option>';
            selectOutput += '<option value="cate0508">계절가전</option>';
            selectOutput += '<option value="cate0509">생활가전</option>';
            selectOutput += '<option value="cate0510">기타 가전제품</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate06') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0601">침실가구</option>';
            selectOutput += '<option value="cate0602">거실가구</option>';
            selectOutput += '<option value="cate0603">주방가구</option>';
            selectOutput += '<option value="cate0604">수납/선반/공간박스</option>';
            selectOutput += '<option value="cate0605">사무용가구</option>';
            selectOutput += '<option value="cate0606">기타가구</option>';
            selectOutput += '<option value="cate0607">침구</option>';
            selectOutput += '<option value="cate0608">커튼/카페트</option>';
            selectOutput += '<option value="cate0609">인테리어소품</option>';
            selectOutput += '<option value="cate0610">이벤트/파티용품</option>';
            selectOutput += '<option value="cate0611">리빙생활</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate07') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0701">반려동물</option>';
            selectOutput += '<option value="cate0702">키덜트</option>';
            selectOutput += '<option value="cate0703">핸드메이드/DIY</option>';
            selectOutput += '<option value="cate0704">악기</option>';
            selectOutput += '<option value="cate0705">예술작품/골동품/수집</option>';
            selectOutput += '<option value="cate0706">미술재료/미술도구</option>';
            selectOutput += '<option value="cate0707">게임</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate08') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0801">유아동도서/음반</option>';
            selectOutput += '<option value="cate0802">학습/교육</option>';
            selectOutput += '<option value="cate0803">소설/만화책</option>';
            selectOutput += '<option value="cate0804">여행/취미/레저</option>';
            selectOutput += '<option value="cate0805">문화/과학/경영</option>';
            selectOutput += '<option value="cate0806">예술/디자인</option>';
            selectOutput += '<option value="cate0807">잡지</option>';
            selectOutput += '<option value="cate0808">기타 도서</option>';
            selectOutput += '<option value="cate0809">음반/DVD/굿즈</option>';
            selectOutput += '<option value="cate0810">문구/사무용품</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate09') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate0901">티켓</option>';
            selectOutput += '<option value="cate0902">상품권/쿠폰</option>';
            selectOutput += '<option value="cate0903">여행숙박/이용권</option>';
            selectOutput += '<option value="cate0904">기타 티켓/쿠폰/이용권</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate10') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate1001">골프</option>';
            selectOutput += '<option value="cate1002">자전거</option>';
            selectOutput += '<option value="cate1003">인라인/스케이트/전동</option>';
            selectOutput += '<option value="cate1004">축구</option>';
            selectOutput += '<option value="cate1005">야구</option>';
            selectOutput += '<option value="cate1006">농구</option>';
            selectOutput += '<option value="cate1007">라켓스포츠</option>';
            selectOutput += '<option value="cate1007">헬스/요가</option>';
            selectOutput += '<option value="cate1007">수상스포츠</option>';
            selectOutput += '<option value="cate1007">검도/격투/권투</option>';
            selectOutput += '<option value="cate1007">기타 스포츠</option>';
            selectOutput += '<option value="cate1007">레저/여행</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate11') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" onchange="changeCategory(this)">';
            selectOutput += '<option value="">- 선택해주세요 -</option>';
            selectOutput += '<option value="cate1101">드릴/전동공구</option>';
            selectOutput += '<option value="cate1102">에어/유압</option>';
            selectOutput += '<option value="cate1103">작업공구</option>';
            selectOutput += '<option value="cate1104">측정공구</option>';
            selectOutput += '<option value="cate1105">초경/절삭/접착윤활</option>';
            selectOutput += '<option value="cate1107">전기/전자</option>';
            selectOutput += '<option value="cate1106">배관설비/포장운송</option>';
            selectOutput += '<option value="cate1107">금형공작</option>';
            selectOutput += '<option value="cate1107">용접기자재</option>';
            selectOutput += '<option value="cate1107">산업/안전/공구함</option>';
            selectOutput += '<option value="cate1107">산업자재</option>';
            selectOutput += '<option value="cate1107">농기계/농업용공구</option>';
            
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        } else if (value == 'cate12') {
            $('.category--select__01').next().remove();
            
            selectOutput += '<select class="category--select__02" name="product_category_2" size="7" dionchange="changeCategory(this)" style="display: none;">';
            selectOutput += '<option value="cate1201" selected>기타잡홥</option>';
            selectOutput += '</select>';
            
            $('.category--select__01').after(selectOutput);
        }
        /* 끝 */
    } 
    // 2차 카테고리를 선택했을시에는 경로를 추가하여 표시해준다
    else if(name == 'product_category_2') {
    	// 2차 카테고리에서 선택한 값을 할당
        var category02Check = $('.category--select__02 option:selected').text();
        
        if (category02Check == '- 선택해주세요 -') {
            routeOutput = $('.category--select__01 option:selected').text();
            $('.category--route__text').children('p').html(routeOutput);
        } else {
            routeOutput = $('.category--select__01 option:selected').text();
            routeOutput += ' &gt; '; 
            routeOutput += $('.category--select__02 option:selected').text();
            $('.category--route__text').children('p').html(routeOutput);
        }
    }
    
    
}

// 직거래, 가능지역 input태그 Open, Close 하기 by.유빈
function changeInput(item) {
    var name = item.name; // 직거래, 즉시구매
    var value = item.value; // 불가능, 가능
    
    // 변경된 값이 직거래일때
    if (name == 'direct') {
        if (value == 0) {
            $('.directArea').attr("readonly",true); 
            $('.directArea').addClass('readonlyfalse');
            $('.directArea').val('');
        }
        if (value == 1) {
            $('.directArea').attr("readonly",false);
            $('.directArea').removeClass('readonlyfalse');
            $('.directArea').focus();
        }
    } 
    // 변경된 값이 즉시구매일때
    else if (name == 'purchase') {
        if (value == 0) {
            $('.purchasePrice').attr("readonly",true); 
            $('.purchasePrice').addClass('readonlyfalse');
            $('.purchasePrice').val('');
        }
        if (value == 1) {
            $('.purchasePrice').attr("readonly",false);
            $('.purchasePrice').removeClass('readonlyfalse');
            $('.purchasePrice').focus();
        }
    }
}

// 경매기간에 따른 마감시간 계산 후 input태그에 삽입 by.유빈
function changeEndDate(value) {
    var now = new Date(); // 현재
    value = Number(value); // Number로 타입변환
    
    now.setDate(now.getDate() + value); // 현재 + 선택한 기간
    
    var year = now.getFullYear(); // 년
    
    // if문
    // 10이하는 한자리수 이므로 "0"을 붙여 2자리수로 만든다
    var month = now.getMonth() + 1; // 월
    
    if (month < 10) {
        month = "0" + month;
    }

    var date = now.getDate(); // 일
    if (date < 10) {
        date = "0" + date;
    }
    
    var hour = now.getHours(); // 시간
    if (hour < 10) {
        hour = "0" + hour;
    }

    var min = now.getMinutes(); // 분
    if (min < 10) {
        min = "0" + min;
    }
    
    // 출력 포맷
    var output = year + "년 " + month + "월 " + date + "일 " + hour + "시 " + min + "분"
    
    // input태그에 삽입
    $('.endDate').val(output);
    
}

function productInsert(){
	var prama = $('.product--form').serialize();
	alert(prama);
	
//	$.ajax({
//		url:'commentInsert.do',
//		type:'POST',
//		data: prama,
//		contentType : 'application/x-www-form-urlencoded; charset=utf-8',
//        success:function(){
//        	$(".secret").attr("checked", false);
//        	$('.content').val("")
//        	commentList();
//    	},
//    	error:function(){
//        	alert("ajax통신 실패!!!");
//    	}
//	})
};

function sendFile(file, editor) {
	var form_data = new FormData();
  	form_data.append('file', file);
  	$.ajax({
    	data: form_data,
    	type: "POST",
    	url: 'imgUpload.yb',
    	/*
    	- cache : false 로 선언 시 ajax 로 통신 중 cache 가 남아서 갱신된 데이터를 받아오지 못할 경우를 대비
    	- contentType : false 로 선언 시 content-type 헤더가 multipart/form-data로 전송되게 함
		- processData : false로 선언 시 formData를 string으로 변환하지 않음
    	*/
    	cache: false,
    	contentType: false,
    	processData: false,
    	enctype: 'multipart/form-data',
    	success: function(img_name) {
    		if (0 == img_name){
    			alert("이미지는 jpg 형식만 가능합니다");
    		} else {
    			$(editor).summernote('insertImage', img_name);
    		}
    	}, error:function(){
        	alert("ajax통신 실패!!!");
    	}
  	});
}

$('document').ready(function(){
    // 경매기간 초기값
    changeEndDate(1);
    
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 300,	// 에디터 높이
		  minHeight: 400,	// 최소 높이
		  maxHeight: 800,	// 최대 높이
		  lang: "ko-KR",	// 한글 설정
		  disableDragAndDrop: true, // 드래그 앤 드롭 비활성화
		  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
          
		  callbacks: {
			  onImageUpload: function(files) {
				  for (var i = files.length - 1; i >= 0; i--) {
					  sendFile(files[i], this);
				  }
			  }
		  }
	});
	
})