<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("euc-kr"); %>

<HTML>
<HEAD>
<TITLE> �Խ��� </TITLE>

<SCRIPT language="JavaScript">
function Check()
{
if (Modify.name.value.length < 1) {
	alert("�ۼ��ڸ� �Է��ϼ���.");
	Modify.name.focus(); 
        return false;
	}

if (Modify.pass.value.length < 1) {
	alert("��й�ȣ�� �Է��ϼ���.");
	Modify.pass.focus(); 
	return false;
	}

if (Modify.email.value.indexOf("@") + "" == "-1" ||
	Modify.email.value.indexOf(".") + "" == "-1" ||
	Modify.email.value == "" )
	{ 
		alert("E-mail�� �Է��ϼ���.");
		Modify.email.focus();
		return false;
	}

if (Modify.title.value.length < 1) {
	alert("�������� �Է��ϼ���.");
	Modify.title.focus(); 
	return false;
        }

if (Modify.contents.value.length < 1) {
	alert("�۳����� �Է��ϼ���.");
	Modify.contents.focus(); 
	return false;
        }

Modify.submit();
}

function list()
{
location.href = "listboard11.jsp";
}

</SCRIPT>
</HEAD>

<BODY>

<%
String num = request.getParameter("num"); 

String driverName = "com.mysql.jdbc.Driver";
String dbURL = "jdbc:mysql://localhost:3306/univdb";


    Class.forName(driverName);
    Connection conn = DriverManager.getConnection(dbURL, "root", "dongyang");
    Statement stmt = conn.createStatement();

PreparedStatement pstmt = null;
ResultSet rs = null;

try {

String strSQL = "SELECT * FROM tblboard WHERE num = ?";
pstmt = conn.prepareStatement(strSQL);
pstmt.setInt(1, Integer.parseInt(num));

rs = pstmt.executeQuery();
rs.next();

String name = rs.getString("name");
String email = rs.getString("email");
String title = rs.getString("title");
String contents = rs.getString("contents").trim();
String writedate = rs.getString("writedate");
int readcount = rs.getInt("readcount");
%>
                   
<center><font size='3'><b> �Խ��� �ۼ��� </b></font>                  

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>
                 
<FORM Name='Modify' Action='modify11_output.jsp' Method='POST' OnSubmit='return Check()'>
<input type='hidden' name='num' value='<%=num %>'>
      
<TABLE border='0' width='600'>
	<TR>
		<TD width='100' bgcolor='cccccc'>
			<font size='2'><center><b>�ۼ���</b></center></font> 
		</TD>
		<TD>
			<p><input type='text' size='12' name='name' value="<%=name %>"> * �ʼ� </p>
		</TD>
	</TR>

	<TR>
		<TD width='100' bgcolor='cccccc'>
			<font size='2'><center><b>��й�ȣ</b></center></font>
		</TD>
		<TD>
			<p><input type='password' size='12' name='pass'> * �ʼ� </p>
		</TD>
	</TR>

	<TR>
		<TD width='100' bgcolor='cccccc'>
			<font size='2'><center><b>E-mail</b></center></font>
		</TD>
		<TD>
			<font size='2'><input type='text' size='40' maxlength='50' name='email' value="<%=email %>"></font>
		</TD>
	</TR>
	
	<TR>
      		<TD colspan='2'>
         		<hr size='1' noshade>
      		</TD>
	</TR>

	<TR>
		<TD width='100' bgcolor='cccccc'>
			<font size='2'><center><b>�� ����</b></center></font>
		</TD>
		<TD>
			<font size='2'><input type='text' size='70' maxlength='50' name='title' value="<%=title %>"></font>
		</TD>
	</TR>

	<TR>
		<TD bgcolor='cccccc'>
			<font size='2'><center><b>�� ����</b></center></font>
		</TD>
		<TD>
         		<font size='2'>
         		<textarea cols='70' rows='15' wrap='virtual' name='contents'><%=contents %></textarea>
         		</font>
      		</TD>
	</TR>
	
	<TR>
		<TD colspan='2'><hr size='1' noshade></TD>
	</TR>

	<TR>
		<TD align='center' colspan='2' width='100%'>
		<TABLE>
			<TR>
				<TD width='200' align='center'>
					<input Type = 'Reset' Value = '�ٽ� �ۼ�'>
				</TD>
				<TD width='200' align='center'>
					<input Type = 'Button' Value = '�� �� �Ϸ�' Name='Page' onClick='Check();'>
				</TD>
				<TD width='200' align='center'><a href="listboard11.jsp">
					<input Type = 'Button' Value = '���' Name='Page' onClick='list();'>
					</a>
				</TD>
			</TR>
		</TABLE>
		</TD>
	</TR>
   
</TABLE>

<%
}catch(SQLException e){
   	out.print("SQL���� " + e.toString());
}catch(Exception ex){
   	out.print("JSP���� " + ex.toString());
}finally{  
	rs.close();
	pstmt.close();
	conn.close();
}
%>

</BODY>
</HTML>


