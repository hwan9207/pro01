<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link href="resources/styles.css?after" rel="stylesheet">
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
		ul { list-style: none;}
		a { text-decoration: none; color: black;}
        #gnb { width:1200px; margin: 10px auto; position:absolute; background-color:white;}
        #gnb > ul { clear:both; width: 1200px; }
        #gnb > ul > li {float:left; width:200px; text-align: center;}
        #gnb > ul > li > a {font-size: 30px; font-weight: bold; text-align: center; line-height: 42px;
        border-bottom: 3px solid #333; display: block;}
	  	#gnb >ul > li > ul { display:none; font-weight: bold; }
        #gnb >ul > li:hover > ul { display:block; }
	</style>
</head>

<div class="container"style="height=400px;">
  <header class="blog-header py-3" style="height=400px;">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
        <a class="link-secondary" href="${hpath }/index.jsp"><font size=5>HOME</font></a>
      </div>
      <div class="col-4 text-center">
      	<img src="${hpath }/imgs/logo01.jpg" class="rounded mx-auto d-block" alt="..." width="200" height="200">
      </div>
     
      <div class="col-4 d-flex justify-content-end align-items-center">
        <form action="" id="search-bax" method="get">
        	<input type="text" id="search-txt" name="" placeholder="검색어를 입력하세요.">
        	<button id="search-btn" type="submit">
        		<i class="fa-solid fa-magnifying-glass"></i>
        	</button>
        </form>
        <c:if test="${empty sid }">
        &nbsp;&nbsp;&nbsp;
        <a class="btn btn-sm btn-outline-secondary" href="${hpath }/member/login.jsp">로그인</a> 
        &nbsp;&nbsp;&nbsp;
        <a class="btn btn-sm btn-outline-secondary" href="${hpath }/member/term.jsp">회원가입</a>
        </c:if>
        <c:if test="${not empty sid }">
        &nbsp;&nbsp;&nbsp;
        <a class="btn btn-sm btn-outline-secondary" href="${hpath }/LogOut.do">로그아웃</a> 
        &nbsp;&nbsp;&nbsp;
        <a class="btn btn-sm btn-outline-secondary" href="${hpath }/EditMember.do?id=${sid }">회원정보</a>
        </c:if>
        <c:if test="${sid.equals('admin') }">
        &nbsp;&nbsp;&nbsp;
        <a class="btn btn-sm btn-outline-secondary" href="${hpath }/member/login.jsp">로그아웃</a> 
        &nbsp;&nbsp;&nbsp;
        <a class="btn btn-sm btn-outline-secondary" href="${hpath }/member/term.jsp">관리자</a>
        </c:if>
      </div>
    </div>
    <nav id="gnb">
        
        <ul>
            <li>
                <a href="townintro.html">우리읍 소개</a>
                <ul>
                    <li><a href="${hpath }/office/office02.jsp">마을 소개</a></li>
                    <li><a href="${hpath }/office/office01.jsp">읍 사무소</a></li>
                    <li><a href="${hpath }/office/office03.jsp">리 사무소</a></li>
                </ul>
            </li>
            <li>
                <a href="">여행 가이드</a>
                <ul>
                    <li><a href="${hpath }/intro/Cultural.jsp">문 화 재</a></li>
                    <li><a href="https://www.aewolnh.co.kr:456/sub3/sub01.php?smenu=sub3&stitle=subtitle3_1" target="_blank">특 산 물</a></li>
                    <li><a href="">관 광 지</a></li>
                    <li><a href="http://xn--2e0bk8uujj2b69hu4nura767c.kr/JJ001/experience-reservation.do" target="_blank">체험 안내</a></li>
                </ul>
            </li>
            <li>
                <a href="">교통,날씨</a>
                <ul>
                    <li><a href="${hpath }/bus/bus.jsp">버스 이용안내</a></li>
                    <li><a href="https://www.kma.go.kr/jeju/html/main/index.jsp" target="_blank">날씨 안내</a></li>
                </ul>
            </li>
            <li>
                <a href="">의료기관</a>
                <ul>
                    <li><a href="https://www.jejusi.go.kr/chc/main.do" target="_blank">제주시 보건소</a></li>
                    <li><a href="http://medinavi.co.kr/search_1.asp?keyword=%EC%A0%9C%EC%A3%BC%EC%8B%9C+%EC%95%A0%EC%9B%94%EC%9D%8D&scheck=&page=1" target="_blank">애월읍 병원</a></li>
                    <li><a href="https://www.pharm114.or.kr/main.asp" target="_blank">심야 약국 검색</a></li>
                </ul>
            </li>
            <li>
                <a href="">공지사항</a>
                <ul>
                    <li><a href="${hpath }/NotiList.do">공지사항</a></li>
                    <li><a href="#">자유게시판</a></li>
                </ul>
            </li>
        </ul>
    </nav>
  </header>
</div>
  

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>