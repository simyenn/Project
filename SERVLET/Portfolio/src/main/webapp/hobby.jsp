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
						<span class="material-icons">filter_drama</span>
						<h2>hobby <strong>-Baking</strong></h2>
						<p>빵 구울 때 냄새가 얼마나 좋게요 ~</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<div class="row gtr-150">
								<div class="col-4 col-12-narrower">

									<!-- Sidebar -->
										<div class="sidebar">
											<section>
												<header>
													<h3>Tarte</h3>
												</header>
												<img src="/resources/images/tarte.jpg" width="100%" height="100%" />
												<p>야심차게 준비한 딸기 타르트
													<br/>아몬드크림과 커스타드 크림 + 상큼한 딸기의 조합은
													<br/>사랑입니다...🧡
												</p>
												
											</section>
											<section>
												<header>
													<h3>Basque Cheesecake</h3>
												</header>
												<img src="/resources/images/cheesecake2.jpg" width="100%" height="100%" />
												<p>바스크 치즈케이크 단면
													<br/>완전 크리미 + 꾸덕 
													<br/>아메리카노랑 먹으면 여기가 
													<br/>천국
												</p>
												
											</section>
											<section>
												<img src="/resources/images/cake.jpg" width="100%" height="100%" />
												<header>
													<h3>Victoria cake</h3>
												</header>
												<p>빅토리아 케이크
													<br/>빵만 뜯어먹어도 진짜 맛있는 꾸덕한 케이크 
													<br/>딸기잼이나 생크림을 샌드해서 먹으면
													<br/>JMTGR,,,,,
												</p>
											</section>
										</div>

								</div>
								<div class="col-8 col-12-narrower imp-narrower">

									<!-- Content -->
										<div class="content">
											<section>
												<img src="/resources/images/biscotti.jpg" width="100%" height="100%" />
												<header>
													<h3>ALMOND BISCOTTI</h3>
												</header>
												<p>이름은 생소하지만 어딘가에서 많이 본 비주얼인 구움과자
													<br/>아몬드가 들어가서 정말 고소하고 바삭한 핑거푸드
													<br/>세 네번 굽고 뒤집어야해서 좀 귀찮긴 하지만 맛있으면 무죄 ㅎㅎ
													<br/>이것도 아메리카노랑 먹으면 30개까지는 들어갈 듯
												</p>

											</section>
										</div>
										<div class="content">
											<section>
												<img src="/resources/images/present.jpg" width="100%" height="100%" />
												<header>
													<h3>tarte, cookie, scorn
													</h3>
												</header>
												<p>한창 베이킹에 엄청 빠졌을 때 하루종일 디저트 굽기만 했었다
													<br/>위 사진은 그 결과물들 ㅎㅎ 예쁘고 맛있어서 만족했다
													<br/>선물 받은 소중한 사람도 그 자리에서 리액션 대박이었어서 뿌듯 😎
												</p>

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