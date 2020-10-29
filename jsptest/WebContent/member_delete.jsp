<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%	String id=null;
	if((session.getAttribute("id") ==null) ||
		(!((String)session.getAttribute("id")).equals("admin"))) {
		out.println("<script>location.href='loginform.jsp'</script>");
	}
	String delete_id=request.getParameter("id");
	
	Connection conn=null;
   	PreparedStatement pstmt=null;
   	ResultSet rs=null;
		
   	try{
   		Context init = new InitialContext();
   		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/ms");
   		conn = ds.getConnection();
   		
   		pstmt=conn.prepareStatement("DELETE FROM members WHERE id=?");
   		pstmt.setString(1,delete_id);
  		pstmt.executeUpdate();
  		
  		out.println("<script>location.href='member_list.jsp'</script>");
	}catch(Exception e){
   		e.printStackTrace();
   	}finally{
   		try{
   			pstmt.close();
   			conn.close();
   		}catch(Exception e) {
   			e.printStackTrace();
   		}
   	}
%>
   	
   	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join Process</title>
</head>
<body>

</body>
</html>