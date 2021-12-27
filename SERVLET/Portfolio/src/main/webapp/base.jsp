<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<%--include head.jsp --%>
<jsp:include page="/include/head.jsp" />
</head>
<body class="right-sidebar is-preload">
	<div id="page-wrapper">

		<%--include topNavbar.jsp --%>
		<jsp:include page="/include/topNavbar.jsp" />


		<!-- Main -->
		<article id="main">

			<header class="special container">
				<span class="material-icons">luggage</span>
				<h2>
					Member <strong> -Information</strong>
				</h2>
			</header>


			<section class="wrapper style4 container">

				<div class="row gtr-150">
					<div class="col-8 col-12-narrower">

						<!-- Content -->
						<div class="content">
							<section>
								<%
								String msg = request.getParameter("msg");

								if (msg != null) {
									if (msg.equals("0"))
										out.println(" <h2 class='alert alert-danger'>회원정보가 수정되었습니다.</h2>");
									else if (msg.equals("1"))
										out.println(" <h2 class='alert alert-danger'>회원가입을 축하드립니다.</h2>");
									else if (msg.equals("2")) {
										String loginId = (String) session.getAttribute("sessionId");
										out.println(" <h2 class='alert alert-danger'>" + loginId + "님 환영합니다</h2>");
									}
								} else {
									out.println("<h2 class='alert alert-danger'>회원정보가 삭제되었습니다.</h2>");
								}
								%>
							</section>

						</div>

					</div>


				</div>
			</section>


		</article>


		<%--include bottomFooter.jsp --%>
		<jsp:include page="/include/bottomFooter.jsp" />

	</div>
	<%--include javascripts.jsp --%>
	<jsp:include page="/include/javascripts.jsp" />

</body>
</html>