package com.quocar.chat.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.chat.dao.ChatDao;
import com.quocar.chat.vo.AnswersVo;

@Repository("chatDao")
public class ChatDaoImpl implements ChatDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public String getAnswer(AnswersVo vo) {
	
		String answer_text  = sqlSession.selectOne("Chat.getAnswer", vo); 	
		return answer_text;
	}

}
