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
          <!-- your content here -->
                      <div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary">
                  <div class="form-row">
                    <div class="form-group col-md-10">
                  <h4>QnA Table</h4>
                    </div>
                    <div class="form-group col-md-2">
                  <form class="form-inline ml-auto">
                    </div>
                </div>
              </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-hover">
                      <thead class="">
                        <th>
                          번호
                        </th>
                        <th>
                          유형
                        </th>
                        <th>
                          제목
                        </th>
                        <th>
                          댓글
                        </th>
                        <th>
                          작성자
                        </th>
                        <th>
                          등록일
                        </th>
                        <th>
                          조회수
                        </th>
                      </thead>
                      <tbody>
                      <!-- 가짜 정보 시작점 -->
                      
                      <!--  가짜 정보 끝나는점 -->
                      <c:forEach items="${qnaquestions}" var="qnaquestion">
                        <tr>
                          <td>
                            ${qnaquestion.no}
                          </td>
                          <td>
                            ${qnaquestion.qna_type}
                          </td>
                          <td>
                          <a href="/user/qnatable_user">
                            ${qnaquestion.title}
                            </a>
                          </td>
                          <td>
                          <c:if test="${qnaquestion.comment_no == 0}" >
							<!-- 널일때 입력할곳 -->0
	                	  </c:if>
	                	  <c:if test="${qnaquestion.comment_no != 0}" >
	                	 	<span class="material-icons">
							question_answer
							</span>
	                	  </c:if>
                          </td>
                          <td>
                            ${qnaquestion.user_id}
                          </td>
                          <td>
                            <!-- ${qnaquestion.reg_date.year+1900} 이런식으로 세부 세팅 할것 나중에-->
                            ${qnaquestion.reg_date}
                          </td>
                          <td>
                            <center>
                            ${qnaquestion.count}
                            </center>
                          </td>
                        </c:forEach>
                      <tr>
                      	<td>
                      		2
                      	</td>
                      	<td>
                      		건의사항
                      	</td>
                      	<td>
                      		<a href="/user/qnatable_user">
                      		더 많은 학습이 추가 되었으면 좋겠습니다.
                      	</td>
                      	<td>
                      		<span class="material-icons">
							question_answer
							</span>
						</td>
						<td>
							cjscn
						</td>
						<td>
							2020-09-18
						</td>
						<td>
							1
						</td>
                      	<!--  -->
                      	<tr>
                      	<td>
                      		1
                      	</td>
                      	<td>
                      		시스템문의
                      	</td>
                      	<td>
                      		<a href="/user/qnatable_user1">
                      		복습하기에 빨간색,주황색,초록색은 무슨 의미 인가요?
                      	</td>
                      	<td>
							
						</td>
						<td>
							cjscn
						</td>
						<td>
							2020-09-18
						</td>
						<td>
							1
						</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
					<div class="row container-fluid d-flex justify-content-center">
						<c:forEach var="i" begin="1" end="${qnaquestionmaxpages}" step="1">
							<a href="/user/demands?page=${i}" 
								class="btn btn-primary btn-sm ${i==page?'btn-round':'btn-link'}">${i}</a>
						</c:forEach>
					</div>
                  <!-- href링크시 .jsp빼고 절대 해당 경로로 입력할것 -->
                  <button type="button" class="btn btn-primary" onClick="location.href='demands_question'">
                  	문의 등록</button>
                  </div>
                  </div>
                  </div>
            <!--  -->
            
        </div>
      </div>
      <%@ include file="../include/footer.jsp" %>
    </div>
  </div>
<%@ include file="../include/corejs.jsp" %>
</body>
</html>
