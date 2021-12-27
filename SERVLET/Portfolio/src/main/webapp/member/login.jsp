<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<%--include head.jsp --%>
  	<jsp:include page="/include/head.jsp" />
	</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<%--include topNavbar.jsp --%>
		<jsp:include page="/include/topNavbar.jsp" />

			<!-- Main -->
			<article id="main">

				<header class="special container">
					<span class="icon solid fa-mobile-alt"></span>
					<h2>Member <strong>-Login</strong></h2>
					
				</header>

				<!-- One -->
					<section class="wrapper style4 container">
						<%
							String error = request.getParameter("error");
							if(error!=null){
								out.println("<div class='alert alert-danger'>");
								out.println("아이디와 비밀번호를 확인해주세요");
								out.println("</div>");
							}
						
						%>
						<form class="form-signin " action="processLoginMember.jsp" method="POST">
							
							<h1 class="h3 my-4 font-weight-normal">회원 로그인</h1>
						
							<label for="inputUserName" class="sr-only">ID</label>
							<input type="text" name='id' class="form-control my-5" placeholder="아이디" style = "height: 70px;" required autofocus>
							
						
							<label for="inputPassword" class="sr-only">Password</label>
							<input type="password" name='password'  class="form-control my-4" placeholder="비밀번호" style = "height: 70px;" required>
						
							

							<div class="align-middle text-center mb-3">
							<button class="button btn-success btn-block" type="submit">
							  <i class="material-icons align-middle">login</i>
							  <span class="align-middle">로그인</span>
							</button>
							</div>
						  </form>
			
					</section>

				</article>

		<%--include bottomFooter.jsp --%>
	<jsp:include page="/include/bottomFooter.jsp" />
	</div>
    
    <%--include javascripts.jsp --%>
    <jsp:include page="/include/javascripts.jsp" />

	</body>
</html>