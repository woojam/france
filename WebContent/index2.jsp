<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<script language="JavaScript">

function printClock() {
    
    var clock = document.getElementById("clock");            // ����� ��� ����
    var currentDate = new Date();                                     // ����ð�
    var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // ���� ��¥
    var amPm = 'AM'; // �ʱⰪ AM
    var currentHours = addZeros(currentDate.getHours(),2); 
    var currentMinute = addZeros(currentDate.getMinutes() ,2);
    var currentSeconds =  addZeros(currentDate.getSeconds(),2);
    
    if(currentHours >= 12){ // �ð��� 12���� Ŭ �� PM���� ����, 12�� ����
    	amPm = 'PM';
    	currentHours = addZeros(currentHours - 12,2);
    }

    if(currentSeconds >= 50){		// 50�� �̻��� �� ���� ��ȯ�� �ش�.
       currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
    }
    clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" <span style='font-size:50px;'>"+ amPm+"</span>"; //��¥�� ����� ��
    
    setTimeout("printClock()",1000);         // 1�ʸ��� printClock() �Լ� ȣ��
}

function addZeros(num, digit) { // �ڸ��� �����ֱ�
	  var zero = '';
	  num = num.toString();
	  if (num.length < digit) {
	    for (i = 0; i < digit - num.length; i++) {
	      zero += '0';
	    }
	  }
	  return zero + num;
}

</script>
<html>

	<head>
	
		<title>France Introduce</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="homepage is-preload">
	
		<div id="page-wrapper">
		<%String id = (String)session.getAttribute("id"); %>
			<!-- Header -->
				<div id="header-wrapper">
					<div class="container">

						<!-- Header -->
							<header id="header">
								<div class="inner">

									<!-- Logo -->
									<% 
									
									 if(session == null) {
  									 response.sendRedirect("index.html");
  									 return;
  									
 									 }
										
											 %>	
									<h1><a id="logo">France</a></h1>
									
									<!-- Nav -->
										<nav id="nav">
											<ul>
									
												
			
<li><a href="INFO.html">INFO</a></li>
<li><a href="HISTORY.html">HISTORY</a></li>										
													
												<li><a href="CULTURE.html">CULTURE</a></li>
												<li><a href="TRAVEL.html">TRAVEL</a></li>
												<li><a href="BRAND.html">BRAND</a></li>
											</ul>
										</nav>

								</div>
							</header>

						<!-- Banner -->
							<div id="banner">
							
								<h2> This is a homepage that introduces France.
								<form action="setProduct.jsp" method="post">
         <a href = "setProduct.jsp">
         <%=id %></a>  Welcome
								<br />
								</h2>
								
								<p>Do you want to log out?</p>
								
								<a href="logout.jsp" class="button large icon fa-check-circle">Logout</a>
								<body onload="printClock()">
	<div style=" width:300px; height:150px; line-height:290px; color:#ffffff;font-size:50px; text-align:center;"id="clock">
	</div>
	<jsp:useBean id="counter" class="count.CounterBean" scope="application"/>
	<jsp:setProperty name="counter" property="newVisit" value="1"/>
	 <div style= color:#ffffff;>Today : <jsp:getProperty name="counter" property="visitCount"/>
	 </div>  <div align="right"><a href="mailForm.html"><img src="images/mail.png"align:right; alt="" width="50" height="40"/>
	 <a href="http://fb.com">&nbsp;<img src="images/facebook.png"align:right; alt="" width="50" height="40"/>
	 <a href="http://instargram.com">&nbsp;<img src="images/instargram.png"align:right; alt="" width="50" height="40"/>
	 <a href="http://www.kakaocorp.com/service/KakaoTalk?lang=ko">&nbsp;<img src="images/kakaotalk.png" alt="" width="50" height="40"/>
	 <a href="http://story.kakao.com">&nbsp;<img src="images/kakaostroy.png"align:right; alt="" width="50" height="40"/></div>
							</div>
							
							<TR>
							
						

						


					</div>
				</div>
				

								
	</body>
</html>