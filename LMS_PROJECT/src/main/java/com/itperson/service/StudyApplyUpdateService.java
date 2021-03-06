package com.itperson.service;


import java.sql.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MyCourseDao;
import com.itperson.dto.MyCourse;

public class StudyApplyUpdateService implements Service{

	private SqlSession sqlSession;
	public StudyApplyUpdateService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		MyCourseDao dao = sqlSession.getMapper(MyCourseDao.class);
		
		MyCourse vo = new MyCourse();
		vo.setCoCode(request.getParameter("course"));
		vo.setMemId((String) request.getSession().getAttribute("id"));
		vo.setPriority((Integer.parseInt(request.getParameter("priority"))));
		vo.setDaysPerWeeks(Integer.parseInt(request.getParameter("days_per_week")));
		vo.setExpectedEndDate(Date.valueOf(request.getParameter("expected_end_date")));
		vo.setPlan(1);
		
		dao.updateMyCourse(vo);
		
//		try {
			
			
//			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//			java.util.Date expectedEndDate = format.parse(request.getParameter("expected_end_date"));
//			
//			java.util.Date today = new java.util.Date();
//			long allDaysDetail = expectedEndDate.getTime() - today.getTime();
//			int allDays = ((int) allDaysDetail / ( 24*60*60*1000)) + 2; 
//			
//			vo.setDays((int) ((allDays/7.0) * daysPerWeek));
//			vo.setExpectedEndDate( new java.sql.Date(expectedEndDate.getTime()));
			
			
			
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}

		System.out.println(vo);
				
	
	}

}
