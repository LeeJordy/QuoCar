package com.quocar.chat.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.chat.dao.AnswersDao;
import com.quocar.chat.vo.AnswersVo;

@Repository("answersDao")
public class AnswersDaoImpl implements AnswersDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AnswersVo> getAnswersList(AnswersVo vo) {
		List<AnswersVo>  answersList  = sqlSession.selectList("Answers.AnswersList", vo);
		return answersList;
	}

}
