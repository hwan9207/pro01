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
				<h1>마을 소개</h1>
				<h3>연 혁</h3>
				<ul>
					<li>1300년 동서도현 설치시 애월촌, 귀일촌, 고내촌, 곽지촌 설치</li>
					<li>1609년 제주목 서쪽을 우면이라 칭함</li>
					<li>1874년 금성천을 경계로 동쪽을 신우면이라 칭함</li>
					<li>1910년 지방관제 개혁에 의거 풍헌을 면장이라 개칭</li>
					<li>1914년 면소재지를 신엄리에서 애월리로 변경</li>
					<li>1935년 신우면을 애월면으로 개칭(19개리로 편제)</li>
					<li>1951년 6월 하귀출장소 설치</li>
					<li>1952년 신엄리를 신엄, 중엄, 용흥리로 분리(21개리)</li>
					<li>1953년 광령리를 광령1, 광령2, 광령3리로 분리(23개리)</li>
					<li>1980년 12월 읍으로 승격 (대통령령 제10050호)</li>
					<li>1992년 9월 5일 동귀리와 귀일리를 다시 합쳐 하귀리로</li>
					<li>1993년 4월 어도리를 봉성리로</li>
					<li>1995년 1월 하귀리를 하귀1리와 하귀2리로</li>
					<li>1996년 1월 금덕리를 유수암리로</li>
					<li>1998년 1월 고성리를 1.2리로 분리, 26개리로 편제</li>
					<li>1998년 9월 행정구조조정으로 출장소 폐쇄, 이동민원실 운영</li>
					<li>2006년 7월 제주특별자치도 출범에 따른 행정구조개편으로 제주시와 통합</li>
				</ul>
				<h1>지역 특성</h1>
				<ul>
					<li>제주시와 통합함으로써 전원도시로 급부상 · 서부지역의 중심권</li>
					<li>선비정신, 경로, 애향의 고장 · 전통문화의 고장</li>
					<li>드넓은 목장, 풍부한 어장, 중산간지대의 수려한 자원· 천혜의 관광지역</li>
				</ul>
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