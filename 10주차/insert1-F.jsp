<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<br>
	<h2 class="text-center font-weight-bold">입력</h2>
	<hr/>
	
	<form action="insert1-P.jsp">
		<div class="form-group">
			<label for="id">ID:</label>
			<input type="text" class="form-control" id="id" name="id">
		</div>
		<div class="form-group">
			<label for="subject">SUBJECT:</label>
			<input type="text" class="form-control" id="subject" name="subject">
		</div>
		<div class="form-group">
			<label for="content">CONTENT:</label>
			<input type="text" class="form-control" id="content" name="content">
		</div>
		<div class="form-group">
			<label for="writer">WRITER:</label>
			<input type="text" class="form-control" id="writer" name="writer">
		</div>
		<div class="form-group">
			<label for="regdate">REGDATE:</label>
			<input type="text" class="form-control" id="regdate" name="regdate">
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-secondary">등록</button>
		</div>
	</form>
	</div>
</body>
</html>