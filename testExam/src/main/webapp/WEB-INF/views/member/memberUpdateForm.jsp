<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<div align="center" class="container">
	<div><h1>회원 정보 수정</h1></div><br>
		<form id="frm" action="memberUpdate.do" method="post"> 
		<div>
			<table class="table">
					<tr>
						<th width="100">회원아이디</th>
						<td align="center" width="150">
							<input type="text" id="id" name="id" value="${member.id }" readonly="readonly">
						</td>
						
   						<th width="100">권한</th>
						<td align="center" width="150">
							<input type="text" id="author" name="author" value="${member.author }" readonly="readonly">
						</td>
					</tr>
					<tr>
						<th width="100">주소</th>
						<td align="center" width="150">
							<input type="text" id="address" name="address" value="${member.address }">
						</td>
						<th width="100">전화번호</th>
						<td align="center" width="150">
							<input type="text" id="tel" name="tel" value="${member.tel }">
						</td>
					</tr>
					<tr>
						<th width="100">회원이름</th>
						<td align="center" width="150">
							<input type="text" id="name" name="name" value="${member.name }">
   						</td>
					</tr>
				</table>
		</div><br>
		<div class="btn-group">
			<button type="button" onclick="location.href='memberList.do'">목록</button>
			<input type="submit" value="수정하기">
		</div>
		</form>
</div><br>
</body>
</html>