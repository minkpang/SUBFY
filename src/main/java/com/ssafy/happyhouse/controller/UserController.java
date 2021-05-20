package com.ssafy.happyhouse.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.service.UserService;

@CrossOrigin("*")
@RestController
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	// 회원 목록 -> http://localhost:9999/user
	@GetMapping({"", "/list"}) 
	public ResponseEntity<List<MemberDto>> list() throws Exception {
		List<MemberDto> userList = userService.userList();
		if(userList.isEmpty() || userList.size()==0) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<MemberDto>> (userList, HttpStatus.OK);
	}
	
	// 로그인
	@PostMapping("/login") 
	public ResponseEntity<String> login(@RequestParam Map<String, String> map, Model model, HttpSession session, HttpServletResponse response) {
		try {
			MemberDto memberDto = userService.login(map);
			if(memberDto != null) {
				session.setAttribute("userinfo", memberDto);
				
				Cookie cookie = new Cookie("ssafy_id", memberDto.getUserid());
				cookie.setPath("/");
				if("saveok".equals(map.get("idsave"))) {
					cookie.setMaxAge(60 * 60 * 24 * 365 * 40);//40년간 저장.
				} else {
					cookie.setMaxAge(0);
				}
				response.addCookie(cookie);
				
			} 
			else {
				model.addAttribute("msg", "아이디 또는 비밀번호 확인 후 로그인해 주세요.");
				return new ResponseEntity<String>("아이디 또는 비밀번호 확인 후 로그인해 주세요.", 
													HttpStatus.NO_CONTENT);
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "로그인 중 문제가 발생했습니다.");
			return new ResponseEntity<String>("로그인 중 문제가 발생했습니다", 
					HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<String>("로그인 성공", HttpStatus.OK);
	}
	
	// 로그아웃
	@GetMapping("/logout") 
	public void logout(HttpSession session) {
		session.removeAttribute("userinfo"); // 세션 삭제
		session.invalidate();
	}
	
	// 회원가입
	@PostMapping("/join")
	public ResponseEntity<String> join(MemberDto memberDto) {
		int cnt = userService.userRegister(memberDto);
		if(cnt != 0) {
			System.out.println(">>>> 회원가입 성공 " + memberDto);
			return new ResponseEntity<String>("회원가입 성공", HttpStatus.OK);
		} else
			return new ResponseEntity<String>("회원가입 실패", HttpStatus.NO_CONTENT);
	}
	
	// 회원 정보 수정
	@PutMapping("") // 테스트 못해봄/ 수정 전 mapping : "modify"
	public ResponseEntity<String> modify(MemberDto memberDto) {
		int cnt = userService.userModify(memberDto);
		if(cnt != 0) {
			System.out.println(">>>> 회원 정보 수정 성공 " + memberDto);
			return new ResponseEntity<String>("회원 정보 수정 성공", HttpStatus.OK);
		} else
			return new ResponseEntity<String>("회원 정보 수정 실패", HttpStatus.NO_CONTENT);
	}
	
	// 회원 정보 삭제
//	@DeleteMapping
//	public String delete(@RequestParam("userid") String userid, Model model) {
//		System.out.println("delete");
//		int cnt = userService.userDelete(userid);
//		if(cnt !=0 ) {
//			System.out.println(">>>> 회원 정보 수정 성공 " + memberDto);
//		}
//		return new ResponseEntity<String>("회원 정보 삭제 성공", HttpStatus.OK);
//	}
//	
//	@RequestMapping(value = "/delete", method = RequestMethod.GET)
//	public String delete(@RequestParam("userid") String userid, Model model) {
//		System.out.println("delete");
//		try {
//			userService.userDelete(userid);
//			return "redirect:/";
//		} catch (Exception e) {
//			e.printStackTrace();
//			model.addAttribute("msg", "글삭제 처리 중 문제가 발생했습니다.");
//			return "error/error";
//		}
//	}
}
