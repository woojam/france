<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head><title>아이디 찾기</title></head>
<link href = "style.css" rel = "stylesheet" type = "text/css">
<body>
	<%String id = (String)session.getAttribute("id"); %>
    <%request.getSession().setAttribute("id", id); %>

	<%String name = (String)session.getAttribute("name"); %>
    <%request.getSession().setAttribute("name", name); %>
    
    <%String juminnum2 = (String)session.getAttribute("juminnum2"); %>
    <%request.getSession().setAttribute("juminnum2", juminnum2); %>
    
    <%String juminnum1 = (String)session.getAttribute("juminnum1"); %>
    <%request.getSession().setAttribute("juminnum1", juminnum1); %>


<form method = "post" action = "searchId.jsp">
<table cellspacing = "1" cellpadding = "1" width = "500" border = "1" align = "center">
<tr height = "30">
	<td width = "110" bgcolor = #ffffff"<%=name%>" align = "center">
		이름
	</td>
	<td width = "150" bgcolor = #ffffff"<%= name %>" align = "center">
		<input type = "text" name = "name"  size = "18" >
    </td>
</tr>
<tr height = "30">
	<td width = "110" bgcolor = #ffffff "<%= juminnum1 %>" align = "center">
		주민등록 번호
	</td>
	<td width = "150" bgcolor = #ffffff"<%= juminnum2%>" align = "center">
		<input type='password' name = "juminnum1" size = "7" maxlength = "6"> - 
		<input  type='password' name = "juminnum2" size = "7" maxlength = "7">
	</td>
</tr>
<tr height = "30">
	<td colspan = "2" align = "middle" >
		<input type = "button" value = "메인으로" onclick = 
			"javascript:window.location = 'index.html'">
		<input type = "submit" value = "찾기">
	</td>
</tr>
</form>
</body>
</html>