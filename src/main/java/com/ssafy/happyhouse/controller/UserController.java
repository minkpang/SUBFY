package com.ssafy.happyhouse.controller;

import java.util.Date;
import java.util.HashMap;
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

import com.ssafy.happyhouse.help.BooleanResult;
import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.service.JwtService;
import com.ssafy.happyhouse.model.service.UserService;

@CrossOrigin("*")
@RestController
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";

	@Autowired
	private JwtService jwtService;

	@Autowired
	private UserService userService;

	// 회원 목록 -> http://localhost:9999/user
	@GetMapping({ "", "/list" })
	public ResponseEntity<List<MemberDto>> list() throws Exception {
		List<MemberDto> userList = userService.userList();
		if (userList.isEmpty() || userList.size() == 0) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<MemberDto>>(userList, HttpStatus.OK);
	}

	// 로그인 -> http://localhost:9999/user/login
	@PostMapping("/login")
	public ResponseEntity<Map<String, Object>> login(@RequestBody MemberDto memberDto, HttpServletResponse response,
			HttpSession session) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = null;
		System.out.println(memberDto);
		try {
			MemberDto loginMember = userService.login(memberDto);
			if (loginMember != null) {
				String token = jwtService.create(loginMember);
				logger.trace("로그인 토큰정보 : {}", token);

				resultMap.put("auth-token", token);
				resultMap.put("user-id", loginMember.getUserid());
				resultMap.put("user-name", loginMember.getUsername());
				resultMap.put("user-gender", loginMember.getGender());
				resultMap.put("status", SUCCESS);
				status = HttpStatus.ACCEPTED;
			} else {
				resultMap.put("message", "로그인 실패! 아이디와 비밀번호를 확인하세요.");
				status = HttpStatus.ACCEPTED;
			}
		} catch (Exception e) {
			logger.error("로그인 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
		System.out.println();

		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}

	@GetMapping("/info/{userid}")
	public MemberDto getInfo(@PathVariable String userid) throws Exception {
		System.out.println(">>>> userid " + userid);
		return userService.read(userid);
	}

	// 로그인한 회원 정보 조회 -> http://localhost:9999/user/info
//	@GetMapping("/info")
//	public ResponseEntity<Map<String, Object>> getInfo(HttpServletRequest req) {
//		Map<String, Object> resultMap = new HashMap<>();
//		HttpStatus status = HttpStatus.ACCEPTED;
//		System.out.println(">>>>>> " + jwtService.get(req.getHeader("auth-token")));
//		try {
//			// 사용자에게 전달할 정보이다.
//			String info = userService.getServerInfo();
//			
//			resultMap.putAll(jwtService.get(req.getHeader("auth-token")));
////
//			resultMap.put("status", true);
//			resultMap.put("info", info);
//			status = HttpStatus.ACCEPTED;
//		} catch (RuntimeException e) {
//			logger.error("정보조회 실패 : {}", e);
//			resultMap.put("message", e.getMessage());
//			status = HttpStatus.INTERNAL_SERVER_ERROR;
//		}
//		return new ResponseEntity<Map<String, Object>>(resultMap, status);
//	}

	// 회원 가입 -> http://localhost:9999/user/regist
	@PostMapping("/regist")
	public ResponseEntity<BooleanResult> registMember(@RequestBody MemberDto memberDto) throws Exception {
		logger.info("회원등록" + new Date());
		logger.info("회원등록" + memberDto);
		boolean checkRegi = userService.regist(memberDto);
		BooleanResult br = new BooleanResult();
		br.setCheck(checkRegi);
		br.setName("regist");
		br.setState(SUCCESS);
		logger.info("회원등록 checkRegi " + checkRegi);
		if (!checkRegi) {
			br.setCheck(false);
			br.setName("regist");
			br.setState(FAIL);
			return new ResponseEntity<BooleanResult>(br, HttpStatus.OK);
		}
		return new ResponseEntity<BooleanResult>(br, HttpStatus.OK);

	}

	// 회원 정보 수정 -> http://localhost:9999/user/update
	@PutMapping("/modify")
	public ResponseEntity<BooleanResult> updateMember(@RequestBody MemberDto memberDto) throws Exception {
		logger.info("회원 정보 수정 " + new Date());
		logger.info("회원 정보 수정" + memberDto);
		boolean checkUpdate = userService.update(memberDto);
		BooleanResult br = new BooleanResult();
		br.setCheck(checkUpdate);
		br.setName("update");
		br.setState(SUCCESS);
		if (!checkUpdate) {
			br.setCheck(false);
			br.setName("regist");
			br.setState(FAIL);

			return new ResponseEntity<BooleanResult>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<BooleanResult>(br, HttpStatus.OK);

	}

	// 로그인한 회원 탈퇴 -> http://localhost:9999/user/delete
	@DeleteMapping("/delete/{userid}")
	public ResponseEntity<BooleanResult> deleteMember(@PathVariable String userid) throws Exception {
		logger.info("회원 정보 삭제 !!!!" + new Date());
		logger.info("회원 정보 삭제 !!!!" + userid);
		boolean checkdelete = userService.delete(userid);
		BooleanResult br = new BooleanResult();
		br.setCheck(checkdelete);
		br.setName("delete");
		br.setState(SUCCESS);
		return new ResponseEntity<BooleanResult>(br, HttpStatus.OK);
	}

}
