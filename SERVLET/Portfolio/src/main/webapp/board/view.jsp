<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="mvc.model.BoardDTO"%>

<%
BoardDTO notice = (BoardDTO) request.getAttribute("board");
int num = ((Integer) request.getAttribute("num")).intValue();
int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
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
				<h2>
					Q&A <strong>-Board</strong>
				</h2>

			</header>
		</article>
		<!-- One -->
		<section class="wrapper style4 container">
			<!-- Contents area -->
			<div class="border border-info p-4 rounded">
				<h5>게시판 글 상세보기</h5>

				<hr class="featurette-divider">

				<form name="newUpdate"
					action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
					class="form-horizontal" method="post">
					<div class="form-group row">
						<label class="col-sm-2 control-label">성명</label>
						<div class="col-sm-3">
							<input name="name" class="form-control"
								value=" <%=notice.getName()%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 control-label">제목</label>
						<div class="col-sm-5">
							<input name="subject" class="form-control"
								value=" <%=notice.getSubject()%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 control-label">내용</label>
						<div class="col-sm-8" style="word-break: break-all;">
							<textarea name="content" class="form-control" cols="50" rows="5"> <%=notice.getContent()%></textarea>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<c:set var="userId" value="<%=notice.getId()%>" />
							<c:if test="${sessionId==userId}">
								<p>
									<a
										href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
										class="btn btn-danger"> 삭제</a> <input type="submit"
										class="btn btn-success" value="수정 ">
							</c:if>
							<a href="./BoardListAction.do?pageNum=<%=nowpage%>"
								class="btn btn-primary"> 목록</a>
						</div>
					</div>
				</form>
				<hr>
			</div>
			<!-- end of Contents area -->


		</section>


		<%--include bottomFooter.jsp --%>
		<jsp:include page="/include/bottomFooter.jsp" />
	</div>

	<%--include javascripts.jsp --%>
	<jsp:include page="/include/javascripts.jsp" />

</body>
</html>