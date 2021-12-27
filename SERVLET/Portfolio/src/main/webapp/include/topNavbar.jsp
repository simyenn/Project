<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<!-- Header -->
<header id="header">
	<h1 id="logo">
		<a href="/index.jsp">Yeeun <span>'s information</span></a>
	</h1>
	<nav id="nav">
		<ul>
			<li class="current"><a href="/index.jsp">Home</a></li>
			<li class="submenu"><a href="#">index</a>
				<ul>
					<li><a href="#"><span class="material-icons">reddit</span></a></li>
					<li><a href="/hobby.jsp">Hobby</a></li>

					<li class="submenu"><a href="#">Trip</a>
						<ul>

							<li><a href="/Trip/busan.jsp">Busan</a></li>
							<li><a href="/Trip/seoul.jsp">Seoul</a></li>
							<li><a href="/Trip/jeju.jsp">Jeju</a></li>
							<li><a href="/Trip/cheonan.jsp">Cheonan</a></li>

						</ul></li>
					<li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>">Board</a></li>
				</ul></li>
			
			<c:choose>
				<c:when test="${empty sessionId}">
					<li><a href="<c:url value="/member/login.jsp"/>">login</a></li>
					<li><a class="button primary" href="<c:url value="/member/join.jsp"/>">Sign
							Up</a></li>
				</c:when>
				<c:otherwise>
					<li class="submenu"><a href="#">MyPage</a>
						<ul>

							<li><a href="<c:url value="/member/updateMember.jsp"/>">modify</a></li>
							<li><a href="<c:url value="/member/logout.jsp"/>">logout</a></li>

						</ul></li>
				</c:otherwise>
			</c:choose>
		</ul>
		</ul>
	</nav>
</header>
