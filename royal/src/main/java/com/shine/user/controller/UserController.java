package com.shine.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shine.user.mapper.UserMapper;
import com.shine.user.model.UserModel;
import com.shine.user.service.UserPwFindService;

@Controller
public class UserController {
	
	@Autowired
	UserMapper mapper;
	
	// 회원가입
	@RequestMapping(value="/user/join", method=RequestMethod.POST)
	public String join(@RequestParam("user_nick")String user_nick, 
			@RequestParam("user_email")String user_email, @RequestParam("user_pw")String user_pw,
			@RequestParam("user_name")String user_name, @RequestParam("user_add")String user_add,
			@RequestParam("user_phone")String user_phone, HttpSession session) {
		
		System.out.println(user_email + ", " + user_pw);
		
		UserModel m = new UserModel(user_nick, user_email, user_pw, user_name, user_add, user_phone);
				
		int cnt = mapper.join(m);
				
				
		if(cnt>0) {
			return "redirect:/";
		}else {
			System.out.println("회원가입 실패");
			return "redirect:/";
		}
	}
	
	// 로그인
	@RequestMapping(value="/user/login", method=RequestMethod.POST)
	public String login(@RequestParam("user_email")String user_email,
			@RequestParam("user_pw")String user_pw, HttpSession session) {
		UserModel loginUser = new UserModel(user_email, user_pw);
		
		UserModel result = mapper.login(loginUser);
		
		if(result != null) {
			// 세션(HttpSession)에 회원정보를 저장
			session.setAttribute("result", result);
			
			return "redirect:/";
		}else {
			System.out.println("로그인 실패");
			return "redirect:/";
		}
	}
	
	// 로그아웃
	@RequestMapping("/user/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 회원정보수정
	@RequestMapping(value="/user/update", method=RequestMethod.POST)
	public String update(@ModelAttribute UserModel m, HttpSession session) {
		
		UserModel loginUser = (UserModel)session.getAttribute("loginUser");
		
		m.setUser_email(loginUser.getUser_email());
		
		int cnt = mapper.update(m);
		
		if(cnt>0) {   // 수정성공
			session.setAttribute("loginUser", m);
			return "redirect:/";
		}else {  // 수정실패
			return "redirect:/";
		}
	}
	
	// 비밀번호찾기
	
	@RequestMapping(value="/user/findpw", method=RequestMethod.POST)
	public String findpw(@RequestParam("user_email")String user_email,
			@RequestParam("user_pw")String user_phone, HttpSession session) {
		UserModel findUser = new UserModel(user_email, user_phone);
		
		UserModel result = mapper.findpw(findUser);
		
		UserPwFindService userPwFindService = new UserPwFindService();
		
		if(result != null) {
			userPwFindService = UserModel.pwFind_select(userPwFindService);
			
			return "redirect:/";
		}else {
			System.out.println("로그인 실패");
			return "redirect:/";
		}
	}
	
	
}
