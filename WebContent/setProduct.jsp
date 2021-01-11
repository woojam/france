<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품</title>
 
</head>
<body>
   <%String id = (String)session.getAttribute("id"); %>
  
    <%request.getSession().setAttribute("id", id); %>
    
  <% request.setCharacterEncoding("utf-8");%>

    
    <meta charset="utf-8" />
    <center>
    <%=id %>님이 로그인 되었습니다.<br>
    상품을 선택하세요.
    <hr>
    
    <form action="add.jsp" method="get">
        상품 : 
        <select name="product">
            <option value="프랑스여행1">프랑스여행A패키지</option>
            <option value="프랑스여행2">프랑스여행B패키지</option>
            <option value="프랑스여행3">프랑스여행C패키지</option>
        </select> 
        <input type="submit" value="추가">
    </form>
    
    <form name="go" action="checkOut.jsp" method="post">
    <input type="submit" value="장바구니 가기"><br>
    </form>    
    
    <a href = "index2.jsp">
    <input type="submit" value="뒤로가기"></a>
    </form>
    
    <a href = "logout.jsp">
    <input type="submit" value="로그아웃"></a>
    </form>
    
  
 
 
    </center>
</body>
</html>
