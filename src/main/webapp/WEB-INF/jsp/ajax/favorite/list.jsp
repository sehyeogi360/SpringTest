<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
		<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  
</head>
<body>
	<div class="container">
	<h1>즐겨 	찾기 목록</h1>
	<table class="table">
		<thead>
			<tr>
				<th>No.</th>
				<th>이름</th>
				<th>주소</th>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach var="favorite" items="${favoriteList }" varStatus="status"><!-- 반복문 활용 코어라이브러리도 추가 -->
			<tr>
				<td>${status.count }</td>
				<td>${favorite.name }</td><!-- 네임이라는 멤버변수 -->
				<td>${favorite.url }</td><!-- url라는 멤버변수 -->
				<td><button type="submit" id ="deleteBtn" onclick="deleteRow(this);" class="btn btn-danger">삭제</button></td>
			</tr>
		</c:forEach>
	
		</tbody>
	
	</table>
	</div>
	<script>
	
	//삭제 버튼
	$(document).ready(function(){
		
		$("#deleteBtn").on("click", function(){
			 var ths = $(ths);
			    
			  ths.parents("tr").remove();
		});
		
		$.ajax({
			type: "GET"
			, url: "/ajax/favorite/delete"
			, data: {"id": id}
			, success: function(data){
			
				if(data.result == "success"){
					location.href="/ajax/favorite/list";
				} else {
					alert("삭제 실패");
				}
			} 
			, error:function(){
				alert("추가 에러");
			}
			
		});
		

		
		
	});
	</script>
</body>
</html>