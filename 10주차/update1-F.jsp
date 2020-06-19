<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경</title>
</head>
<body>
	<h2>로그인 변경</h2>
	
	<form action="update1-P.jsp" method="post">
	아이디 : <input type="text" name="id" value="<%=id %>"> <br>
	과목: <input type="text" name="subject"><br>
	내용: <input type="text" name="content"><br>
	글쓴이: <input type="text" name="writer"><br>
	regdate: <input type="text" name="regdate"><br>
	
	<input type="submit" value="변경">
	<input type="button" value="삭제" onclick="location.href='delete.jsp?id=<%=id %>'">
	<input type="reset" name="재설정">
	</form>
</body>
</html>