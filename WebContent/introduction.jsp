<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>나의 소개</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<%@ include file="header.jsp" %>
				<%@ include file="menu.jsp" %>
				<%! String bucketName = "2016156039-1"; %>

				<!-- Banner -->
				<!-- Note: The "styleN" class below should match that of the header element. -->
					<section id="banner" class="style2">
						<div class="inner">
							<span class="image">
								<img src="https://<%=bucketName %>.s3.us-east-2.amazonaws.com/images/pic07.jpg" alt="" />
							</span>
							<header class="major">
								<h1>나의 소개</h1>
							</header>
							<div class="content">
								<h5>최성훈의 간단한 소개</h5>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h2>나의 이름</h2>
									</header>
									<p>제 이름은 최성훈입니다. 아주 멋진 이름이죠.<br><br>
										가르침을 높이 이루어내라는 뜻입니다.</p>
								</div>
							</section>

						<!-- Two -->
							<section id="two" class="spotlights">
								<section>
									<a href="##" class="image">
										<img src="https://<%=bucketName %>.s3.us-east-2.amazonaws.com/images/ansan.jpg" alt="" data-position="center center" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>나의 동네</h3>
											</header>
											<p>경기도 안산시에 살고 있습니다.<br><br>
                								고향이 안산이고 지금까지 쭉 안산에서 살아왔습니다.<br><br>
                								시흥과 가까워 버스를 타고 통학하며 학교를 다니고 있습니다.</p>
										</div>
									</div>
								</section>
								<section>
									<a href="##" class="image">
										<img src="https://<%=bucketName %>.s3.us-east-2.amazonaws.com/images/bike.jpg" alt="" data-position="top center" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>나의 취미</h3>
											</header>
											<p>제 취미는 자전거 타는 것입니다.<br><br>
								                시간 여유가 된다면 자전거를 타고 밖을 돌아다닙니다.<br><br>
                								기분전환과 운동 두 가지를 모두 얻을 수 있답니다 ㅎㅎ</p>
										</div>
									</div>
								</section>
								<section>
									<a href="##" class="image">
										<img src="https://<%=bucketName %>.s3.us-east-2.amazonaws.com/images/dangdang.jpg" alt="" data-position="25% 25%" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>나의 강아지</h3>
											</header>
											<p>저희 가족 막내입니다.<br><br>
                								이름은 순댕이. 나이는 7살이고 이름을 순댕이로 지었더니 정말 순한 성격을 가지고 있습니다.<br><br>
                								순댕이는 귀엽고 공놀이를 정말 좋아합니다.</p>
										</div>
									</div>
								</section>
							</section>
					</div>

				<%@ include file="footer.jsp" %>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>