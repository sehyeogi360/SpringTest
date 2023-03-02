<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 라이브러리</title>
</head>
<body>
	
	<h1>JSTL Core</h1>
	
	<h1>1. JSTL core변수</h1>
	
	<c:set var="number1" value="36" /><%--변수 만들땐 set value에 지정 --%>
	<c:set var="number2" value="3" />
	
	<h2>첫번째 숫자: ${number1}</h2>
	<h2>두번째 숫자: ${number2}</h2>
	
	<h1>2. JSTL core연산</h1>
	
	<h2>더하기 : ${number1 + number2}</h2> <%--비슷한 패턴 --%>
	<h2>빼기 : ${number1 - number2}</h2>
	<h2>곱하기 : ${number1 * number2}</h2>
	<h2>나누기 : ${number1 /number2}</h2>
	
	
	<h1>3. JSTL core out</h1>
	
	
	<c:out value ="<title>core out</title>" /><%--복붙이 아님 out태그 활용--%>
	
	
	
	<h1>4. JSTL core if</h1>
	
	<%--double average = (number1 + number2) / 2.0 --%>
	<c:set var = "average" value="${(number1 + number2) / 2 }" /><%--변수 만들기 --%>
	
	<c:if test="${average >= 10}">
		<h1> ${average}</h1>
	
	</c:if>
	<c:if test="${average < 10}">
		<h3> ${average}</h3>	
	</c:if>
	
	<h1>5. core if</h1>

	<c:if test="${(number1 * number2) > 100 }">
		<c:out value="<script> alert('너무 큰수입니다')</script>" escapeXml="false"/> <%--이스케이프도 써야 실제 자바스크립트문으로 활용가능 --%>	
	</c:if>

	
	
	
</body>
</html>