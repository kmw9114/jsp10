<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
    String user = "JSP";
    String passwd = "1111";
    
   
    Class.forName("oracle.jdbc.driver.OracleDriver");
    
    
    Connection con = DriverManager.getConnection(url,user, passwd);
    
    
    String sql = "SELECT * FROM BOARD";
    Statement st = con.createStatement();
    
   
    ResultSet rs = st.executeQuery(sql);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<h1 class="text-center font-weight-bold">로그인 정보</h1>
<br><br>
<table class="table table-hover">
	<tr>
		<th>아이디</th>
		<th>과목</th>
		<th>내용</th>
		<th>작가</th>
		<th>레그데이트</th>
	</tr>
<% 
	while(rs.next()){
		String id=rs.getString("ID");
		String subject=rs.getString("SUBJECT");
		String content=rs.getString("CONTENT");
		String writer=rs.getString("WRITER");
		String regdate=rs.getString("REGDATE");
%>
<tr>
		<td><a href="update1-F.jsp?id=<%=id %>"><%=id %></td>
		<td><%=subject %></td>
		<td><%=content %></td>
		<td><%=writer %></td>
		<td><%=regdate %></td>
	</tr>
<% } 
	
	rs.close();
	st.close();
	con.close();
%>
</table>
</div>
</body>
</html>