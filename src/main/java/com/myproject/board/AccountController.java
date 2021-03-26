package com.myproject.board;

import java.util.List;

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

	@RequestMapping(value = "/idCheck")
	public ModelAndView idCheck(ModelAndView mv, AccountVO vo) {
		// ** 전달된 ID 가 존재하는지 확인
		// => notNull : 존재 -> 사용불가
		// => Null : 없음 -> 사용가능
		// => 그러므로 전달된 ID 보관 해야함
		mv.addObject("newID", vo.getId());
		if (service.selectOne(vo) != null) {
			mv.addObject("idUse", "F"); //사용불가
		}else {
			mv.addObject("idUse", "T"); //사용가능
		}
		mv.setViewName("account/idDupCheck");
		return mv;
		
	}
	
	
	@RequestMapping(value = "/ajoinp")
	public ModelAndView ajoinp(ModelAndView mv) {
		mv.setViewName("account/join");
		return mv;
	}

	@RequestMapping(value = "/ajoin")
	public ModelAndView ajoin(HttpServletRequest request, ModelAndView mv, AccountVO vo) {
		System.out.println(vo.toString());
		if (service.insert(vo) > 0) {
			// 가입성공 -> 로그인 유도 메시지 출력 : loginForm.jsp
			mv.addObject("message", " 회원 가입 성공 !!! 로그인 후 이용하세요 ~~");
			mv.setViewName("account/alogin");
		} else {
			// 가입실패 -> 재가입 유도 메시지 출력 : joinForm.jsp
			mv.addObject("message", " 회원 가입 실패 !!! 다시 하세요 ~~");
			mv.setViewName("account/join");
		}

		return mv;
	}

	@RequestMapping(value = "/aloginp")
	public ModelAndView aloginp(ModelAndView mv) {
		mv.setViewName("account/alogin");
		return mv;
	}

	@RequestMapping(value = "/alogin")
	public ModelAndView alogin(HttpServletRequest request, ModelAndView mv, AccountVO vo) {

		String password = vo.getPassword();
		vo = service.selectOne(vo);
		if (vo != null) { // ID Ok
			if (vo.getPassword().equals(password)) {
				// Login 성공 -> session 보관, home
				request.getSession().setAttribute("loginID", vo.getId());
				mv.addObject("message", "로그인 성공");
				System.out.println("성공");
				mv.setViewName("redirect:home");
			} else {
				// Password 오류
				mv.addObject("message", "~~ Password 오류 !! 다시 하세요 ~~");
				System.out.println("pw 실패");
				mv.setViewName("account/alogin");
			}
		} else { // ID 오류
			mv.addObject("message", "~~ ID 오류 !! 다시 하세요 ~~");
			System.out.println("id 실패");
			mv.setViewName("account/alogin");
		}
		return mv;
	}
	
	@RequestMapping(value = "/alist")
	public ModelAndView alist(HttpServletRequest request, ModelAndView mv, AccountVO vo) {
		
		List<AccountVO> list = service.selectList();
		if ( list != null) {
			mv.addObject("list", list);
		}else {
			mv.addObject("message","~~ 출력자료가 1건도 없습니다 ~~");
		}
		mv.setViewName("account/alist"); // forward
		return mv;
		
		
	}	

}
