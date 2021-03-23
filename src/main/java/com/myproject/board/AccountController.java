package com.myproject.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.AccountService;
import vo.AccountVO;

@Controller
public class AccountController {
	
	@Autowired
	AccountService service;
	
	@RequestMapping(value = "/aloginp")
	public ModelAndView aloginp(ModelAndView mv) {
		mv.setViewName("account/alogin");
		return mv;
	}
	
	
	
	@RequestMapping(value = "/alogin")
	public ModelAndView alogin(HttpServletRequest request, ModelAndView mv, AccountVO vo) {
		
		String password = vo.getPassword();
		vo = service.selectOne(vo);
		if ( vo != null) { // ID Ok
			if (vo.getPassword().equals(password)) {
				// Login 성공 -> session 보관, home
				request.getSession().setAttribute("loginID", vo.getId());
				mv.addObject("message", "로그인 성공");
				System.out.println("성공");
				 mv.setViewName("redirect:home"); 
			}else {
				// Password 오류
				mv.addObject("message", "~~ Password 오류 !! 다시 하세요 ~~");
				System.out.println("pw 실패");
				mv.setViewName("account/alogin");
			}
		}else { // ID 오류
			mv.addObject("message", "~~ ID 오류 !! 다시 하세요 ~~");
			System.out.println("id 실패");
			mv.setViewName("account/alogin");
		}
		return mv;
	}
	
}
