<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  

		<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
        
        <link rel="stylesheet" href="/css/style.css" type="text/css">
        


</head>
<body>

	<div id="wrap" class="">
	
		<header class="bg-info">
			
		
		</header>
		<section class="d-flex">
			<aside class="sidebar bg-primary col-2">
				<img width=150 src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg">
				
				<ul class="nav flex-column mt-3">
					<li class="nav-item"><a class="nav-link text-white" href="/jstl/test05">날씨</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="/jstl/test05_input">날씨입력</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="#">테마날씨</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="#">관측기후</a></li>
				</ul>
			</aside>
			<article class="article">
				<h1>날씨 입력</h1>
													
				<form method="get" action="/jstl/add"><!-- 애드페이지로 이동시키기 이거 구현해보기 -->
				
				<div class="d-flex align-items-center mt-5">
					<!-- 날짜도 데이트피커 활용해보기 -->
					<div class="d-flex align-items-center">
						<label class="input-lable">날짜</label><input type="text" class="form-control" id="date" name="date">
					</div>
					
					<div class="d-flex align-items-center">
						<label class="input-lable">날씨</label>
					
					
					
						<select class="form-control" name="weather"><!-- 여기에 실수로 id 부여 -->
							<option>맑음</option>
							<option>구름조금</option>
							<option>흐림</option>
							<option>비</option>
						</select> 
					</div>
					
					<div class="d-flex align-items-center">
						<label class="ml-3">미세먼지</label>
						<select class="form-control" name="microDust">
							<option>좋음</option>
							<option>보통</option>
							<option>나쁨</option>
						</select> 
					</div>
					
				</div>
				
				
				 <div class="d-flex justify-content-between mt-5">
	                    <div class="d-flex align-items-center">
	                        <label class="col-3">기온</label> 
	                        <div class="input-group">
	                            <input type="text" class="form-control" name="temperatures">
	                            <div class="input-group-append">
	                                <span class="input-group-text">℃</span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="d-flex align-items-center">
	                        <label class="col-4">강수량</label> 
	                        <div class="input-group">
	                            <input type="text" class="form-control" name="precipitation">
	                                <div class="input-group-append">
	                                    <span class="input-group-text">mm</span>
	                            </div>
	                        </div>
	                    </div>
	                    
	                    <div class="d-flex align-items-center">
	                        <label class="col-3">풍속</label> 
	                        <div class="input-group">
	                            <input type="text" class="form-control" name="windSpeed"> 
	                                <div class="input-group-append">
	                                    <span class="input-group-text">km/h</span>
	                            </div>
	                        </div>
	                    </div>
	                </div>
				
				<div class="text-right">
					<button type="submit" class="btn btn-success">저장</button>
				</div>
				
				
			</form>
				
			</article>
		
		</section>
		
		<footer class=" d-flex">
			<div class="col-2">
				<img width = 150 src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg">
			</div>
			<div class="col-10 text-secondary">
				(07062) 서울시 동작구 여의대방로 16길 61<br>
				Copyright@2020 KMA. All Rights RESERVED.
			</div>
		
		</footer>
	</div>
	<script> 
	$(document).ready(function() {
		
		$("#date").datepicker({
			
             dateFormat: "yy년 mm월 dd일"
		});
	
	});
	</script>
	
</body>
</html>