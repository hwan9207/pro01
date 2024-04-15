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
	<style>
		.row {margin-left: 100px;
    		  margin-right: 100px;}
    	.col-lg-3{margin-bottom:50px;}	
    	h1 {margin-left: 100px;}  
	</style>
</head>
<body>
	<br>
	<h1>국가 지정 문화재</h1>  
	<div class="row">
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">제주항파두리항몽유적지 <br>(사적)</h5>
	    		<p class="card-text">애월읍 고성리 1126-1외</p>
	   			 <a href="test01.jsp" class="btn btn-primary">Go 상세보기</a>
	 		  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주 어음리 빌레못동굴 <br>(천연기념물)</h5>
   			   <p class="card-text">애월읍 어음리 707외 85</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주 납읍리 난대림 <br>(천연기념물)</h5>
   			   <p class="card-text">애월읍 납읍리 1457-1외 3</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">잣동리말방아 <br>(중요민속자료)</h5>
   			   <p class="card-text">애월읍 하가리 920</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">당거리동네말방아 <br>(중요민속자료)</h5>
   			   <p class="card-text">애월읍 신엄리 1009-1</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
	</div>
	<br>
	<h1>도 지정 문화재</h1>
	<div class="row">
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">납읍리 마을제 <br>(무형문화재)</h5>
	    		<p class="card-text">애월읍 납읍리</p>
	   			 <a href="#" class="btn btn-primary">Go 상세보기</a>
	 		  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주 불교의식 <br>(무형문화재)</h5>
   			   <p class="card-text">애월읍 신엄리 1068</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">진사대 소리 <br>(무형문화재)</h5>
   			   <p class="card-text">애월읍 납읍리 1589</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">귀리 겉보리 농사일 소리<br>(무형문화재)</h5>
   			   <p class="card-text">애월읍 하귀2리 1893-1</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">남두연대<br>(기념물)</h5>
   			   <p class="card-text">애월읍 신엄리 2780-1외2</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">애월연대<br>(기념물)</h5>
   			   <p class="card-text">애월읍 애월리 1975외2</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">광령귤나무<br>(기념물)</h5>
   			   <p class="card-text">애월읍 광령리 1165-1</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">곽지패총<br>(기념물)</h5>
   			   <p class="card-text">애월읍 곽지리 1945외 5</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">애월환해장성<br>(기념물)</h5>
   			   <p class="card-text">애월읍 애월리 1957-1외17	</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">유수암리 산새미오름방묘<br>(기념물)</h5>
   			   <p class="card-text">애월읍 고성리 산124</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주의초가 문형행 가옥<br>(기념물)</h5>
   			   <p class="card-text">애월읍 하가리 872</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="card" style="width: 18rem;">
  			  <img src="${tpath }/imgs/sea.jpg" class="card-img-top" alt="...">
  			  <div class="card-body">
    		   <h5 class="card-title">제주의초가 변효정 가옥<br>(기념물)</h5>
   			   <p class="card-text">애월읍 하가리 977</p>
    		   <a href="#" class="btn btn-primary">Go 상세보기</a>
			  </div>
			</div>
		</div>
	</div>	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>