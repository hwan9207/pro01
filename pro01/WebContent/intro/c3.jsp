<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="apath" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		h1 {text-align: center;}
		.row > img {width:500px; height:300px;}
		.row >#im {margin-top:100px; }
	</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<br><br><br>
<div id="aside">
	<%@ include file="/aside.jsp" %>
</div>	
<br><br><br><br>
		<h1>제주 납읍리 난대림</h1><br><br>
	<div class="row" >
		<h4>납읍 난대림은 북제주군 애월읍 납읍 마을에 인접한 금산공원에 위치하고 있으며<br>
		온난한 기후대에서 자생하는 식물들이 숲을 이루고 있고<br>
		구성하고 있는 식물들로는 후박나무, 생달나무, 식나무, 종가시나무,<br>
		아왜나무, 동백나무, 모밀잣밤나무, 자금우, 마삭줄, 송이 등이 있습니다.<br>
		숲 안에는 포제단이 있는데 해마다 이곳에서 통제를 지내고 있습니다.</h4>
		<img src="${apath }/imgs/c07.jpg" class="img-fluid" alt="1" margin-left= "1000px !important";>
		<h4>납읍 난대림은 북제주군의 서부에서 평지에 남아있는 유일한 상록수림으로<br> 
		학술적 가치가 높아 천연기념물로 지정하여 보호하고 있습니다.</h4>
		<img id="im" src="${apath }/imgs/c08.jpg" class="img-fluid" alt="2">
		<img src="${apath }/imgs/c09.jpg" class="img-fluid" alt="3">
		<br><br><br><br><br><br><br><br>
	</div>
	<br><br><br><br>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>	
</body>
</html>