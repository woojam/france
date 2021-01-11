<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
								<% request.setCharacterEncoding("utf-8");  %>
								<% session.invalidate(); %>
								<% response.sendRedirect("index.html");%>
</body>
</html>