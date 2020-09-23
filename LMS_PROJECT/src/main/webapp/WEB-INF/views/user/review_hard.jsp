<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>weLEarn - 스터디룸</title>
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
							<li><a href="#intro">복습하기</a></li>
							<li><a href="#one">문제풀기</a></li>
							<li><a href="#" onclick="formExit();">Exit</a></li>
						</ul>
					</nav>
				</div>
			</section>
		<!-- Wrapper -->
			<div id="wrapper">
					<br>
					<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${id}님 익히는 중...</h4>
				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up">
						<div class="inner">
							<h1>${content.title}</h1>
							${content.contents}
							<ul class="actions">
								<li><a href="#one" class="button scrolly">문제풀러가기</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 fade-up spotlights">
						<div class="inner">
						<h2> 문제 </h2>
						<hr>
						<c:set var="quesNum" value="1"/>
						<c:forEach items="${questions}" var="question">
						<section>
							<div class="content">
									<p>
										${quesNum}.&nbsp;&nbsp; ${question.question}
										<c:if test="${ 'M' eq question.type }">
											<c:set var="ansNum" value="1"/>
											<c:forEach items="${question.answerList}" var="answer">
											<div class="col-4 col-12-small">
												<input class="cls${quesNum}" type="radio" onclick="passValue(${ansNum},${quesNum})"  id="ques${quesNum}${ansNum}" name="ques${quesNum}" value="${ansNum}">
												<label for="ques${quesNum}${ansNum}">${answer.answer}</label>
												<c:if test="${'O' eq answer.correct }">
													<input type="hidden" id="ques${quesNum}" name="ques${quesNum}" value="">
													<input type="hidden" id="ans${quesNum}" name="ans${quesNum}" value="${ansNum}">
												</c:if>
											</div>
											<c:set var="ansNum" value="${ansNum+1}"/>
											</c:forEach>
										</c:if>
										<c:if test="${'S' eq question.type }">
										<div class="col-12 col-12-xsmall">
											<input class="cls${quesNum}" type="text" name="ques${quesNum}" id="ques${quesNum}" placeholder="정답 입력" />
											<input type="hidden" name="ans${quesNum}" id="ans${quesNum}" value="${question.answer}">
										</div>
										</c:if>
									</p>
									<br>
									<ul class="actions">
										<li><button onclick="checkAnswer(${quesNum})" id="btn${quesNum}" class="button primary">정답확인</button></li>
									</ul>
							</div>
						</section>
						<hr>
						<c:set var="quesNum" value="${quesNum+1}"/>
						</c:forEach>
					<form id="resultForm">
						<input type="hidden" name="code" value="${content.code}">
						<c:forEach var="i" begin="1" end="${fn:length(questions)}">
							<input type="hidden" id="submit${i}" name="correct" value="X"/>
						</c:forEach>														
					</form>
				</div>
			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li> weLEarn </li>
						<li>&copy;잇플 </li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="/resources/assets_core/js/jquery.min.js"></script>
			<script src="/resources/assets_core/js/jquery.scrollex.min.js"></script>
			<script src="/resources/assets_core/js/jquery.scrolly.min.js"></script>
			<script src="/resources/assets_core/js/browser.min.js"></script>
			<script src="/resources/assets_core/js/breakpoints.min.js"></script>
			<script src="/resources/assets_core/js/util.js"></script>
			<script src="/resources/assets_core/js/main.js"></script>


<script type="text/javascript">
	 function checkAnswer(num) {
		let quesStr = "ques"+num;
		let ansStr = "ans"+num;
		let submitStr = "submit"+num;
		let btnStr = "btn"+num;
		let clsStr = ".cls"+num;
		let ques = document.getElementById(quesStr).value;
		let ans = document.getElementById(ansStr).value;
		if(ques == ans){
			let submit = document.getElementById(submitStr);
			let btn = document.getElementById(btnStr);
			let cls = document.querySelectorAll(clsStr);
			submit.value='O';
			btn.innerText='정답!!';
			btn.classList.remove("primary");
			btn.setAttribute('disabled', 'disabled');
			for( i=0 ; i< cls.length ; i++ ){
				cls[i].setAttribute('disabled', 'disabled');
			}
		}else{		
	   		alert("땡!");
		}
	 }
	 
	 function passValue(val, num) {
		 let str = "ques"+num;
		 let input = document.getElementById(str);
		 input.value = val;
	 }
	 
	 function formExit(){
		 document.getElementById('resultForm').action="/user/review/close";
		 document.getElementById('resultForm').submit();
	 } 
</script>


	</body>
</html>
