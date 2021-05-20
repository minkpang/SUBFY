package com.ssafy.happyhouse.controller;

import java.util.List;

import org.apache.catalina.Host;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	// 역삼동 건물들 먼저 검색
	@GetMapping
	public ResponseEntity<List<HouseDealDto>> list() throws Exception {
		System.out.println(">> 역삼동(default) 건물들 출력");
		List<HouseDealDto> houseList = houseDealService.searchByDong("역삼동");
		System.out.println(houseList.get(0) + "등, " + houseList.size() + "건");
		if(houseList.isEmpty()) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<HouseDealDto>>(houseList, HttpStatus.OK);
	}	
	
	@PostMapping
	public ResponseEntity<List<HouseDealDto>> search(@RequestParam("searchKey") String searchKey, 
													@RequestParam("searchWord") String searchWord) throws Exception {
		System.out.println(">> search >> searchKey: " + searchKey + " searchWord: " + searchWord);
		List<HouseDealDto> houseList = null;
		
		if (searchKey.equals("aptSearch")) {
			houseList = houseDealService.searchByAptName(searchWord);
			System.out.println("아파트 이름으로 검색 " + houseList.get(0) + " 외 " + houseList.size() + "건");
		} else if (searchKey.equals("dongSearch")) {
			houseList = houseDealService.searchByDong(searchWord);
		}	
		// 지하철역 이름으로도 검색 기능 추가 예정
		if(houseList.isEmpty() || houseList==null) {			
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		} else {
			return new ResponseEntity<List<HouseDealDto>>(houseList, HttpStatus.OK);
		}
	}
	
//	@PostMapping("search")
//	public String search(@RequestParam("searchKey") String searchKey, @RequestParam("searchWord") String searchWord, Model model) {
//
//		System.out.println(">>>search>> searchKey: " + searchKey + " searchWord: " + searchWord);
//		List<HouseDealDto> list;
//		
//		try {
//			if(searchKey.equals("aptSearch")) {
//				list = houseDealService.searchByAptName(searchWord);
//				System.out.println("아파트 이름으로 검색 " + list.get(0) + " 외 " + list.size() + "건");
//				model.addAttribute("houseDealList", list);
//				
//			} else if(searchKey.equals("dongSearch")) {
//				list = houseDealService.searchByDong(searchWord);
//				System.out.println("동 이름으로 검색 " + list.get(0) + " 외 " + list.size() + "건");
//				model.addAttribute("houseDealList", list);
//			}			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		return "index";
//	}
	
}
