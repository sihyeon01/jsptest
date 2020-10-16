<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.Calendar" %>
 <%-- JSP 주석 --%>
<!DOCTYPE html>
<!-- html 주석 -->
<html>
<head>
<% Calendar c=Calendar.getInstance();
	int hour=c.get(Calendar.HOUR_OF_DAY);
	int minute=c.get(Calendar.MINUTE);
	int second=c.get(Calendar.SECOND);
	// 자바 주석
	/* 자바 주석 */
	%>
<meta charset="UTF-8">
<title>현재시각</title>
<style>
/* css 주석 */
</style>
</head>
<body>
	<h2>현재시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</h2>
</body>
<script>
		// 자바스크립트 주석
		/* 자바스크립트 주석 */
</script>
</html>