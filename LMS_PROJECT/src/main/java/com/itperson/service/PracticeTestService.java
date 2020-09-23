package com.itperson.service;

import java.util.ArrayList;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.QuestionDao;
import com.itperson.dao.TestDao;
import com.itperson.dto.MQuestion;
import com.itperson.dto.Question;
import com.itperson.dto.SQuestion;
import com.itperson.dto.Test;

public class PracticeTestService implements Service {
	private SqlSession sqlSession;
	public PracticeTestService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		TestDao testDao = sqlSession.getMapper(TestDao.class);
		
		String coCode = request.getParameter("coCode");
		Test test = testDao.searchTest(coCode);

		model.addAttribute("test", test);
		
		// 문제 List setting
		model.addAttribute("questions", this.questionSetting(test)) ;
		//System.out.println(this.questionSetting(test));
		
	}
	
	ArrayList<Question> questionSetting(Test test){
		ArrayList<Question> ques;
		QuestionDao questionDao = sqlSession.getMapper(QuestionDao.class);
		//course와 문제유형에 해당하는 문제 리스트 조회 
		if(test.getTestType() == 1) {
			//개관식
		    ques = questionDao.searchMQuestionListByCourse(test.getCoCode());
		} else if(test.getTestType()==2) {
			//주관식	
			ques = questionDao.searchSQuestionListByCourse(test.getCoCode());
		}else {
			//혼합
			ques = questionDao.searchQuestionListByCourse(test.getCoCode());
		}
		ques = this.answerSetting(ques, questionDao, test.getQuestionCount());
		return ques;
	}
	
	ArrayList<Question> answerSetting(ArrayList<Question> ques, QuestionDao dao, int queCnt){
		
		ArrayList<Question> result = new ArrayList<Question>();
		
		// 질문 중 3개만 random으로 선택 반환
		while(result.size() < queCnt && ques.size() != 0) {
			Random random = new Random();
			int index = Math.abs(random.nextInt() % ques.size());
			Question item = ques.remove(index);
			
			if(item.getType().equals("M")) {
				MQuestion mq = new MQuestion(item);
				mq.setAnswer(dao.searchMAnswer(item.getCode()));
				result.add(mq);
			}else {
				SQuestion sq = new SQuestion(item);
				sq.setAnswer(dao.searchSAnswer(item.getCode()));
				result.add(sq);
			}
		}	
		return result;
	}

}
