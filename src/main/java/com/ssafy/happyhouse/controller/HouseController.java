package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Host;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.happyhouse.model.service.HouseDealService;

@CrossOrigin("*")
@RestController
@RequestMapping("/house")
public class HouseController {
	
	@Autowired
	private HouseDealService houseDealService;
	
	@GetMapping("mvsearch")
	public String mvsearch() {
		return "search";
	}

	@GetMapping  
	public ResponseEntity<List<HashMap<String, Object>>> search(@RequestParam(value="key", defaultValue="dong") String key, 
											@RequestParam(value="word", defaultValue="역삼") String word) throws Exception{
		// default- 역삼동  http://localhost:9999/house
		// 동 검색 : 		http://localhost:9999/house?key=dong&word=성수
		// 아파트 검색: 	http://localhost:9999/house?key=apt&word=풍림
		// 지하철역 검색:   http://localhost:9999/house?key=station&word=뚝섬
		
		List<HashMap<String, Object>> houseMapList = null;
		System.out.println(">>search " + key + ", " + word);
		
		if (key.equals("apt")) { // 아파트 이름으로 검색
			houseMapList = houseDealService.searchByAptName(word);
			
		} else if (key.equals("dong")) { // 동 이름으로 검색
			houseMapList = houseDealService.searchByDong(word);
			
		}  else if (key.equals("station")) { // 지하철역 이름으로 검색
			System.out.println(word);
			houseMapList = houseDealService.searchByStationName(word);
		}
		
		if(houseMapList.isEmpty() || houseMapList==null) {			
			System.out.println("검색 결과 없음");
			return new ResponseEntity(HttpStatus.NO_CONTENT);
			
		} else {
			System.out.println(houseMapList.size() + "건");
			return new ResponseEntity<List<HashMap<String, Object>>> (houseMapList, HttpStatus.OK);
		}
	}
}
