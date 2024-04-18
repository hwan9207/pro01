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
		.box-contener {flex-grow:1;}
		.box-sidebar {width:350px; }
		.list-group {height: 500px; width: 300px; }
		a:hover{aria-current:true; background-color:#0285f7 !important; }
		
		table, th, td {border: 1px solid rgba(1, 5, 12, 0.753); border-collapse: collapse;
                       
        }
        table {width: 80%;
               box-shadow:  0 2px 5px rgba(0,0,0,.25);
               border-style: hidden;
               text-align:center;
               border-radius: 8px;
               position: relative;
        }
        th {
                
                color: #fff;
                background: #0570fd;
        }
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
				<table>
			        <thead>
			            <tr>
			                <th>마을명</th>
			                <th>주소</th>
			                <th>전화번호</th>
			                <th>팩스번호</th>
			            </tr>
			        </thead>
			            <tr>
			                <td>1</td>
			                <td>2</td>
			                <td>3</td>
			                <td>4</td>
			            </tr>
			            <tr>
			                <td>1</td>
			                <td>32</td>
			                <td>3</td>
			                <td>4</td>
			            </tr>
			            <tr>
			                <td></td>
			                <td></td>
			                <td></td>
			                <td></td>
			            </tr>
			            <tr>
			                <td></td>
			                <td></td>
			                <td></td>
			                <td></td>
			            </tr>
			            <tr>
			                <td></td>
			                <td></td>
			                <td></td>
			                <td></td>
			            </tr>
			            <tr>
			                <td></td>
			                <td></td>
			                <td></td>
			                <td></td>
			            </tr>
			            <tr>
			                <td></td>
			                <td></td>
			                <td></td>
			                <td></td>
			            </tr>
			            <tr>
			                <td></td>
			                <td></td>
			                <td></td>
			                <td></td>
			            </tr>
			            <tr>
			                <td></td>
			                <td></td>
			                <td></td>
			                <td></td>
			            </tr>
			            <tr>
			                <td>1</td>
			                <td>2</td>
			                <td>3</td>
			                <td>4</td>
			            </tr>
			    </table>
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