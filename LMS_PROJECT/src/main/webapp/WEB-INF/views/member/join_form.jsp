<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<%@ include file="../include/head.jsp" %>
</head>
<body class="dark-edition">
 <div class="wrapper ">
    <%@ include file="../include/sidebar.jsp" %>
    <div class="main-panel">
      <%@ include file="../include/topbar.jsp" %>
      <div class="content">
        <div class="container-fluid">
            <div class="card">
            	<div class="card-header card-header-primary">
                 	<h4 class="card-title">Sign Up</h4>
              	</div>
                <div class="card-body">
                	<form action="/member/join" method="post">
                    	<div class="form-group">
                          	<div class="column">
	                          	<div class="col-xs-7">
	                          		<label class="bmd-label-floating">UserID</label>
	                          		<input type="text" class="form-control" name="id">
	                          	</div>
                          	</div>
                          	<div class="col-xs-5">
                          		<button type="button" class="btn btn-primary pull-right">아이디중복체크</button>
                       		</div>
                        </div>
                        <div class="form-group">
                          	<label class="bmd-label-floating">Email address</label>
                          	<input type="email" class="form-control" name="email">
                          	<button type="button" class="btn btn-primary pull-right" >이메일중복체크</button>
                        </div>
	                    <div class="form-group">
		                	<label class="bmd-label-floating">PassWord</label>
		                    <input type="password" class="form-control" name="password">
	                    </div>
	                    <div class="form-group">
	                      	<label class="bmd-label-floating">CheckPassWord</label>
	                      	<input type="password" class="form-control">
	                    </div>
	                    <div class="col-md-12">
		                    <button type="submit" class="btn btn-primary pull-right">회원가입</button>
		                    <button type="button" class="btn btn-primary pull-right" onclick="location.href='/member/loginform'">로그인</button>
	                  	</div>
                	</form>
                </div>

            </div>
        </div>
      </div>
      <%@ include file="../include/footer.jsp" %>
    </div>
  </div>
<%@ include file="../include/corejs.jsp" %>
</body>
</html>
