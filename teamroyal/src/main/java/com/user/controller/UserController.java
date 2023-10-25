package com.user.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.user.service.UserService;
import com.user.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	// 로그인 화면 조회
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session, HttpServletResponse response) {
		return "/mainPage/index";
	}

	/**
	 * 회원가입
	 * 
	 * @param UserVO      userVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Login-Join/Login-Join.jsp
	 * ------------이력------------ 
	 * 2023.10.24 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/login/join", method = RequestMethod.POST)
	public String join(@ModelAttribute UserVO userVo, HttpSession session) {

		System.out.println("::::::::::" + userVo);
		// 회원가입 서비스 실행
		Map<String, Object> reMap = userService.userInfoInsert(userVo);

		// 코드로 성공 여부 확인
		String reString = reMap.get("reCode").toString();
		if (reString.equals("00")) {
			System.out.println("회원가입 성공");
			return "redirect:/";
		} else if (reString.equals("01")) {
			System.out.println("회원가입 필수값 오류");
			return "redirect:/";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/";
		}
	}
	

	/**
	 * 로그인
	 * 
	 * @param userEmail
	 * @param userPw
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Login-Join/Login-Join.jsp 
	 * ------------이력------------ 
	 * 2023.10.24 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/login/Success", method = RequestMethod.POST)
	public String login(@RequestParam("userEmail") String userEmail, @RequestParam("userPw") String userPw,
			HttpSession session) {

		Map<String, Object> loginMap = userService.userLogin(userEmail.toString(), userPw.toString());

		String reString = loginMap.get("loginCode").toString();
		if (reString.equals("11")) {
			System.out.println("로그인 성공");
			session.setAttribute("loginMap", loginMap);
			return "redirect:/";
		} else if (reString.equals("01")) {
			System.out.println("로그인 필수값 오류");
			return "redirect:/";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/";

		}
	}

	// 회원정보 페이지로 이동
	@RequestMapping(value = "/login/userProfile", method = RequestMethod.GET)
	public String userProfile() {
		return "/myPage/pages-profile-user";
	}

	// 회원정보 수정 페이지로 이동
	@RequestMapping(value = "/login/userProfile/modify", method = RequestMethod.GET)
	public String userProfileModify() {
		return "/myPage/pages-account-settings-account";
	}

	/**
	 * 회원정보 수정
	 * 
	 * @param UserVO      userVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Map<String, Object> 
	 * ------------이력------------ 
	 * 2023.10.24 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/login/modify", method = RequestMethod.POST)
	public Map<String, Object> modify(@ModelAttribute UserVO userVo, HttpSession session) {

		Map<String, Object> updateReMap = userService.userInfoUpdate(userVo);

		String reString = updateReMap.get("updateReCode").toString();
		if (reString.equals("22")) {
			System.out.println("회원수정 성공");
		} else if (reString.equals("01")) {
			System.out.println("회원수정 필수값 오류");
		} else {
			System.out.println("관리자 확인이 필요합니다.");
		}
		return updateReMap;
	}

	// 회원정보 삭제
	/**
	 * 
	 * @param UserVO      userVo
	 * @param Map<String, Object>
	 * @return Map<String, Object> 
	 * ------------이력------------ 
	 * 2023.10.24 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/login/userDelete/{userEmail}")
	public Map<String, Object> delete(@ModelAttribute UserVO userVo) {

		Map<String, Object> deleteMap = userService.userInfoDelete(userVo);

		String reString = deleteMap.get("deleteReCode").toString();
		if (reString.equals("33")) {
			System.out.println("회원삭제 성공");
		} else if (reString.equals("01")) {
			System.out.println("회원삭제 필수값 오류");
		} else {
			System.out.println("관리자 확인이 필요합니다.");
		}
		return deleteMap;
	}

	// 비밀번호 찾기 페이지로 이동
	@RequestMapping(value = "/login/forgotPw", method = RequestMethod.GET)
	public String forgotPw() {
		return "/mainPage/auth-forgot-password-cover";
	}

	/**
	 * 회원 비밀번호 찾기
	 * 
	 * @param UserVO      userVo
	 * @param Map<String, Object>
	 * @return Map<String, Object> 
	 * ------------이력------------ 
	 * 2023.10.24 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/login/findPw", method = RequestMethod.POST)
	public Map<String, Object> findPw(@ModelAttribute UserVO userVo) {

		Map<String, Object> findMap = userService.userFindPw(userVo);

		String reString = findMap.get("findReCode").toString();
		if (reString.equals("44")) {
			System.out.println("비밀번호 찾기 성공");
		} else if (reString.equals("01")) {
			System.out.println("비밀번호 찾기 필수값 오류");
		} else {
			System.out.println("관리자 확인이 필요합니다.");
		}
		return findMap;
	}

	// 상세 email 페이지 이동
	@RequestMapping(value = "/login/userProfile/email", method = RequestMethod.GET)
	public String userProfileEmail() {
		return "/myPage/app-email";
	}

	// 상세 email 페이지 이동
	@RequestMapping(value = "/login/userProfile/notification", method = RequestMethod.GET)
	public String userProfileNotification() {
		return "/myPage/app-email";
	}

	// 상세 email 페이지 이동
	@RequestMapping(value = "/login/userProfile/Teams", method = RequestMethod.GET)
	public String userProfileTeams() {
		return "/myPage/pages-profile-teams";
	}

	// 상세 email 페이지 이동
	@RequestMapping(value = "/login/userProfile/Projects", method = RequestMethod.GET)
	public String userProfileProjects() {
		return "/myPage/pages-profile-projects";
	}

	// 관리자 email 페이지 이동
	@RequestMapping(value = "/login/userProfile/Manager", method = RequestMethod.GET)
	public String userProfileManager() {
		return "/myPage/pages-profile-projects";
	}
}
