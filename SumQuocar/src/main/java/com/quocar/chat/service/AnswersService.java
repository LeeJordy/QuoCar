package com.quocar.chat.service;

import java.util.List;

import com.quocar.chat.vo.AnswersVo;

public interface AnswersService {

	List<AnswersVo> getAnswersList(AnswersVo vo);

}
