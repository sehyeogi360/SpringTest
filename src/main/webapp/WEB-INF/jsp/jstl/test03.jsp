<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
         

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSTL Formatter 숫자, 비율</title>
</head>
<body>
	<div class="container">
		<h1>1. 후보자 득표율</h1>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>기호</th>
					<th>득표 수</th>
					<th>득표 율</th>
				
				</tr>
				
			</thead>
			<tbody>
				<c:forEach var="candidate" items="${candidateList}"  varStatus="status">
				<tr>
					<td>${status.count}</td><!-- jstl 에선 status 사용하기 반복상태를 얻어올수있는  -->
					<td><fmt:formatNumber value="${candidate }"/></td>
					<td><fmt:formatNumber value=" ${candidate / 1000000}" type="percent" /></td><!-- 이밸류안에 들어가는 값에따라 다르게 -->
														<!-- 득표율이란 전체분의 실제득표수 -->		
				</tr>
				</c:forEach>
			
			</tbody>
		</table>
		
		<h1>2.카드 명세서</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>사용처</th>
					<th>가격</th>
					<th>사용날짜</th>
					<th>할부</th>
				
				</tr>
			</thead>
			<tbody>								<!-- 모델에 저장한 값 그때 명시한 키 이름 -->
				<c:forEach var="cardBills" items="${cardBillList }"  varStatus="status">
				<tr>
					<td>${cardBills.store }</td>			
					<td><fmt:formatNumber value="${cardBills.pay }" type="currency" /></td>	
					<fmt:parseDate value="${cardBills.date }" pattern="yyyy-MM-dd" var="date" />
					<td><fmt:formatDate value="${date }" pattern="yyyy년 MM월 dd일" /></td>
					<td>${cardBills.installment }</td>
				</tr>
				</c:forEach>
			
			</tbody>
		</table>
	
	</div>


</body>
</html>