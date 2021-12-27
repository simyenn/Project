<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<%--include head.jsp --%>
  	<jsp:include page="/include/head.jsp" />
	</head>
	<body class="index is-preload">
		<div id="page-wrapper">

			<%--include topNavbar.jsp --%>
	<jsp:include page="/include/topNavbar.jsp" />
	
	 <!-- Banner -->
				<section id="banner">

					
					<div class="inner">

						<header>
							<h2>SimYeEun</h2>
						</header>
						<p>Welcome to my <strong>portfolio</strong>
						<br />
						</p>
						<footer>
							<ul class="buttons stacked">
								<li><a href="#main" class="button fit scrolly">prologue</a></li>
							</ul>
						</footer>

					</div>

				</section>

			

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="material-icons">filter_drama</span>
						<h2>my hobby<strong> -Baking</strong> </h2>
						<p>Additionally, I made a variety of bread besides cake.
						<br />
						<p/>
						Please enjoy it !!
						<ul class="buttons">
							<li><a href="/hobby.jsp" class="button" style="margin: 30px ">Baking</a></li>
						</ul>
					</header>

				</article>
					<!-- hobby -->
						<section class="wrapper style1 container special">
							<div class="row">
								<div class="col-4 col-12-narrower my-3 ">
									
									<section>
										<span class="icon solid featured fa-check"></span>
										<img src="/resources/images/cheesecake.jpg" width="90%" height="90%" >
										<header>
											<h3>Basque cheese cake</h3>
										</header>
										<p>바스크 치즈 케이크</p>
										<p>스모키한 향 + 속이 부드러운 치즈케이크</p>
									</section>

								</div>
								<div class="col-4 col-12-narrower my-3 ">

									<section>
										<span class="icon solid featured fa-check"></span>
										
										<img src="/resources/images/madlen.jpg" width="90%" height="90%" >
										<header>
											<h3>financier</h3>
										</header>
										<p>휘낭시에</p>
										<p>겉바속촉 달달한 구움과자</p>
									</section>

								</div>
								<div class="col-4 col-12-narrower my-3 ">

									<section>
										<span class="icon solid featured fa-check"></span>
										
										<img src="/resources/images/cookies2.jpg" width="90%" height="90%"  >
										<header>
											<h3>sabre cookie</h3>
										</header>
										<p>사브레 쿠키</p>
										<p>한 입 베어물면 바삭 ! 사브레 ! 소리가 나는 쿠키</p>
									</section>

								</div>
							</div>
						</section>

					<!-- Trip -->
						<section class="wrapper style3 container special">

							<header class="major">
								<h2>Eating Tour <strong>in Korea</strong></h2>
							</header>

							<div class="row ">
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="/resources/images/gwanganri.jpg" width="100%" height="100%" /></a>
										<header>
											<h3>Busan</h3>
										</header>
										<p>부산에 살고 있지만 질리지가 않네</p>
										<ul class="buttons"style="margin-top:-35px">
											<li><a href="/Trip/busan.jsp" class="button" style="margin: 10px">Busan</a></li>
										</ul>
									</section>

								</div>
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="/resources/images/seoulforest.jpg" width="100%" height="100%" /></a>
										<header>
											<h3>Seoul</h3>
										</header>
										<p>사람도 많고 맛집도 많고 ~</p>
										<ul class="buttons" style="margin-top:-35px">
											<li><a href="/Trip/seoul.jsp" class="button" style="margin: 10px">Seoul</a></li>
										</ul>
									</section>

								</div>
							</div>
							<div class="row">
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="/resources/images/jeju.jpg" width="100%" height="100%" ></a>
										<header>
											<h3>Jeju</h3>
										</header>
										<p>공항에서 내리자마자 맡는 제주 공기는
										<br/>도키도키</p>
										<ul class="buttons" style="margin-top:-35px">
											<li><a href="/Trip/jeju.jsp" class="button btn-small" style="margin: 10px">Jeju</a></li>
										</ul>
									</section>

								</div>
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="/resources/images/cheonan.jpg" width="100%" height="100%" ></a>
										<header>
											<h3>Cheonan</h3>
										</header>
										<p>빵지순례의 성지 </p>
										<ul class="buttons" style="margin-top:-35px">
											<li><a href="/Trip/cheonan.jsp" class="button" style="margin: 10px ">Cheonan</a></li>
										</ul>
									</section>

								</div>
							</div>

						</section>
			

		</div>
	<%--include bottomFooter.jsp --%>
	<jsp:include page="/include/bottomFooter.jsp" />



		<%--include javascripts.jsp --%>
    <jsp:include page="/include/javascripts.jsp" />


	</body>
</html>