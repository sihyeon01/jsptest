<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); 
	response.setContentType("text/html; charset=UTF-8");
	int age=30;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 내장 객체 사용 예제</title>
</head>
<body>
	<h2>${test}:<%=(String)session.getAttribute("test") %></h2>
	<h3>${param.name}:<%=request.getParameter("name") %></h3>
	${age }
</body>
</html>