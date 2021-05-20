package com.ssafy.happyhouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {
	
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/mapindex")
	public String mapindex() {
		return "index";
	}
	
	@GetMapping("/userinfo")
	public String userinfo() {
		return "userinfo";
	}
	
	@GetMapping("/notice")
	public String notice() {
		return "notice";
	}
	
	@GetMapping("/join")
	public String join() {
		return "join";
	}
}
