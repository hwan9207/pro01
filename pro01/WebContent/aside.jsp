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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/c1fb985d35.js" crossorigin="anonymous"></script>
	<style>
    	*{
		  font-family: "Jua", sans-serif;
		  font-weight: 500;
		  font-style: normal;
		 }	
		.list-group {height: 500px; width: 300px; }
		a:hover{aria-current:true; background-color:#0285f7 !important; }
		aside{float:left;}
		
	</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<aside>
	<div class="list-group">
	  <h3>국가 지정 문화재</h3>
	  <a href="${cpath }/intro/c1.jsp" class="list-group-item list-group-item-action">제주항파두리항몽유적지(사적)</a>
	  <a href="${cpath }/intro/c2.jsp" class="list-group-item list-group-item-action">제주 어음리 빌레못동굴(천연기념물)</a>
	  <a href="${cpath }/intro/c3.jsp" class="list-group-item list-group-item-action">제주 납읍리 난대림(천연기념물)</a>
	  <a href="${cpath }/intro/c4.jsp" class="list-group-item list-group-item-action">잣동리말방아(중요민속자료)</a>
	  <h3>도 지정 문화재</h3>
	  <a href="${cpath }/intro/c6.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c7.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c8.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c9.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c10.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c11.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c12.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c13.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c14.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c15.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c16.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	  <a href="${cpath }/intro/c17.jsp" class="list-group-item list-group-item-action">A fourth link item</a>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</aside>
</html>