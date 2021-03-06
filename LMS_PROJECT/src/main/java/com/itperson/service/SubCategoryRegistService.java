package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.SubCategoryDao;
import com.itperson.dto.SubCategory;

public class SubCategoryRegistService implements Service {

	private SqlSession sqlSession;
	public SubCategoryRegistService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		SubCategory vo = new SubCategory();
		vo.setCode(request.getParameter("code"));
		vo.setName(request.getParameter("name"));
		vo.setCaCode(request.getParameter("cacode"));
		
		System.out.println(vo);
		SubCategoryDao dao = sqlSession.getMapper(SubCategoryDao.class);
		dao.registSubCategory(vo);
		
		model.addAttribute("category", vo.getCaCode());
		model.addAttribute("course", request.getParameter("cocode"));
		model.addAttribute("subcategory", vo.getCode());

	}

}
