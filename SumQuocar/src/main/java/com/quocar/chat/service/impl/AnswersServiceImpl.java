package com.quocar.chat.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.quocar.chat.dao.AnswersDao;
import com.quocar.chat.service.AnswersService;
import com.quocar.chat.vo.AnswersVo;

@Service("answersService")
public class AnswersServiceImpl implements AnswersService {

	@Autowired
	private AnswersDao  answersDao;

	@Override
	public List<AnswersVo> getAnswersList(AnswersVo vo) {
		List<AnswersVo>  answersList   = answersDao.getAnswersList(vo);
		return answersList;
	}



}
