<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <jsp:useBean id="beantest" class="jspTest.BeanTest"/>
  <%
  	//jspTest.BeanTest beantest = new jspTest.BeanTest();
  	beantest.setName("이순신");
  %>
  <jsp:setProperty property="name" name="beantest" value="유관순"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaBean Test</title>
</head>
<body>
	<h2><%=beantest.getName() %></h2>
	<h3><jsp:getProperty property="name" name="beantest"/></h3>
</body>
</html>