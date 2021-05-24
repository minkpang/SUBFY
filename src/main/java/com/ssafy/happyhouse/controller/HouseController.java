package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
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
	
	// 역삼동 건물들 리스트로 보여주기
	//localhost:9999/house -> 역삼동 건물들 리스트 표시
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
//	public ResponseEntity<List<HouseDealDto>> search(@RequestParam("searchKey") String searchKey, 
//													@RequestParam("searchWord") String searchWord) throws Exception {
//		System.out.println(">> search >> searchKey: " + searchKey + " searchWord: " + searchWord);
//		List<HouseDealDto> houseList = null;
//		
//		if (searchKey.equals("aptSearch")) { // 아파트 이름으로 검색
//			houseList = houseDealService.searchByAptName(searchWord);
//			System.out.println("아파트 이름으로 검색 " + houseList.get(0) + " 외 " + houseList.size() + "건");
//			
//		} else if (searchKey.equals("dongSearch")) { // 동 이름으로 검색
//			houseList = houseDealService.searchByDong(searchWord);
//			
//		}  else if (searchKey.equals("stationName")) { // 지하철역 이름으로 검색
//			houseList = houseDealService.searchByStationName(searchWord);
//			
//		}
//		
//		if(houseList.isEmpty() || houseList==null) {			
//			return new ResponseEntity(HttpStatus.NO_CONTENT);
//		} else {
//			return new ResponseEntity<List<HouseDealDto>>(houseList, HttpStatus.OK);
//		}
//	}
	public ResponseEntity<List<HouseDealDto>> search(@RequestBody Map<String, String> map) throws Exception {
		String searchKey = map.get("searchKey");
		String searchWord = map.get("searchWord");
		
		System.out.println(">> search >> searchKey: " + searchKey + " searchWord: " + searchWord);
		List<HouseDealDto> houseList = null;
		
		if (searchKey.equals("aptSearch")) { // 아파트 이름으로 검색
			houseList = houseDealService.searchByAptName(searchWord);
//			System.out.println("아파트 이름으로 검색 " + houseList.get(0) + " 등,  " + houseList.size() + "건");
			
		} else if (searchKey.equals("dongSearch")) { // 동 이름으로 검색
			houseList = houseDealService.searchByDong(searchWord);
//			System.out.println("동 이름으로 이름으로 검색 " + houseList.get(0) + " 등, " + houseList.size() + "건");
			
		}  else if (searchKey.equals("stationSeach")) { // 지하철역 이름으로 검색
			System.out.println(searchWord);
			houseList = houseDealService.searchByStationName(searchWord);
//			System.out.println("지하철역 이름으로 이름으로 검색 " + houseList.get(0) + " 등, " + houseList.size() + "건");
			
		}
		
		if(houseList.isEmpty() || houseList==null) {			
			System.out.println(searchWord +" 검색 결과 없음");
			return new ResponseEntity(HttpStatus.NO_CONTENT);
			
		} else {
			System.out.println(houseList.get(0) + " 등, " + houseList.size() + "건");
			return new ResponseEntity<List<HouseDealDto>>(houseList, HttpStatus.OK);
		}
	}
	
}
