<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<%--include head.jsp --%>
  	<jsp:include page="/include/head.jsp" />
<title>페이지 오류</title>
</head>
<body>
	
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%></p>
		<p>
			<a href="index.jsp" class="btn btn-secondary"> 홈으로 &raquo;</a>
		</p>
	</div>
</body>
</html>
