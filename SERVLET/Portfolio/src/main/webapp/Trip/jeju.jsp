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
					<h2>Eating Trip <strong> -Jeju</strong></h2>
					<p>제주에서의 기록</p>
				</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<div class="row gtr-150">
								<div class="col-8 col-12-narrower">

									<!-- Content -->
										<div class="content">
											<section>
												<a class="image featured"><img src="/resources/images/kalhotel.jpg" width="100%" height="100%" /></a>
												<header>
													<h3>아름다운 제주도의 하늘</h3>
												</header>
												<p></p>
											</section>

											<section>
												<a class="image featured"><img src="/resources/images/fish.jpg" width="100%" height="100%" /></a>
												<header>
													<h3>시장에서 뜬 회 + 한라산</h3>
												</header>
												<p>코로나 때문에 펜션에서 소소하게 회파티를 즐겼다.
													<br>일단 제주도에 왔다는 자체가 너무 좋아서 음식이 귀로 넘어가는지 코로 넘어가는지도 모르고
													계속 먹었던 것 같다. 딱새우회는 처음 먹어봤는데 넘나 내스타일 ,, 💕
													<br>지금도 격렬하게 맛 보고 싶다,,
													
												</p>
											</section>
											<section>
												<a class="image featured"><img src="/resources/images/hairtail.jpg" width="100%" height="100%" /></a>
												<header>
													<h3>서귀포 갈치조림</h3>
												</header>
												<p>와 여기 진짜 진짜 맛있다 술 마시러 갔다가 술 다시 반납하고 밥 한공기 더 시키는 곳
													<br>서귀포에 현지인 맛집인데 이름이 기억이 안난다 ㅠㅠ
													<br>가격도 괜찮고 갈치가 엄청 오동통하니 부들부들하고 사르르 녹고 다했다
													<br>나는 제주도 가면 여기부터 갈랭 ㅎㅎ
													
												</p>
											</section>
										</div>

								</div>
								<div class="col-4 col-12-narrower">

									<!-- Sidebar -->
										<div class="sidebar">
											<section>
												<header>										
													<img src="/resources/images/blackpig.jpg" width="100%" height="100%" />
												</header>
												<h3>흑돼지 구이</h3>
												<p>가족끼리 숯불 피워서 
													<br>시장에서 직접 산 흑돼지를 구워먹으니
													<br>분위기도 백점 맛도 백점 
													<br>잊지못할 맛이다</p>
												
											</section>

											<section>
												<a class="image featured"><img src="/resources/images/knottedjeju.jpg"/></a>
												<header>
													<h3>카페 노티드 제주</h3>
												</header>
												<p>빵순이는 제주도에 가서도 
													<br>노티드에 들렀다
													<br>여기는 얼음이 곰돌이 얼음이라
													<br>보는 눈을 즐겁게 해 주었다
													<br>도너츠도 역시 맛있었다 최고 ㅠㅠㅠ
													<br>하지만 사람이 너무 많아서 구매하기 힘들었다

												</p>
												
											</section>
											<section>
												<a class="image featured"><img src="/resources/images/jejusamdasu.jpg"/></a>
												<header>
													<h3>제주 약수터</h3>
												</header>
												<p>제주도 유명 수제맥주집인 제주 약수터
													<br>맥주 종류가 10개는 되는 것 같았다
													<br>안주로 bbq 플레이트를 시켰는데
													<br>저것도 진짜 맛있다,,
													<br>귀염뽀짝한 엽서도 선물로 주는 이곳은
													<br>정말 센스 넘치는 곳

												</p>
											</section>
										</div>

								</div>
							</div>
						</section>

					<!-- Two -->
					<section class="wrapper style1 container special">
						<div class="row">
							<div class="col-4 col-12-narrower">

								<section>

									<ul class="buttons">
										<li><a href="/Trip/busan.jsp" class="button small">Busan</a></li>
									</ul>
								
							</section>

							</div>
							<div class="col-4 col-12-narrower">

								<section>

									<ul class="buttons">
										<li><a href="/Trip/seoul.jsp" class="button small">Seoul</a></li>
									</ul>
								
							</section>

							</div>
							<div class="col-4 col-12-narrower">

								<section>

										<ul class="buttons">
											<li><a href="/Trip/cheonan.jsp" class="button small">Cheonan</a></li>
										</ul>
									
								</section>

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