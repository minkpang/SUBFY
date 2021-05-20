package com.ssafy.happyhouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.happyhouse.model.service.HouseDealService;

@Controller
@CrossOrigin("*")
public class HouseController {
	
	@Autowired
	private HouseDealService houseDealService;
	
	@GetMapping("mvsearch")
	public String mvsearch() {
		return "search";
	}
	
	@PostMapping("search")
	public String search(@RequestParam("searchKey") String searchKey, @RequestParam("searchWord") String searchWord, Model model) {

		System.out.println(">>>search>> searchKey: " + searchKey + " searchWord: " + searchWord);
		List<HouseDealDto> list;
		
		try {
			if(searchKey.equals("aptSearch")) {
				list = houseDealService.searchByAptName(searchWord);
				System.out.println("아파트 이름으로 검색 " + list.get(0) + " 외 " + list.size() + "건");
				model.addAttribute("houseDealList", list);
				
			} else if(searchKey.equals("dongSearch")) {
				list = houseDealService.searchByDong(searchWord);
				System.out.println("동 이름으로 검색 " + list.get(0) + " 외 " + list.size() + "건");
				model.addAttribute("houseDealList", list);
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "index";
	}
}
