<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#bus {margin-left:300px; margin-top:50px;}
		#bus1 {margin-left:300px; margin-top:500px;}
	</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
	<br><br><br><br><br>
	<a id="bus1"href="https://bus.jeju.go.kr/search/station#" target="_blank"><font color="blue">버스 정류장,노선 검색 바로가기(링크)</font></a>
	<div id="bus">
     	<img src="${hpath }/imgs/bus2.png" alt="2" >
	</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>	
</body>
</html>