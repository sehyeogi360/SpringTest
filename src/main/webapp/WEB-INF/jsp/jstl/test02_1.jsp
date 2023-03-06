<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
             
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 응용하기</title>





</head>
<body>

	<div class="container">
		<h1>멤버십</h1>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>이름</th>
					<th>전화번호</th>
					<th>등급</th>
					<th>포인트</th>
				</tr>
			</thead>			
			<tbody>							<!-- 실제 리스트데이터 -->			
			<c:forEach var="member" items="${memberList}" varStatus="status">
				<!-- 변수사용 없이, if else문 형식으로 구성해보기 -->
				<tr>
				
					<td>${member.name }</td>
					<td>${member.phoneNumber }</td>
				<c:choose>
					
					<c:when test="${member.grade eq 'GOLD'}">
						<!--<c:set var="color" value="text-warning"></c:set> -->
						 <td class="text-warning"> ${member.grade} </td>
					</c:when>
					<c:when test="${member.grade eq 'VIP'}">
						<!-- <c:set var="color" value="text-danger"></c:set> -->
						<td class="text-danger"> ${member.grade} </td>
					</c:when>
					<c:otherwise>
						<!-- <c:set var="color" value="text-dark"></c:set> -->
						 <td class="text-dark"> ${member.grade} </td>
					</c:otherwise>
						
				</c:choose>
				
				<c:choose>
					<c:when test="${member.point >= 5000}">
						<!--<c:set var="color2" value="text-primary"></c:set>-->
						 <td class="text-primary"> ${member.point}P </td>
					</c:when>
					<c:otherwise>
						<!--<c:set var="color2" value="text-dark"></c:set>-->	
						 <td class="text-dark"> ${member.point}P </td>				
					</c:otherwise>
				</c:choose>
				
				</tr>
				
				<!--  
					
				<tr>
					<td>${member.name }</td>
					<td>${member.phoneNumber }</td>
					<td class="${color}">${member.grade }</td>
					<td class="${color2}">${member.point }P</td>
				</tr>
			-->
				
			</c:forEach>
			
			
			
			</tbody>
		</table>
	
	</div>


</body>
</html>