package com.quocar.chat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quocar.chat.dao.ChatDao;
import com.quocar.chat.service.ChatService;
import com.quocar.chat.vo.AnswersVo;

@Service("chatService")
public class ChatServiceImpl implements ChatService {
	@Autowired
	private  ChatDao  chatDao;
	
	@Override
	public String getAnswer(AnswersVo vo) {
		String answer_text  = chatDao.getAnswer(vo);
		return answer_text;
	}

}
