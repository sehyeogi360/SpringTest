<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>

		<link rel="stylesheet" href="/css/booking/style.css" type="text/css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--datepicker-->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>

	<div id="wrap" class="container">
		
		<header class ="d-flex justify-content-center align-items-center"><!--텍스트 센터를 할수도 있지만 이걸로 하자.-->
             <div class="display-4">통나무 펜션</div>
                
                
             
        </header>
        <nav class="main-menu mt-3 "><!--내비 밑에-->
                <ul class="nav nav-fill d-flex justify-content:space-around align-items-center"><!--왼쪽에 몰림 방지 nav-fill-->
                    <li class="nav-item ml-5"><a href="#" class= "nav-link text-white font-weight-bold">펜션소개</a></li>
                    <li class="nav-item ml-5"><a href="#" class= "nav-link text-white font-weight-bold">객실보기</a></li>
                   <li class="nav-item ml-5"><a href="/ajax/booking/input" class= "nav-link text-white font-weight-bold">예약하기</a></li>
                    <li class="nav-item ml-5"><a href="/ajax/booking/list" class= "nav-link text-white font-weight-bold">예약목록</a></li>
                </ul>
        </nav>
        
		<h1 class="text-center">예약하기</h1>
		
		<label>이름</label><br>
		<input type="text" name="name" id="nameInput" class="form-control"> 
		<label>예약날짜</label><br>
		<input type="text" name="date" id="date" class="form-control"> 
		<label>숙박일수</label><br>
		<input type="text" name="day" id="dayInput" class="form-control"> 
		<label>숙박인원</label><br>
		<input type="text" name="headcount" id="headcountInput" class="form-control"> 
		<label>전화번호</label><br>
		<input type="text" name="phoneNumber" id="phoneNumberInput" class="form-control"> 
		<button type="submit" id ="addBtn" class="btn btn-warning text-dark col-10">예약하기</button>
	</div>

	<footer>
               <div class="text-secodary small mt-3 ml-3">
                    제주특별자치도 제주시 애될읍 <br>
                    사업자 등록번호 111-22-25522/농어촌민박사업자지정/ 대표:김통목<br>
                    copyright 2025 tongnamu Allright reserved.<br>
               </div> 
            </footer>
	<script>
	$(document).ready (function(){
		
		$("#date").datepicker({
			
            dateFormat: "yy년 mm월 dd일"
		});
		
		
		$("#addBtn").on("click", function(){
			
			
			let name = $("#nameInput").val();
			let date = $("#date").val();
			let day = $("#dayInput").val();
			let headcount = $("#headcountInput").val();
			let phoneNumber = $("#phoneNumberInput").val();
			
			if(name == ""){
				alert("이름을 입력하세요");
				return ;
			}
			if(date == ""){
				alert("예약날짜를 입력하세요");
				return ;
			}
			if(day == ""){
				alert("숙박일수를 입력하세요");
				return ;
			}
			if(headcount == ""){
				alert("숙박인원을 입력하세요");
				return ;
			}
			if(phoneNumber == ""){
				alert("전화번호를 입력하세요");
				return ;
			}
		
			
			
			$.ajax({//추가
				type: "post"
				, url:"/ajax/booking/add"
				, data:{"name": name, "date":date, "day":day, "headcount":headcount, "phoneNumber":phoneNumber}
				, success:function(data) {
					
					if(data.resut =="success") {
						location.href="/ajax/booking/list";
					} else{
						alert("추가 실패")
					}
					
				}
				, error:function(){
					alert("추가 에러");
				}
				
				
			});
			
		});
		
		
		
		
	});
	
	
		
	
	</script>
</body>
</html>