<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록 보기</title>
		<link rel="stylesheet" href="/css/booking/style.css" type="text/css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
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
            
		<h1 class="text-center">예약 목록 보기</h1>
		<table class="table">
			<thead>
				<tr>
					<th>이름</th>
					<th>예약날짜</th>
					<th>숙박일수</th>
					<th>숙박인원</th>
					<th>전화번호</th>
					<th>예약상태</th>
					<th></th>
				</tr>
			</thead>
			
			<tbody>
			
			<c:forEach var = "booking" items="${bookList }" varStatus = "status">
				<tr>
					<td>${booking.name }</td>
					<td><fmt:formDate value ="${booking.date }" pattern="yyyy년 MM월 dd일"/></td>
					<td>${booking.day }</td>
					<td>${booking.headcount }</td>
					<td>${booking.phoneNumber }</td>
					
					<c:choose>
						<c:when test="${booking.state eq '대기중' }">
							<td class="text-info">${booking.state }</td>
						</c:when>
						<c:when test="${booking.state eq '확정' }">
							<td class="text-success">${booking.state }</td>
						</c:when>
						<c:when test="${booking.state eq '취소' }" >
							<td class="text-danger">${booking.state }</td>
						</c:when>
						<c:otherwise><!-- 그외에 -->
							<td>${booking.state }</td>
						</c:otherwise>
					</c:choose>
					<td><button id = "deleteBtn" type="button"  class="btn btn-danger delete-btn" data-booking-id="${booking.id }">삭제</button></td>
				</tr>
			
			</c:forEach>
				
			
			</tbody>
			
		</table>
	
	
	</div>
			<footer>
              <div class="text-secodary small mt-3 ml-3">
                    제주특별자치도 제주시 애될읍 <br>
                    사업자 등록번호 111-22-25522/농어촌민박사업자지정/ 대표:김통목<br>
                    copyright 2025 tongnamu Allright reserved.<br>
               </div>  
            </footer>
	<script>
	$(document).ready(function() {
		$(."delete-btn").on("click", function(){
			let id = $(this).data("booking-id");
			
			
			$.ajax({
				type: "GET"
				, url: "/ajax/booking/delete"
				, data: {"id" : id}
				, success: function(data){
					
					if(data.resut == "success"){
						location.reload();
					} else{
						alert("삭제실패")
					}
				}
				, error:function(){
					alert("삭제 에러");
				}	
				
				
			});
			
			
			
		});
		
		
		
	});
	
	</script>

</body>
</html>