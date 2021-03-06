package com.itperson.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.FieldDao;
import com.itperson.dto.CategoryInfo;
import com.itperson.dto.CourseInfo;
import com.itperson.dto.Field;
import com.itperson.dto.SubCategoryInfo;

public class CoursesInfoService implements Service {
	private SqlSession sqlSession;
	
	public CoursesInfoService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		FieldDao dao = sqlSession.getMapper(FieldDao.class);
		ArrayList<CourseInfo> courseArr =  new ArrayList();
		for( Field course : dao.courseList()) {
			CourseInfo cour = new CourseInfo();
			cour.setCourse(course);
			for (Field category : dao.partOfcategoryList(course.getCode())){
				CategoryInfo cat = new CategoryInfo();
				cat.setCourse(category);
				for(Field subcategory : dao.partOfsubCategoryListByCategory(category.getCode())) {
					SubCategoryInfo sub = new SubCategoryInfo();
					sub.setCourse(subcategory);
					sub.setcountCon(dao.getContentsCount(subcategory.getCode()));
					cat.getSubCategoryArr().add(sub);
				}
				cour.getCategoryArr().add(cat);
			}
			courseArr.add(cour);
		}
		
		model.addAttribute("courseArr", courseArr);
	}

}
