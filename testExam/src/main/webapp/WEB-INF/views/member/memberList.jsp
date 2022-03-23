<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CDN방식 -->
<script src="resources/js/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
 th{
 text-align: center;
 }
 
 </style>
</head>
<body>
	<div align="center" class="container ">
		<div>
			<h1>회원목록</h1>
		</div><br>
		<div>
			<table class="table">	
				<tr>
					<th >회원아이디</th>
					<th >회원이름</th>
					<th >회원전화번호</th>
					<th >회원주소</th>
					<th >권한</th>
				</tr>
				<c:forEach items="${members }" var="member">
					<tr onclick="noticeSelect('${member.id }')">
						<td align="center">${member.id }</td>
						<td align="center">${member.name }</td>
						<td align="center">${member.tel }</td>
						<td align="center">${member.address }</td>
						<td align="center">${member.author }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<form id="frm" action="memberSelect.do" method="post">
			<input type ="hidden" id= "id" name="id"> 
		</form><br>
		<button type="button" onclick="location.href='home.do'">홈으로</button>
	</div><br>
	<script type="text/javascript">
		function noticeSelect(n) {
			frm.id.value = n;
			frm.submit();
		}
	</script>
</body>
</html>