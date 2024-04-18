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
		<h1>제주 어음리 빌레못동굴</h1><br><br>
	<div class="row" >
		<h4>제주 어음리 빌레못동굴은 어음리 산중턱에 자리잡고 있으며<br> 
		동굴 주위에 두 개의 연못이 있어서 평평한 암반을 뜻하는<br>
		빌레라는 제주도 말과 연못의 못이 합쳐져 ‘빌레못’이라는 이름이 붙여졌습니다<br>
		동굴의 총길이는 11,749m로 세계에서 가장 길고 미로가 매우 많으며 <br>
		화산활동에 의해 7∼8만년 전에 만들어진 것으로 추정됩니다.</h4>
		<img src="${apath }/imgs/c04.jpg" class="img-fluid" alt="1" margin-left= "1000px !important";>
		<h4>빌레못동굴은 세계적인 용암동굴로서 동굴이 만들어질 때의 흔적을 다양하게 보여주고 있고<br>
		대륙에서 서식하는 황금곰의 화석이 발견되는 등 학술적 가치가 매우 큽니다.</h4>
		<img id="im" src="${apath }/imgs/c05.jpg" class="img-fluid" alt="2">
		<img src="${apath }/imgs/c06.jpg" class="img-fluid" alt="3">
		<br><br><br><br><br><br><br><br>
	</div>
	<br><br><br><br>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>	
</body>
</html>