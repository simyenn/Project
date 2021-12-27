<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE HTML>

<html>
<head>
<%--include head.jsp --%>
<jsp:include page="/include/head.jsp" />
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/PortfolioDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<sql:query dataSource="${dataSource}" var="resultSet">
   SELECT * FROM MEMBER WHERE ID=?
   <sql:param value="<%=sessionId%>" />
</sql:query>

</head>
<body class="left-sidebar is-preload" onload="init()">
	<div id="page-wrapper">

		<%--include topNavbar.jsp --%>
		<jsp:include page="/include/topNavbar.jsp" />

		<!-- Main -->
		<article id="main">

			<header class="special container">
				<span class="icon solid fa-mobile-alt"></span>
				<h2>
					Member <strong>-Modify Information</strong>
				</h2>

			</header>

			<!-- One -->
			<section class="wrapper style4 container">

				<!-- Contents area -->
				<div class="border border-info p-4 rounded">
					<h5>회원 정보 수정</h5>
					
						<c:forEach var="row" items="${resultSet.rows }">

						<hr class="featurette-divider">

						<form name="newMember" action="processUpdateMember.jsp" method="POST"
							onsubmit="return checkForm()">
							<div class="form-group">
								<label for="id"> <i class="material-icons align-middle">account_box</i>
									<span class="align-middle">아이디</span>
								</label> <input type="text" class="form-control" id="id" name="id"
									value="<c:out value='${row.id}'/>"
									style="width: 500px; height: 60px;" placeholder="아이디" >
							</div>

							<div class="form-group">
								<label for="password"> <i class="material-icons align-middle">lock</i> 
								<span class="align-middle">비밀번호</span>
								</label> <input type="text" class="form-control" id="password"
									name="password" placeholder="비밀번호"
									value="<c:out value='${row.password}'/>"
									style="width: 500px; height: 60px;">
							</div>
							<div class="form-group">
								<label for="password2"> <i
									class="material-icons align-middle">check</i> <span
									class="align-middle ">비밀번호 재확인</span>
								</label> <input type="text" class="form-control" id="password2"
									name="password_confirm" placeholder="비밀번호 재확인"
									style="width: 500px; height: 60px;">
							</div>

							<div class="form-group">
								<label for="name"> <i
									class="material-icons align-middle">person</i> <span
									class="align-middle">이름</span>
								</label> <input type="text" class="form-control" id="name" name="name"
									placeholder="이름" value="<c:out value='${row.name}'/>"
									style="width: 200px; height: 60px;">
							</div>

							<div class="form-group">
								<label for="birthday"> <i
									class="material-icons align-middle">event</i> <span
									class="align-middle">생년월일</span>
								</label> <input type="date" class="form-control" id="birthday"
									name="birthday" value="<c:out value='${row.birthday}'/>" 
									style="width: 200px; height: 60px;">
							</div>

						
							<div class="form-group">
								<label for="email"> <i
									class="material-icons align-middle">mail</i> <span
									class="align-middle">이메일 주소</span>
								</label> <input type="text" name="email" maxlength="50"
								value="<c:out value='${row.email}'/>"
									style="width: 500px; height: 60px;">

							</div>



							<div class="text-center">
								<label class="mr-3">이벤트 등 알림 메일 수신동의 : </label>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="customRadioInline1"
										name="customRadioInline" class="custom-control-input" checked>
									<label class="custom-control-label" for="customRadioInline1">동의함</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="customRadioInline2"
										name="customRadioInline" class="custom-control-input">
									<label class="custom-control-label" for="customRadioInline2">동의
										안함</label>
								</div>
							</div>

							<div class="my-3 text-center">
								<input type="submit" class="button" value="회원수정"> 
								<a href="deleteMember.jsp" class="button ml-3">회원탈퇴</a>
							</div>
						</form>
						</c:forEach>
				</div>
				<!-- end of Contents area -->

			</section>
		</article>


		<%--include bottomFooter.jsp --%>
		<jsp:include page="/include/bottomFooter.jsp" />
	</div>

	<%--include javascripts.jsp --%>
	<jsp:include page="/include/javascripts.jsp" />

<script type="text/javascript">

	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
</body>
</html>
