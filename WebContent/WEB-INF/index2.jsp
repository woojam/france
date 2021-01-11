<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
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
										<h1><a href="index.html" id="logo">France</a></h1>

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
         <%=id %>  Welcome
								<br />
								</h2>
								
								<p>Do you want to log out?</p>
								<a href="index.html" class="button large icon fa-check-circle">Logout</a>
							</div>
							
							<TR>


					</div>
				</div>

								
	</body>
</html>