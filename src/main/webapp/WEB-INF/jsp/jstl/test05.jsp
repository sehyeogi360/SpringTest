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

	<div id="wrap" class="bg-dark">
	
		<header class="bg-info">
			
		
		</header>
		<!-- 화면구성까지만 과제로 해오기 -->
		<section class="d-flex">
			<aside class="sidebar bg-danger col-2">
				<img width=150 src="https://blog.kakaocdn.net/dn/TxmeD/btqCKArBvPm/2tzfJfINwg0WWmCzC4jKW0/img.jpg">
				
				<ul class="mt-3">
					<li class="nav text-white"><a href="#">날씨</a></li>
					<li class="nav text-white"><a href="#">날씨입력</a></li>
					<li class="nav text-white"><a href="#">테마날씨</a></li>
					<li class="nav text-white"><a href="#">관측기후</a></li>
				</ul>
			</aside>
			<article class="article bg-warning col-10">
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
						<tr>
							<td>2021년 3월 5일</td>
							<td><img src="http://marondal.com/material/images/dulumary/web/jstl/sunny.jpg"></td>
							<td>15도</td>
							<td>0mm</td>
							<td>나쁨</td>
							<td>1.2km/h</td>
						</tr>
						<tr>
							<td>2021년 3월 5일</td>
							<td></td>
							<td>15도</td>
							<td>0mm</td>
							<td>나쁨</td>
							<td>1.2km/h</td>
						</tr>
						<tr>
							<td>2021년 3월 5일</td>
							<td></td>
							<td>15도</td>
							<td>0mm</td>
							<td>나쁨</td>
							<td>1.2km/h</td>
						</tr>
						<tr>
							<td>2021년 3월 5일</td>
							<td></td>
							<td>15도</td>
							<td>0mm</td>
							<td>나쁨</td>
							<td>1.2km/h</td>
						</tr>
						<tr>
							<td>2021년 3월 5일</td>
							<td></td>
							<td>15도</td>
							<td>0mm</td>
							<td>나쁨</td>
							<td>1.2km/h</td>
						</tr>
						<tr>
							<td>2021년 3월 5일</td>
							<td></td>
							<td>15도</td>
							<td>0mm</td>
							<td>나쁨</td>
							<td>1.2km/h</td>
						</tr>
					</tbody>
				</table>
			
			</article>
		</section>
	
		<footer class="bg-success d-flex">
			<div class="col-2">
				<img width = 200 src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.kma.go.kr%2Fkma%2Forg%2Fintro.jsp&psig=AOvVaw0PwWGmYeLvzALImUpuKAEV&ust=1678181456231000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCLD308mAx_0CFQAAAAAdAAAAABAH">
			</div>
			<div class="col-10">
				(07062) 서울시 동작구 여의대방로 16길 61<br>
				Copyright@2020 KMA. All Rights RESERVED.
			</div>
		
		</footer>
	
	
	</div>

	

</body>
</html>