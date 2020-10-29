<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id=null;
	if(session.getAttribute("id") !=null){
		id=(String)session.getAttribute("id");
	}else{
		out.println("<script>location.href='loginform.jsp'</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 메인 페이지</title>
</head>
<body>
	<%=id %>로그인하셨습니다.
	<%if(id.equals("admin")) { %>
		<a href="member_list.jsp">관리자모드접속(회원 목록 보기)</a>
	<%} %>	
</body>
</html>