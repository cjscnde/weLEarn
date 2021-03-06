<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<%@ include file="../include/head.jsp" %>
</head>
<body class="dark-edition">
 <div class="wrapper">
  <div>
    <div class="container-fluid">
    	<br><br><br>
    	<div class="row align-self-center d-flex  justify-content-md-center">
            <div class="col-md-6">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">접속 오류 !! </h4>
                  <p class="card-category">Enter error (관리자에게 문의 하세요.)</p>
                </div>
                <div class="card-body table-responsive">
                   <p>접근 권한이 없는 페이지에 접속요청을 하셨습니다.</p>
                </div>
                <div class="container-fluid d-flex justify-content-end">
                	<div class="row col-md-2">
                   <a href="/home"><p class="text-primary">홈으로 이동 <p></a>
                	</div>
                </div>
              </div>
            </div>
       </div>
     </div>
 </div>
<%@ include file="../include/corejs.jsp" %>
</body>
</html>
