<%@page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <%!ArrayList<String> list;%>
    <%
        String productName = request.getParameter("product");
        //조건
        if (session.getAttribute("productlist") == null) {
            //아무런 데이터가 없으면 : Arraylist 할당
            list = new ArrayList<String>();
        } else { //저장된 데이터가 있으면
            list = (ArrayList<String>) session.getAttribute("productlist");
        }
 
        list.add(productName); //리스트에 내용 
        session.setAttribute("productlist", list); //ArrayList를 session에 저장
    %>


    
    <script> alert("상품이 추가되었습니다"); history.back()</script>    
</body>
</html>

