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
		<h1>제주항파두리항몽유적지</h1><br><br>
	<div class="row" >
		<h4>제주 항파두리 항몽 유적(濟州 缸坡頭里 抗蒙 遺蹟)은 제주특별자치도 제주시 애월읍에 있는,<br>
		원종 14년(1273) 전원 순의한 삼별초의 마지막 보루였던 곳이었습니다.<br> 
		1997년 4월 18일 대한민국의 사적 제396호로 지정되었습니다.</h4>
		<img src="${apath }/imgs/c01.jpg" class="img-fluid" alt="1" margin-left= "1000px !important";>
		<h4>삼별초의 활동은 국가사로서만이 아니라<br>
		제주도의 역사를 크게 변화시키는 전환점이기도 하였습니다.<br>
		이후 육지에의 부속성이 현저하게 촉진되는 분수령이 되었기 때문입니다.<br>
		제주항파두리항몽유적지는 1231년부터 40여 년을<br> 
		지속한 항몽 전쟁 최후의 현장이라는 점에 큰 의미가 있습니다.</h4>
		<img id="im" src="${apath }/imgs/c02.jpg" class="img-fluid" alt="2">
		<img src="${apath }/imgs/c03.jpg" class="img-fluid" alt="3">
		<br><br><br><br><br><br><br><br>
	</div>
	<br><br><br><br>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>	
</body>
</html>