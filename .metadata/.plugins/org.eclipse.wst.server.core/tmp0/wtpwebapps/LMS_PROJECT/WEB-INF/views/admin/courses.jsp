<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<%@ include file="../include/head.jsp" %>
</head>
<body class="dark-edition">
 <div class="wrapper ">
    <%@ include file="../include/m_sidebar.jsp" %>
    <div class="main-panel">
      <%@ include file="../include/m_topbar.jsp" %>
      <div class="content">
        <div class="row container-fluid">
          <!-- your content here -->
          	<form class="col-md-12" action="/admin/regist_course" method="post">
          		<div class="form-group">
               		<label class="bmd-label-floating">과정코드 / ex) COS01234</label>
                   	<input type="text" class="form-control" name="code">
                </div>
                <div class="form-group">
                   	<label class="bmd-label-floating">과정명 / ex) 정보처리기사 실기</label>
                   	<input type="text" class="form-control" name="name">
                </div>
          		<button type="submit" class="btn btn-primary pull-right">등록</button>
          	</form>
        </div>
        <div class="row">
        	<div class="col-md-12">
            	<div class="card">
                	<div class="card-header card-header-primary">
                  		<h4 class="card-title ">과정 전체 보기</h4>
                  		<p class="card-category"> (현재 개설된 과정 목록)</p>
                	</div>
	                <div class="card-body">
	                 	<div class="table-responsive">
	                    	<table class="table">
	                      		<thead class=" text-primary">
			                    	<th>과정코드</th>
			                        <th>과정명</th>
			                        <th>과정명 변경</th>
			                        <th>삭제</th>
			                     </thead>
	                      		<tbody>
	                      			<c:forEach items="${courses}" var="course">
		                        	<tr>
		                          		<td>${course.code}</td>
		                          		<td>${course.name}</td>
		                          		<td>
		                          			<div class="row">
		                          			<input type="hidden" name="code">
		                          			<input type="text" class="form-control" name="name">
		                          				<div class="d-flex align-items-center">
		                          					<a href="javascript:;" class="badge badge-primary">UPDATE</a>
		                          				</div>
		                          			</div>

		                          		</td>
		                          		<td>
		                          			<a href="javascript:;" class="badge badge-primary">DELETE</a>
		                          		</td>
		                        	</tr>
		                        	</c:forEach>
		                        </tbody>
	                   		</table>
	                  	</div>
	                </div>
              	</div>
            </div>
      	</div>
      <%@ include file="../include/m_footer.jsp" %>
    </div>
  </div>
<%@ include file="../include/corejs.jsp" %>
</div>
</body>
</html>
