package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MyCourseDao;

public class StudyApplyService implements Service {
	private SqlSession sqlSession;
	
	public StudyApplyService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		MyCourseDao dao = sqlSession.getMapper(MyCourseDao.class);
		
		String coCode = request.getParameter("course");
		String memId = (String) request.getSession().getAttribute("id");
		
		dao.registMyCourse(coCode, memId);
	}
}
