<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listRegister.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="./resources/json.min.js"></script>
</head>
<body>
	<div>
		<input name="id"><input name="name">
	</div>
	<div>
		<input name="id"><input name="name">
	</div>
	<div>
		<input name="id"><input name="name">
	</div>
	<div>
		<input name="id"><input name="name">
	</div>
	<button type="button" id="btn">등록</button>
	<script>
		$("#btn").on("click", function () {	
			let list = [];
			$('div').each(function (idx, item) {
				let id = $(item).find("input").eq(0).val();
				let name = $(item).find("input").eq(1).val();
				list.push({id, name})
			})
			$.ajax({
				method:"post",
				url:"listRegister",
				contentType:"application/json",	
				data:JSON.stringify(list),
				dataType:"json"
			})
		})
	</script>
</body>
</html>