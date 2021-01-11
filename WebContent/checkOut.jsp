<%@page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");%>

    <%
        ArrayList<String> arr =(ArrayList)(session.getAttribute("arr"));
        String id = request.getSession().getAttribute("id").toString();    
    %>
    
    <center>
    <%= id %>님의 상품 목록<br><hr>
    <%
            if (session.getAttribute("productlist") == null) { //추가한 물품(추가)를 하지 않은 경우
        %>
        <p align="center">추가된 상품 없을무</p>
        <%
            } else {
        %>
        <p align="center"><%=session.getAttribute("productlist").toString()%></p>
        <%
            }
        %>

    <br>
    <form action="Login.jsp" method="post">
    <a href = "setProduct.jsp">
    <input type="button" value="돌아가기" ></a>
    <a href = "logout.jsp">
    <input type="submit" value="로그아웃"></a>
    </form>
    </center>
</body>
</html>
