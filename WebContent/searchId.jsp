
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html>
<head><title>���̵� ã��</title></head>
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
			%>�̸� �Ǵ� �ֹε�Ϲ�ȣ�� Ʋ�Ƚ��ϴ�.<p>
			<input type = "button" value = "�ٽ� �Է��ϱ�" onclick = 
				"javascript:window.location='searchIdForm.jsp'">
		
<%
		}
		else
		{
%>
			<%= name %>�Կ� ���̵�� <b><%= id %></b> �Դϴ�.<p>
			<input type = "submit" value = "��������">
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