<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
						<h2>Eating Trip <strong> -Seoul</strong></h2>
						<p>서울에서의 기록</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<div class="row gtr-150">
								<div class="col-8 col-12-narrower">

									<!-- Content -->
										<div class="content">
											<section>
												<a class="image featured"><img src="/resources/images/eel.jpg"/></a>
												<header>
													<h3>강남장어 - 테헤란로 2길 36 1층</h3>
												</header>
												<p>
													강남역 3번출구에서 200m만 걸어가면 바로 나오는 강남역 맛집
													<br>가게 입구에 수족관이 있는데 장어들이 어찌나 싱싱한지 엄청 활발했다
													<br>기본 찬도 잘 나오고 무엇보다 장어가 너무 맛있었다,, ㅠㅠ
													<br>솔직히 부산에서 먹은 장어보다 훨배 맛있었음
													<br>아직 잘 알려지지 않아서 손님은 많이 없었지만 강남 들를 때마다 가고싶은 곳
												</p>
												
											</section>
											<section>
												<a class="image featured"><img src="/resources/images/knottedseoul.jpg"/></a>
												<header>
													<h3>노티드 도넛 청담점</h3>
												</header>
												<p>
													빵순이에게 노티드 도넛이란 죽기 전에 꼭 먹어봐야 하는 도너츠
													<br>평일날 가서 줄도 5분밖에 안 섰고 다양한 도너츠를 맛볼 수 있었다 !!!
													<br>진짜 진짜 진짜 맛있었다 ㅠㅠ 다시 돌아가고싶어 ..
													<br>개인적으로는 우유 생크림 크로와상이 제일 👍👍
												</p>
												
											</section>
										</div>

								</div>
								<div class="col-4 col-12-narrower">

									<!-- Sidebar -->
										<div class="sidebar">
											<section>
												<header>
													<img src="/resources/images/eel2.jpg" width="100%" height="100%">
													<h3>강남장어</h3>
												</header>
												<p>기본 찬이 정갈하게 잘 나와서 찍어봤다
													사장님도 친절하시니 
													<br>꼭 들러주시길 바람 👍
												</p>
												<footer>
													<ul class="buttons">
														<li><a href="https://map.naver.com/v5/search/
															%EA%B0%95%EB%82%A8%EC%9E%A5%EC%96%B4/place/1778923047?
															placePath=%3Fentry=pll
															%26from=nx%26fromNxList=true&c=14140406.0963410,4508449.3118572,15,0,0,0,dh" class="button small">
															위치 - [네이버 지도]</a></li>
													</ul>
												</footer>
											</section>

											<section>
												<a class="image featured"><img src="/resources/images/thedream.jpg" alt="" /></a>
												<header>
													<h3>더드림 강남점</h3>
												</header>
												<p>여기는 삼겹살 퀄리티가 남다른 곳이다
													<br>왕 돌판에 질 좋은 고기를 구워서 먹으니
													<br>진짜 미쳤다.. 안 가보신 분들 
													<br>꼭 가보시기를 ㅠㅠ
													<br>다만 갬성은 없다..
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