<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<html>
<head><title>�Խ��� �۾���</title>
</head>
<%
 response.setHeader("Cache-Control","no-store"); 
 response.setHeader("Pragma","no-cache"); 
%>

<%
try{

String name   = request.getParameter("name");  
String pass   = request.getParameter("pass"); 
String email  = request.getParameter("email");
String title  = request.getParameter("title");
String contents  = request.getParameter("contents");

Calendar dateIn = Calendar.getInstance();
String indate = Integer.toString(dateIn.get(Calendar.YEAR)) + "-";
indate = indate + Integer.toString(dateIn.get(Calendar.MONTH)+1) + "-";
indate = indate + Integer.toString(dateIn.get(Calendar.DATE)) + " ";
indate = indate + Integer.toString(dateIn.get(Calendar.HOUR_OF_DAY)) + ":";
indate = indate + Integer.toString(dateIn.get(Calendar.MINUTE)) + ":";
indate = indate + Integer.toString(dateIn.get(Calendar.SECOND));


String driverName = "com.mysql.jdbc.Driver";
String dbURL = "jdbc:mysql://localhost:3306/univdb";


Class.forName(driverName);
Connection conn = DriverManager.getConnection(dbURL, "root", "dongyang");
Statement stmt = conn.createStatement();

PreparedStatement pstmt1 = null, pstmt2 = null;

String strSQL = "SELECT Max(num) FROM tblboard";
pstmt1 = conn.prepareStatement(strSQL);
ResultSet rs = pstmt1.executeQuery();
int num = 1;

if (!rs.wasNull()){
	rs.next();
	num = rs.getInt(1) + 1;	
}	
rs.close();
	

strSQL ="INSERT INTO tblboard(num, name, pass, email, title, contents, writedate, readcount)";
strSQL = strSQL + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
pstmt2 = conn.prepareStatement(strSQL);

pstmt2.setInt(1, num);
pstmt2.setString(2, name);
pstmt2.setString(3, pass);
pstmt2.setString(4, email);
pstmt2.setString(5, title);
pstmt2.setString(6, contents);
pstmt2.setString(7, indate);
pstmt2.setInt(8, 0);
pstmt2.executeUpdate();


response.sendRedirect("listboard11.jsp"); 
%>
<body>
<%
pstmt1.close();
pstmt2.close();
conn.close();
}catch(SQLException e){
%>

�Խ��ǿ� ������ �ֽ��ϴ�. �����ڿ��� �����ϼ���.

<%
}
%>
</body>
</html>
