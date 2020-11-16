<%@page import="java.util.ArrayList"%>
<%@page import="dao.Diary"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<jsp:useBean id="diaryDAO" class="dao.DiaryDAO" scope="request" />
	
<!DOCTYPE HTML>
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>한 줄 일기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<script>
	function checkContent() {
		var content = document.contentForm.content;
		if (content.value == "") {
			alert("일기를 작성해주세요");
			content.focus();
		} else {
			document.contentForm.submit();
		}
	}
</script>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<%@ include file="header.jsp"%>
		<%@ include file="menu.jsp"%>
		<%
			ArrayList<Diary> diaries = diaryDAO.getDiary();
		%>

		<!-- Main -->
		<div id="main" class="alt">

			<!-- One -->
			<section id="one">
				<div class="inner">
					<header class="major">
						<h1>한 줄 일기</h1>
					</header>
					<table border="1">
						<tr>
							<th>번호</th>
							<th>내용</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
						<%
							for (int i = 0; i < diaries.size(); i++) {
						%>
							<tr>
								<td><%=diaries.get(i).getId() %></td>
								<td><%=diaries.get(i).getContent() %></td>
								<td><%=diaries.get(i).getDate() %></td>
								<td><%=diaries.get(i).getContent() %></td>
							</tr>
						<%									
							}
						%>
					</table>
					
					<header class="major">
						<h2>작성하기</h2>
					</header>
					
					<form name="contentForm" action="process.jsp" method="post" style="display: flex;">
						<input type="text" name="content" style="margin-right: 30px;">
						<input type="button" value="작성" onclick="checkContent()">
					</form>
				</div>
			</section>
		</div>
		<%@ include file="footer.jsp"%>
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