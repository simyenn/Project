<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String name = (String) request.getAttribute("name");
%>
<!DOCTYPE HTML>

<html>
<head>
<%--include head.jsp --%>
<jsp:include page="/include/head.jsp" />
</head>
<script type="text/javascript">
	function checkForm() {
		if (!document.newWrite.name.value) {
			alert("성명을 입력하세요.");
			return false;
		}
		if (!document.newWrite.subject.value) {
			alert("제목을 입력하세요.");
			return false;
		}
		if (!document.newWrite.content.value) {
			alert("내용을 입력하세요.");
			return false;
		}
	}
</script>
<body>
<body class="left-sidebar is-preload">
	<div id="page-wrapper">

		<%--include topNavbar.jsp --%>
		<jsp:include page="/include/topNavbar.jsp" />

		<!-- Main -->
		<article id="main">

			<header class="special container">
				<span class="icon solid fa-mobile-alt"></span>
				<h2>
					Q&A <strong>-Board</strong>
				</h2>

			</header>

			<!-- One -->
			<section class="wrapper style4 container">
				
				<!-- Contents area -->
				<div class="border border-info p-4 rounded">
					<h5>게시판 글쓰기</h5>

					<hr class="featurette-divider">

					<form name="newWrite" action="./BoardWriteAction.do"
						class="form-horizontal" method="post"
						onsubmit="return checkForm()">
						<input name="id" type="hidden" class="form-control"
							value="${sessionId}">
						<div class="form-group row">
							<label class="col-sm-2 control-label">성명</label>
							<div class="col-sm-3">
								<input name="name" type="text" class="form-control"
									value="<%=name%>" placeholder="name">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 control-label">제목</label>
							<div class="col-sm-5">

								<input name="subject" type="text" class="form-control"
									placeholder="subject">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 control-label">내용</label>
							<div class="col-sm-8">
								<textarea name="content" cols="50" rows="5" class="form-control"
									placeholder="content"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-offset-2 col-sm-10 ">
								<input type="submit" class="btn btn-primary " value="등록 ">
								<input type="reset" class="btn btn-primary " value="취소 ">
							</div>
						</div>
					</form>
					<hr>

				</div>
				<!-- end of Contents area -->
			</section>
		</article>




		<%--include bottomFooter.jsp --%>
		<jsp:include page="/include/bottomFooter.jsp" />
	</div>

	<%--include javascripts.jsp --%>
	<jsp:include page="/include/javascripts.jsp" />
</body>
</html>