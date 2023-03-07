<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>           
		


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
         
</head>
<body>
	
	<h1>회원 정보 리스트</h1>
	<table class="table">
		<thead>
			<tr>
				<th>No</th>
				<th>이름</th>
				<th>전화 번호</th>
				<th>국적</th>
				<th>이메일</th>
				<th>자기소개</th>
			</tr>
		</thead>
		<tbody>
			
			<!-- 모델에 있는 데이터로 채워나가기 -->
			<!-- el태그 -->
			<c:forEach var="member" items="${memberList}" varStatus="status">	
			<tr>
				<td>${status.count }</td>
				<td>${member.name }</td><!-- 어쨌든 표현하는건 el 태그로 넣기 우선적으로 반복문부터 해결-->
				<c:choose>
					<c:when test="${fn:startsWith(member.phoneNumber, '010') }" >
						<td>${member.phoneNumber }</td><!-- 010으로 시작할시 -->
					</c:when>						
					<c:otherwise><!-- 010으로 시작안할시 -->
						<td>유효하지 않은 전화번호</td>
					</c:otherwise>
				
				</c:choose>
				
				<td>${fn:replace (member.nationality, "삼국시대", "삼국 - ")}</td><!-- 국적변경 -->
				<td><b>${fn:split(member.email, "@")[0]}</b>@${fn:split(member.email, "@")[1]}</td><!-- 아이디만 굵게 아이디만 뜯어내서 b태그추가 split 활용-->
	
				
				<td>${fn:substring(member.introduce, 0, 15)}
					<c:if test="${fn:length(member.introduce) > 15 }"><!-- 15가 넘을시 자르기  -->
						...
					</c:if>
				</td><!-- 자기소개 자르기 -->	

			</tr>
			
			</c:forEach>
			
		
		</tbody>
	</table>

</body>
</html>