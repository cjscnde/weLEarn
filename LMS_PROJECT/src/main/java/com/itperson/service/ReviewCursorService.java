package com.itperson.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MyCourseDao;
import com.itperson.dao.QuestionDao;
import com.itperson.dao.StudyContentsDao;
import com.itperson.dao.ViewStudyLogCalculationDao;
import com.itperson.dto.MQuestion;
import com.itperson.dto.Question;
import com.itperson.dto.SQuestion;
import com.itperson.dto.ViewStudyLogCalculation;

public class ReviewCursorService implements Service {
	private SqlSession sqlSession;
	
	public ReviewCursorService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String memId = (String) request.getSession().getAttribute("id");
		String stuCode = request.getParameter("stuCode");
		
		if(stuCode==null || stuCode.equals("")) {
			ViewStudyLogCalculationDao dao = sqlSession.getMapper(ViewStudyLogCalculationDao.class);
			ArrayList<ViewStudyLogCalculation> list = dao.searchList(memId);
			
			Collections.sort(list, new Comparator() {
				@Override
				public int compare(Object o1, Object o2) {
					ViewStudyLogCalculation val1 = (ViewStudyLogCalculation) o1;
					ViewStudyLogCalculation val2 = (ViewStudyLogCalculation) o2;
				    int result;
				    if(val1.getMemoryRate() < val2.getMemoryRate()) result = -1;
				    else if(val1.getMemoryRate() == val2.getMemoryRate()) result = 0;
				    else result = 1;				
					return result;
					} 
				});
			
			stuCode = list.get(0).getStuCode();
		}
		
		StudyContentsDao studyContentsDao = sqlSession.getMapper(StudyContentsDao.class);
		model.addAttribute("content", studyContentsDao.searchStudyContents(stuCode));
		
		QuestionDao questionDao = sqlSession.getMapper(QuestionDao.class);
		ArrayList<Question> questions = questionDao.searchQuestionList(stuCode);
		ArrayList<Question> questionsArr = this.questionSetting(questions, questionDao);
		
		model.addAttribute("questions", questionsArr);

	}
	
	ArrayList<Question> questionSetting(ArrayList<Question> ques, QuestionDao dao){
		
		ArrayList<Question> result = new ArrayList<Question>();
		
		// 질문 중 3개만 random으로 선택 반환
		while(result.size() < 3 && ques.size() != 0) {
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
