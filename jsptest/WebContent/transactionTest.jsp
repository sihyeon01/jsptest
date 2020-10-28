<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, javax.sql.*, javax.naming.*"%>
  <% Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  String sql="INSERT INTO employee (id, name) VALUES (11,'이지언')";
  String sql2="SELECT * FROM employee WHERE id=1";
  try{
	  Context init = new InitialContext();
	  DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/shopdb");
	  conn = ds.getConnection();
	  
	  conn.setAutoCommit(false);
	  
	  pstmt=conn.prepareStatement(sql);
	  pstmt.executeUpdate();
	  
	  pstmt=conn.prepareStatement(sql2);
	  rs=pstmt.executeQuery();
	  if(!rs.next()){
		  conn.rollback();
		  out.println("데이터 삽입에 문제가 발생하여 롤백하였습니다.");
	  }else{
	  	conn.commit();
	  	out.println("데이터 삽입이 모두 완료되었습니다.");
	   }
	   conn.setAutoCommit(true);
  }catch(Exception e) {
	  out.println("데이터 삽입에 실패하였습니다.");
	  e.printStackTrace();
  }finally{
	  try{
		  rs.close();
		  pstmt.close();
		  conn.close();
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
  }
  
  
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>