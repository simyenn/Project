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
					<h2>Eating Trip <strong> -Busan</strong></h2>
					<p>부산에서의 기록 
						<br>
						<br>
						(전부 술안주라는 생각이 든다면 기분탓일 것이다ㅎㅎ)</p>
				</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<div class="row gtr-150">
								<div class="col-8 col-12-narrower">

									<!-- Content -->
										<div class="content">
											<section>
												<a class="image featured"><img src="/resources/images/clam.jpg" /></a>
												<header>
													<h3>청사포 끝집</h3>
												</header>
												<p>
													부산 바다 바로 앞에서 먹는 조개구이 맛집
													<br>경치도 너무 좋고 음식도 맛있어서 분위기에 취하는 곳이다
													<br>진심 바람 세기가 선풍기 강풍보다 세서 자리 선정 잘 한 사람이 위너
													<br>(오고 가는 길에 택시 아저씨랑 친해질 수 있음)
												</p>
											</section>
											<section>
												<a class="image featured"><img src="/resources/images/seafood.jpg" /></a>
												<header>
													<h3>대연동 어부횟집</h3>
												</header>
												<p>
													가격이 좀 비싼 편인데 스끼다시가 잘나오는 편
													<br>배 터져 죽기 전까지 뭣이 계속 나온다
													<br>회도 쫀득쫀딕하고 싱싱하다 입 안이 마치 바다가 된 기분이다
													<br>(가족한테 가자고 하면 공짜로 먹을 수 있음)
												</p>
											</section>
										</div>
										
								</div>
								<div class="col-4 col-12-narrower">

									<!-- Sidebar -->
										<div class="sidebar">
											<section>
												<header>
													<img src="/resources/images/sambari.jpg" width="100%" height="100%"/>
													<h3>광안리 삼바리</h3>
												</header>
												<p>산낙지구이가 유명한 곳 !! 
													<br>기본으로 해쉬브라운과 치즈, 특제 소스, 비빔국수 등등 나오는데 다 맛있다 👏
													<br>이 외에도 조개구이, 조개찜 등 
													<br>다양한 메뉴가 많았다
													<br>(다 뿌시러 갈 예정)
												</p>
												
											</section>

											<section>
												<a class="image featured"><img src="/resources/images/lamb.jpg" /></a>
												<header>
													<h3>경성대 웨이양</h3>
												</header>
												<p>양 다리를 통채로 끼워서 제공해준다
												<br>신선한 충격 + 신선한 고기맛 = ❤
												<br>개인적으로 향신료를 별로 안 좋아해서 더 다양한 소스가 있었으면 좋겠다는 생각이 들었다
												</p>
												
											</section>
											<section>
												<a class="image featured"><img src="/resources/images/skewers.jpg" /></a>
												<header>
													<h3>청사포 모리구이</h3>
												</header>
												<p>해산물 + 고기 조합의 꼬치
												<br>숯불화로에 구워먹는데 진짜 맛있다 ,,,
												<br>분위기도 좋고 음식도 맛있어서
												<br>재방문 의사 매우 있음 !!!
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
												<li><a href="/Trip/seoul.jsp" class="button small">Seoul</a></li>
											</ul>
										
									</section>

								</div>
								<div class="col-4 col-12-narrower">

									<section>

										<ul class="buttons">
											<li><a href="/Trip/jeju.jsp" class="button small">Jeju</a></li>
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