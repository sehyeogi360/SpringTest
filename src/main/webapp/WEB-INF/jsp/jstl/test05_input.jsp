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
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    

		<link rel="stylesheet" href="/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap" class="">
	
		<header class="bg-info">
			
		
		</header>
		<section class="d-flex">
			<aside class="sidebar bg-primary col-2">
				<img width=150 src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg">
				
				<ul class="mt-3">
					<li class="nav"><a class="text-white" href="#">날씨</a></li>
					<li class="nav"><a class="text-white" href="/jstl/test05_input">날씨입력</a></li>
					<li class="nav"><a class="text-white" href="#">테마날씨</a></li>
					<li class="nav"><a class="text-white" href="#">관측기후</a></li>
				</ul>
			</aside>
			<article class="article  col-10">
				<h1>날씨 입력</h1>
				
				<form method="get" action="/jsp/test05/">
				
				<div class="d-flex">
				
					<label>날짜</label><input type="text" class="form-control col-3" name="date">
					<label>날씨</label>
					<select class="form-control col-3" name="weather">
						<option>맑음</option>
						<option>구름조금</option>
						<option>흐림</option>
						<option>비</option>
					</select> 
					<label>미세먼지</label>
					<select class="form-control col-3" name="microDust">
						<option>좋음</option>
						<option>보통</option>
						<option>나쁨</option>
					</select> 
				
				</div>
				
				
				<div class="d-flex mt-3">
				
					<label>기온</label>
					
					  <input type="text" class="form-control col-3" name="temperatures" placeholder="" aria-label="Recipient's username" aria-describedby="basic-addon2">
					  <div class="input-group-append">
					    <span class="input-group-text" id="basic-addon2">C</span>
					  </div>
					
					
					<label>강수량</label>
						
						<input type="text" class="form-control col-3" name="precipitation" placeholder="" aria-label="Recipient's username" aria-describedby="basic-addon2">
					  	<div class="input-group-append">
					    <span class="input-group-text" id="basic-addon2">mm</span>
					  </div>					
					
					
					<label>풍속</label>		
				
						<input type="text" class="form-control col-3" name="windSpeed" placeholder="" aria-label="Recipient's username" aria-describedby="basic-addon2">
					  	<div class="input-group-append">
					    <span class="input-group-text" id="basic-addon2">km/h</span>
					  </div>
				
				
				</div>
				
				
				<button type="submit" class="btn btn-success">저장</button>
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
</body>
</html>