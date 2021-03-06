package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MemberDao;
import com.itperson.dto.Member;


public class MemberJoinService implements Service{
	
	private SqlSession sqlSession;
	
	public MemberJoinService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		Member vo = new Member();
		vo.setId(request.getParameter("id"));
		vo.setEmail(request.getParameter("email"));
		vo.setPassword(request.getParameter("password"));
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		dao.memberJoin(vo);
	}
}
