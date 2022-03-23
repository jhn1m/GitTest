<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
th {
	text-align: center;
}
</style>
</head>
<body>
	<div align="center" class="container">
		<div>
			<h1>회원 상세 정보</h1>
		</div><br><br>
		<form id="frm" action="memberUpdateForm.do" method="post">
			<div>
				<table class="table">
					<tr>
						<th width="150">회원아이디</th>
						<td align="center" width="150">${member.id } <input
							type="hidden" id="id" name="id" value="${member.id  }">
						</td>
					</tr>
					<tr>
						<th width="150">권한</th>
						<td align="center" width="150">${member.author }</td>
					</tr>
					<tr>
						<th width="150">주소</th>
						<td align="center" width="150">${member.address }</td>
					</tr>
					<tr>
						<th width="150">전화번호</th>
						<td align="center" width="150">${member.tel }</td>
					</tr>
					<tr>
						<th width="150">회원이름</th>
						<td align="center" width="150">${member.name }</td>
					</tr>
				</table>
			</div>
			<br>
			<div class="btn-group">
				<button type="button"
					onclick="location.href='memberList.do'">목록</button>
				<input type="submit"value="수정">
				<button type="button"
					onclick="location.href='memberDelete.do?Id=${member.id}'">삭제</button>
			</div>
		</form>
	</div><br><br>
</body>
</html>