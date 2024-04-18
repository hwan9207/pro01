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
		<h1>잣동리말방아</h1><br><br>
	<div class="row" >
		<h4>잣동네는 하가리 마을 중심에 위치한 이사무소 뒤쪽 즉 동쪽 방향의 마을을 말합니다.<br>
		이곳에 조그만 제주 전통 초가지붕에 흙돌담으로 벽을 하여 정방형을 이루고<br>
		그 속에 연자마가 있는데 동네 이름을 따서 '잣동네 말방아'라고 합니다.</h4>
		<img src="${apath }/imgs/c010.jpg" class="img-fluid" alt="1" margin-left= "1000px !important";>
		<h4>현재 남아 있는 2기의 말방아 중 하나로<br>
		제주도의 생활상을 엿볼 수 있는 민속자료로 소중한 가치가 있습니다.</h4>
		<img id="im" src="${apath }/imgs/c011.jpg" class="img-fluid" alt="2">
		<img src="${apath }/imgs/c012.jpg" class="img-fluid" alt="3">
		<br><br><br><br><br><br><br><br>
	</div>
	<br><br><br><br>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>	
</body>
</html>