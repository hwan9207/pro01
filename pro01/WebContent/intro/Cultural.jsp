<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="tpath" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문화재</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
		.row1 {margin-left: 100px !important;
    		  margin-right: 100px;}
    	.col-lg-3{margin-bottom:50px;}	
    	h1 {margin-left: 100px;}  
	</style>
</head>
<body>
	<div id="header">
		<%@ include file="/header.jsp" %>
	</div>
	<div>
		<br><br><br><br><br><br><br><br>
		<h1 style= "margin-left: 120px;">국가 지정 문화재</h1>
	</div>  
	<div class="row row1">
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
			  <img src="${tpath }/imgs/c1.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">제주항파두리항몽유적지 <br>(사적)</h5>
	    		<p class="card-text">애월읍 고성리 1126-1외</p>
	   			 <a href="${tpath }/intro/c1.jsp" class="btn btn-primary">Go 상세보기</a>
	 		  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c2.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주 어음리 빌레못동굴 <br>(천연기념물)</h5>
   			   <p class="card-text">애월읍 어음리 707외 85</p>
    		   <a href="${tpath }/intro/c2.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c3.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주 납읍리 난대림 <br>(천연기념물)</h5>
   			   <p class="card-text">애월읍 납읍리 1457-1외 3</p>
    		   <a href="${tpath }/intro/c3.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c4.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">잣동리말방아 <br>(중요민속자료)</h5>
   			   <p class="card-text">애월읍 하가리 920</p>
    		   <a href="${tpath }/intro/c4.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
	</div>
	<br>
	<h1>도 지정 문화재</h1>
	<div class="row row1">
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
			  <img src="${tpath }/imgs/c6.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">납읍리 마을제 <br>(무형문화재)</h5>
	    		<p class="card-text">애월읍 납읍리</p>
	   			 <a href="${tpath }/intro/c6.jsp" class="btn btn-primary">Go 상세보기</a>
	 		  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c7.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주 불교의식 <br>(무형문화재)</h5>
   			   <p class="card-text">애월읍 신엄리 1068</p>
    		   <a href="${tpath }/intro/c7.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c8.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">진사대 소리 <br>(무형문화재)</h5>
   			   <p class="card-text">애월읍 납읍리 1589</p>
    		   <a href="${tpath }/intro/c8.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c9.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">귀리 겉보리 농사일 소리<br>(무형문화재)</h5>
   			   <p class="card-text">애월읍 하귀2리 1893-1</p>
    		   <a href="${tpath }/intro/c9.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c10.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">남두연대<br>(기념물)</h5>
   			   <p class="card-text">애월읍 신엄리 2780-1외2</p>
    		   <a href="${tpath }/intro/c10.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c11.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">애월연대<br>(기념물)</h5>
   			   <p class="card-text">애월읍 애월리 1975외2</p>
    		   <a href="${tpath }/intro/c11.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c12.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">광령귤나무<br>(기념물)</h5>
   			   <p class="card-text">애월읍 광령리 1165-1</p>
    		   <a href="${tpath }/intro/c12.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c13.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">곽지패총<br>(기념물)</h5>
   			   <p class="card-text">애월읍 곽지리 1945외 5</p>
    		   <a href="${tpath }/intro/c13.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c14.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">애월환해장성<br>(기념물)</h5>
   			   <p class="card-text">애월읍 애월리 1957-1외17	</p>
    		   <a href="${tpath }/intro/c14.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c15.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">유수암리 산새미오름방묘<br>(기념물)</h5>
   			   <p class="card-text">애월읍 고성리 산124</p>
    		   <a href="${tpath }/intro/c15.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c16.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주의초가 문형행 가옥<br>(기념물)</h5>
   			   <p class="card-text">애월읍 하가리 872</p>
    		   <a href="${tpath }/intro/c16.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/c17.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주의초가 변효정 가옥<br>(기념물)</h5>
   			   <p class="card-text">애월읍 하가리 977</p>
    		   <a href="${tpath }/intro/c17.jsp" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
	</div>	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>