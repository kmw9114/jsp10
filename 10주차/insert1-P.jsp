<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*" %>
<% 	request.setCharacterEncoding("utf-8"); 

	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String pwd = "1111";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection con = DriverManager.getConnection(url,user,pwd);
	
	String sql = "INSERT INTO BOARD VALUES(?,?,?,?,?)";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("id"));
	pstmt.setString(2, request.getParameter("subject"));
	pstmt.setString(3, request.getParameter("content"));
	pstmt.setString(4, request.getParameter("writer"));
	pstmt.setString(5, request.getParameter("regdate"));

	int i = pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
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