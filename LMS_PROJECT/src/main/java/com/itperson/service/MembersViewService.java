package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MemberDao;

public class MembersViewService implements Service {
	private SqlSession sqlSession;
	public MembersViewService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		model.addAttribute("userList", dao.searchMembers());
		model.addAttribute("managerList", dao.searchManagers());
	}

}
