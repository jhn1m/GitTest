<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<div align="center" class="container">
		<form id="frm" action="memberInsert.do" method="post" class="joinForm">
			<h2 align="center">회원가입</h2>
			<div><br>
				<table class="table">
					<tr>
						<th width="100">아이디</th>
						<td align="center" width="150"><input type="text" id="id"
							name="id" class="id" placeholder="아이디" required="required">
						</td>
					
						<th width="100">비밀번호</th>
						<td align="center" width="150"><input type="password"
							id="password" name="password" class="pw" placeholder="비밀번호"
							required="required"></td>
					</tr>
					<tr>
						<th width="100">이름</th>
						<td align="center" width="150"><input type="text" id="name"
							name="name" class="name" placeholder="이름" required="required">
						</td>
					
						<th width="100">전화번호</th>
						<td align="center" width="150"><input type="text" id="tel"
							name="tel" class="cellphoneNo" placeholder="전화번호"
							required="required"></td>
					</tr>
					<tr>
						<th width="100">주소</th>
						<td align="center" width="150"><input type="text"
							id="address" name="address" class="cellphoneNo" placeholder="주소"
							required="required"></td>
					</tr>
				</table>
			</div>
			<br>
			<div class="btn-group">
				<input type="submit" value="가입"/> 
				<input type="reset" value="취소" > 
				<input type="button" onclick="location.href='home.do'" value="홈으로">
			</div>
		</form>
	</div><br>
</body>
</html>