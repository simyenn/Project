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
					<h2>Eating Trip <strong> -Cheonan</strong></h2>
					<p>천안에서의 기록</p>
				</header>

					<!-- One -->
						<section class="wrapper style4 container">

							<div class="row gtr-150">
								<div class="col-8 col-12-narrower">

									<!-- Content -->
										<div class="content">
											<section>
												<a class="image featured"><img src="/resources/images/0815.jpg" /></a>
												<header>
													<h3>유관순열사 유적지</h3>
													<p>광복절날 가서 더욱 더 뜻 깊은 천안 여행이었다.
													   <br>많은 애국자분들이 있으셨기에 지금 우리가 잘 살고있다.
													   <br>앞으로도 항상 감사함을 느끼며 살아야겠다고 기도하고 향을 피웠다.
													</p>
												</header>
												
												<p></p>
											</section>
											<section>
												<a class="image featured"><img src="/resources/images/fishrice.jpg" /></a>
												<header>
													<h3>호수 매운탕</h3>
												</header>
												<p>천안 어죽 맛집
													<br>5분정도 웨이팅 하다가 들어갔는데 음식은 금방 나왔다
													<br>어죽에는 소면과 죽이 들어있었고 매운탕에 밥 비벼먹는 느낌(?)이었다
													<br>처음 먹어봤는데 집에와서도 생각나는 맛이었다
													<br>민물새우전은 시킬 때 새우가 저렇게 작은 줄 몰랐는데,,
													<br>다리까지 다 붙어있는 새우로 뒤덮여있어서 좀 징그러웠으나
													<br>맛은 훌륭했다 
												</p>
											</section>
											<section>
												<a class="image featured"><img src="/resources/images/toujours.jpg" /></a>
												<header>
													<h3>뚜쥬르 과자점</h3>
												</header>
												<p>장작불에 빵 굽는걸로 유명한 뚜쥬르 과자점
													<br>후기가 너무 좋아서 기대를 많이 하고 갔는데
													만쥬는 생각보다 퍽퍽해서 한 입먹고 
													<br>안 먹었고 제일 맛있던 건 생크림몽블랑 ! 저 식빵들이 귀여워서 찍어봤다
												</p>
											</section>

										</div>

								</div>
								<div class="col-4 col-12-narrower">

									<!-- Sidebar -->
										<div class="sidebar">
											<section>

												<header>
												<a class="image featured"><img src="/resources/images/0815_2.jpg" /></a>	
													<h3>유관순열사 초상화</h3>
												</header>
												<p>보고만 있어도 가슴이 웅장해졌다.
													<br>너무 감사함을 느낀 날.
												</p>
												
											</section>

											<section>
												
												<header>
													<a class="image featured"><img src="/resources/images/toujours2.jpg" /></a>
													<h3>뚜쥬르 카페</h3>
												</header>
												<p>
													만쥬와 생크림 몽블랑 단면
													<br>먹기만 좋아하지 사진은 잘 못찍는다
													<br>저 뒤에 보이는 피자도 시킨건데
													<br>마치 다른 사람들이 시킨 것 처럼
													<br>동떨어져있다 ^^
												</p>
												
											</section>
											<section>
												
												<header>
													<a class="image featured"><img src="/resources/images/bananamilk.jpg" /></a>
													<h3>바나나 우유</h3>
												</header>
												<p>
													저 쪼깐한 바나나 주제에 4300원씩이나 한다..
													<br>먹으니까 맛있긴 맛있더라
													<br>이것도 너무 귀여워서 찍어봤다
													<br>저러고 1분만에 사라져버린
													<br>나의 귀염뽀짝 바나나우유
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
										<li><a href="/Trip/jeju.jsp" class="button small">Jeju</a></li>
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