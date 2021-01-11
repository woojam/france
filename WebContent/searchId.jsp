
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html>
<head><title>아이디 찾기</title></head>
<link href = "style.css" rel = "stylesheet" type = "text/css">

<% request.setCharacterEncoding("euc-kr"); %>



<%String id = (String)session.getAttribute("id"); %>
  <%request.getSession().setAttribute("id", id); %>

<%String name = (String)session.getAttribute("name"); %>
  <%request.getSession().setAttribute("name", name); %>

<%String juminnum2 = (String)session.getAttribute("juminnum2"); %>
<%request.getSession().setAttribute("juminnum2", juminnum2); %>

<%String juminnum1 = (String)session.getAttribute("juminnum1"); %>
  <%request.getSession().setAttribute("juminnum1", juminnum1); %>
  


<body>
<center>
<% 
try

{
	

%>
<form method = "post" action = "index.html">

	
<%
		if(id == null || juminnum1==null || juminnum2==null)
		{
			%>이름 또는 주민등록번호가 틀렸습니다.<p>
			<input type = "button" value = "다시 입력하기" onclick = 
				"javascript:window.location='searchIdForm.jsp'">
		
<%
		}
		else
		{
%>
			<%= name %>님에 아이디는 <b><%= id %></b> 입니다.<p>
			<input type = "submit" value = "메인으로">
<%
		}
%>
<%
		}catch(Exception e) {}
%>
</form>
</center>
</body>

</html>