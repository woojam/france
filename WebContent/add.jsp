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
        //����
        if (session.getAttribute("productlist") == null) {
            //�ƹ��� �����Ͱ� ������ : Arraylist �Ҵ�
            list = new ArrayList<String>();
        } else { //����� �����Ͱ� ������
            list = (ArrayList<String>) session.getAttribute("productlist");
        }
 
        list.add(productName); //����Ʈ�� ���� 
        session.setAttribute("productlist", list); //ArrayList�� session�� ����
    %>


    
    <script> alert("��ǰ�� �߰��Ǿ����ϴ�"); history.back()</script>    
</body>
</html>

