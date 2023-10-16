package com.quocar.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.quocar.chat.service.AnswersService;
import com.quocar.chat.vo.AnswersVo;

@Controller
@RequestMapping("/Chat")
public class AnswersController {
	
	@Autowired
	private AnswersService  answersService;
	//답변 목록
	@RequestMapping("/List")
	public ModelAndView list(AnswersVo vo) {
		
	List<AnswersVo> answersList = answersService.getAnswersList(vo);
	
	int model_id    = vo.getModel_id();
	int mechanic_id = vo.getMechanic_id();
	
	ModelAndView  mv = new ModelAndView();
	mv.addObject("model_id", model_id);
	mv.addObject("mechanic_id", mechanic_id);
	mv.addObject("answersList", answersList);
	mv.setViewName("chat/list");
	return mv;
	}
	
		}

































