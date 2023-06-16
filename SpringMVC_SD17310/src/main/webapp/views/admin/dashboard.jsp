<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/category/create"
		method="POST" enctype="multipart/form-data">
		<p>
			Name <input type="text" name="name">
		</p>
		<p>
			Image <input type="file" name="file">
		</p>
		<input type="submit" value="Submit">
	</form>
</body>
</html>