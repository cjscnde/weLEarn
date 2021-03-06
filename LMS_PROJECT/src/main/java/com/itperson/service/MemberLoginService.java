package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MemberDao;

public class MemberLoginService implements Service{
	private SqlSession sqlSession;
	
	public MemberLoginService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		String result = dao.memberLogin(id, pw);

		if(id.equals(result)) {
			model.addAttribute("id", id);
		}
	}
}
