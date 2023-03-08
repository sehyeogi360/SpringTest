<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>     
    <!-- fmt추가 -->
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
	
		<header class="bg-info"><!-- header 없애도 됨. -->
			
		
		</header>
		<!-- 화면구성까지만 과제로 해오기 -->
		<section class="d-flex">
			<aside class="sidebar col-2">
				<img width=150 src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg">
				
				<ul class="nav flex-column mt-3">
					<li class="nav-item"><a class="nav-link text-white" href="/jstl/test05">날씨</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="/jstl/test05_input">날씨입력</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="#">테마날씨</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="#">관측기후</a></li>
				</ul>
			</aside>
			<article class="article  col-10">
				<h1>과거날씨</h1>
				<table class="table">
				
					<thead>
					<tr>
						<th>날짜</th>
						<th>날씨</th>
						<th>기온</th>
						<th>강수량</th>
						<th>미세먼지</th>
						<th>풍속</th>
					</tr>
					</thead>
					<tbody>
					
					<c:forEach var="weather" items ="${weatherhistoryList }"><!-- 실제 모델의 리스트 데이터 컨트롤러서 셋팅한 키값 -->
						<tr><!-- 날씨 모델만 참고해서 모델에있는값을 적기 쿼리 말고 -->
							<td><fmt:formatDate value= "${weather.date }" pattern="yyyy년 M월 d일"/></td><!-- 날짜 date객체이므로 string으로 알고보니 여기만 하면되는거였음 -->
							
						<c:choose>	
							<c:when test="${weather.weather eq '비' }"><!-- eq로 해보기 -->
								<td><img src ="http://marondal.com/material/images/dulumary/web/jstl/rainy.jpg"></td>
							</c:when>
							<c:when test="${weather.weather eq '구름조금' }">
								<td><img src ="http://marondal.com/material/images/dulumary/web/jstl/partlyCloudy.jpg"></td>
							</c:when>
							<c:when test="${weather.weather eq '맑음' }">
								<td><img src ="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg"></td>
							</c:when>
							<c:when test="${weather.weather eq '흐림' }">
								<td><img src ="http://marondal.com/material/images/dulumary/web/jstl/cloudy.jpg"></td>
							</c:when>
							<c:otherwise><!-- 그외에 -->
								<td>${weather.weather }</td>
							</c:otherwise>
						</c:choose>
							<td>${weather.temperatures }℃</td>
							<td>${weather.precipitation }mm</td>
							<td>${weather.microDust }</td>
							<td>${weather.windSpeed }km/h</td>
						</tr>
					</c:forEach>	
					</tbody>
				</table>
			
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