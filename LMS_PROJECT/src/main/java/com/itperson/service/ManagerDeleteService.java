package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MemberDao;

public class ManagerDeleteService implements Service {
	private SqlSession sqlSession;
	public ManagerDeleteService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		dao.deleteManager(request.getParameter("id"));
	}
}
