<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav
	class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top "
	id="navigation-example">
	<div class="container-fluid">
		<div class="navbar-wrapper">
			<a class="navbar-brand" href="javascript:void(0)">${page_name}</a>
		</div>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			aria-controls="navigation-index" aria-expanded="false"
			aria-label="Toggle navigation" data-target="#navigation-example">
			<span class="sr-only">Toggle navigation</span> <span
				class="navbar-toggler-icon icon-bar"></span> <span
				class="navbar-toggler-icon icon-bar"></span> <span
				class="navbar-toggler-icon icon-bar"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a class="nav-link" href="javscript:void(0)" id="navbarDropdownMenuLink"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="material-icons">person</i>
						<p class="d-lg-none d-md-block">사용자</p>
					</a>
					<c:if test="${empty id}">
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="/member/loginform">로그인</a> 
							<a class="dropdown-item" href="/member/joinform">회원가입</a>
						</div>
					</c:if>
					<c:if test="${not empty id}">
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="/member/logout">로그아웃</a>
						</div>
					</c:if>
				</li>
				<li class="nav-item"><a class="nav-link" href="javascript:void(0)">
					<i class="material-icons">notifications</i>
					<span class="notification">5</span>
					<p class="d-lg-none d-md-block">알림</p>
				</a></li>
			</ul>
		</div>
	</div>
</nav>
