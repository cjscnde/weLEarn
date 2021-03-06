<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <div class="sidebar" data-color="purple" data-background-color="black" data-image="/resources/assets/img/sidebar-2.jpg">
      <div class="logo"><a href="/home" class="simple-text logo-normal">
        	  관리자 '${ id }'님
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item course-t">
            <a class="nav-link" href="/admin/courses">
              <i class="material-icons">dashboard</i>
              <p>과정 관리</p>
            </a>
          </li>
          <li class="nav-item cate-t">
            <a class="nav-link" href="/admin/categorys">
              <i class="material-icons">edit</i>
              <p>분류 관리</p>
            </a>
          </li>
          <li class="nav-item con-study-t">
            <a class="nav-link" href="/admin/contents">
              <i class="material-icons">rate_review</i>
              <p>학습모듈 관리</p>
            </a>
          </li>
          <li class="nav-item mana-user-t">
            <a class="nav-link" href="/admin/users">
              <i class="material-icons">person_pin</i>
              <p>사용자 관리</p>
            </a>
          </li>
          <li class="nav-item answer-t">
            <a class="nav-link" href="/admin/manage/answers">
              <i class="material-icons">support_agent</i>
              <p>관리자 답변</p>
            </a>
          </li>
        </ul>
      </div>
    </div>