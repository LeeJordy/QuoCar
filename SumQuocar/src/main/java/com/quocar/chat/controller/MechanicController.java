package com.quocar.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.quocar.chat.service.MechanicService;
import com.quocar.chat.vo.MechanicVo;

@Controller
@RequestMapping("/Chat")
public class MechanicController {
	
	@Autowired
	private MechanicService  mechanicService;
	
	//정비 목록
	@RequestMapping("/List3")
	public ModelAndView list(MechanicVo vo) {
		
		List<MechanicVo> mechanicList = mechanicService.MechanicList(vo);
		
		int    mechanic_id   = vo.getMechanic_id();
		String mechanic_name = vo.getMechanic_name();
		
		ModelAndView  mv = new ModelAndView();
		mv.addObject("mechanic_id", mechanic_id);
		mv.addObject("mechanicList", mechanicList);
		mv.setViewName("chat/list3");
		return mv;
	}
		}

































