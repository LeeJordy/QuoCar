package com.quocar.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.quocar.chat.service.AnswersService;
import com.quocar.chat.service.CmodelService;
import com.quocar.chat.vo.AnswersVo;
import com.quocar.chat.vo.CmodelVo;
import com.quocar.chat.vo.MechanicVo;

@Controller
@RequestMapping("/Chat")
public class CmodelController {
	
	@Autowired
	private CmodelService  cmodelService;
	
	//차량 목록
	@RequestMapping("/List2")
	public ModelAndView list(CmodelVo vo) {
		
		List<CmodelVo> cmodelList = cmodelService.getCmodelList(vo);
		
		int    model_id    = vo.getModel_id();
		String car_model = vo.getCar_model();
		
		ModelAndView  mv = new ModelAndView();
		mv.addObject("model_id", model_id);
		mv.addObject("cmodelList", cmodelList);
		mv.setViewName("chat/list2");
		return mv;
	}	
		}

































