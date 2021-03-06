package com.itperson.service;



import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import com.itperson.dao.FieldDao;


public class CoursesViewService implements Service {

private SqlSession sqlSession;
	
	public CoursesViewService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void execute(Model model) {
		FieldDao fieldDao =  sqlSession.getMapper(FieldDao.class);

		model.addAttribute("courses",  fieldDao.courseList());

	}
}
