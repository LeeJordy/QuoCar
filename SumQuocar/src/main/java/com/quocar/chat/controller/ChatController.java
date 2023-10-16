package com.quocar.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.quocar.chat.service.AnswersService;
import com.quocar.chat.service.ChatService;
import com.quocar.chat.service.CmodelService;
import com.quocar.chat.service.MechanicService;
import com.quocar.chat.vo.AnswersVo;
import com.quocar.chat.vo.CmodelVo;
import com.quocar.chat.vo.MechanicVo;

@Controller
@RequestMapping("/Chat")
public class ChatController {

	@Autowired
	private ChatService  chatService;

	private final CmodelService cmodelService;
    private final MechanicService mechanicService;
    private final AnswersService answersService;

    public ChatController(CmodelService cmodelService, MechanicService mechanicService, AnswersService answersService) {
        this.cmodelService = cmodelService;
        this.mechanicService = mechanicService;
        this.answersService = answersService;
    }

    @RequestMapping("/ViewForm")
    public ModelAndView view(AnswersVo vo) {
    	
        // CmodelVo 목록 조회
        List<CmodelVo> cmodelList = cmodelService.getCmodelList(null);

        // MechanicVo 목록 조회
        List<MechanicVo> mechanicList = mechanicService.MechanicList(null);

        // answerslist안의 answer_text 목록 조회
        List<AnswersVo> answersList = answersService.getAnswersList(null);
        
        String answer_text = chatService.getAnswer(vo);
        
        int model_id    = vo.getModel_id();
    	int mechanic_id = vo.getMechanic_id();
        // 조회한 목록을 ModelAndView에 추가
    	ModelAndView mv = new ModelAndView();
        mv.addObject("cmodelList",   cmodelList);
        mv.addObject("mechanicList", mechanicList);
        mv.addObject("answersList",  answersList);
        mv.addObject("model_id",     model_id);
        mv.addObject("mechanic_id",  mechanic_id);
        mv.addObject("answer_text", answer_text);
        
        // hat/view.jsp 페이지로 이동
        mv.setViewName("chat/view");

        return mv;
	}
}
