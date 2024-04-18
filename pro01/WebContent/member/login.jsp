<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />      
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Signin Template · Bootstrap v5.1</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/sign-in/">
    <script src="https://kit.fontawesome.com/c1fb985d35.js" crossorigin="anonymous"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/c1fb985d35.js" crossorigin="anonymous"></script>
    

    <!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
	    *{
		  font-family: "Jua", sans-serif;
		  font-weight: 500;
		  font-style: normal;
		 }
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    	#t1{margin:20px 400px 20px 400px}
    	#t2{margin:0px 400px 20px 400px}
		#t3{margin:0px 450px 30px 450px}
    </style>
    
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
  <br><br><br><br><br>
    
<main class="form-signin">
	<c:if test="${not empty msg}">
		<div style="width:1400px; margin:0 auto;">${msg }</div>
	</c:if>
  <form action="${path0 }/LogInPro.do" method="post">
    <i class="fa-solid fa-users fa-6x"></i>
    <h1 class="h3 mb-3 fw-normal">로그인 화면</h1>
    <div class="form-floating" id="t1">
      <input type="text" class="form-control" name="id" id="id" placeholder="id" required>
      <label for="floatingInput">ID를 입력 하세요.</label>
    </div>
    <div class="form-floating" id="t2">
      <input type="password" class="form-control" name="pw" id="pw" placeholder="Password" required>
      <label for="floatingPassword">Password</label>
    </div>
	<div id="t3">
    <button class="w-100 btn btn-lg btn-primary" type="submit">LOGIN</button>
    <p class="mt-5 mb-3 text-muted">&copy; 혼 자 옵 서 예</p>
    </div>
  </form>
</main>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>	
</body>
</html>
