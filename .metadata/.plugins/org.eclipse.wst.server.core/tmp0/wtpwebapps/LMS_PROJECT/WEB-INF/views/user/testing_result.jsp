<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>weLEarn - 결과확인 </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/resources/assets_core/css/main.css" />
		<noscript><link rel="stylesheet" href="/resources/assets_core/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li>
								<form action="/user/testing/start" method="Post">
									<input type="hidden" name="coCode" value="${coCode}">
									<button type="submit"> 재시험 </button>
								</form>
							</li>
							<li><a onclick="formExit()"> 결과 기록 후, Exit</a></li>
							<li><a href="/user/testing/close"> 기록 없이, Exit </a></li>
						</ul>
					</nav>
				</div>
			</section>			
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Intro -->
				<section id="intro" class="wrapper style1 fullscreen fade-up">
					
					<div class="inner">
						<h2>'${coName}' 모의고사 결과, </h2>
						<h1>${score}&nbsp;&nbsp;점</h1>
						<h1>수고하셨습니다.</h1><br>	
						총 ${questions}문제 중  ${correct}문제 맞췄습니다.&nbsp; <br><br>
					</div>
				</section>
				<form id="resultForm" method="POST" action="/user/testing/record">
					<input type="hidden" name="coCode" value="${coCode}">
					<input type="hidden" name="coName" value="${coName}">
					<input type="hidden" name="score" value="${score}">
					<input type="hidden" name="correct" value="${correct}">
					<input type="hidden" name="questions" value="${questions}">												
				</form>
			</div>
	</body>
	<!-- Scripts -->
		<script src="/resources/assets_core/js/jquery.min.js"></script>
		<script src="/resources/assets_core/js/jquery.scrollex.min.js"></script>
		<script src="/resources/assets_core/js/jquery.scrolly.min.js"></script>
		<script src="/resources/assets_core/js/browser.min.js"></script>
		<script src="/resources/assets_core/js/breakpoints.min.js"></script>
		<script src="/resources/assets_core/js/util.js"></script>
		<script src="/resources/assets_core/js/main.js"></script>
	<script type="text/javascript">	 
	 function formExit(){
		 document.getElementById('resultForm').submit();
	 }
</script>
</html>