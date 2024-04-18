<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="cpath" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		
		body {
			  width:100%;	
			  margin:0px;
		}
		.box {
			  padding:20px;
			  display: flex;
			  gap:20px;	
		}
		.box-sidebar,.box-contents{
									padding:20px;
		}
		.box-contents {flex-grow:1;}
		.box-sidebar {width:350px;}
		.list-group {height: 500px; width: 300px; }
		a:hover{aria-current:true; background-color:#0285f7 !important; }
	</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">	
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
	<br><br><br><br><br>
	<div class="container-fulid">
		<section class="box">
			<aside class="box-sidebar">
				<div class="list-group">
				  <h3>우리읍 소개</h3>
				  <a href="${cpath }/office/office02.jsp" class="list-group-item list-group-item-action">마을소개</a>
				  <a href="${cpath }/office/office01.jsp" class="list-group-item list-group-item-action">읍 사무소</a>
				  <a href="${cpath }/office/office03.jsp" class="list-group-item list-group-item-action">리 사무소</a>
				</div>  
			</aside>
			<div class="box-contener">
				<div id="office">
					<h2>애월읍 사무소</h2>
					<h5>주소：(63044) 제주특별자치도 제주시 애월읍 일주서로 6322<br>
					전화번호：	064-728-1522<br>FAX： 064-728-8819</h5>
				</div>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.5142686506274!2d126.3269434113772!3d33.
				46195927327398!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf435be4d6d1d%3A0xae15f4b8e942d888!
				2z7JWg7JuU7J2N7IKs66y07IaM!5e0!3m2!1sko!2skr!4v1713329219251!5m2!1sko!2skr" 
				width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
				애월읍 사무소 위치</iframe>
			</div>
		</section>
	</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>