package com.quocar.chat.dao;

import java.util.List;

import com.quocar.chat.vo.AnswersVo;

public interface AnswersDao {

	List<AnswersVo> getAnswersList(AnswersVo vo);


}
