package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.ssafy.happyhouse.model.QnaDto;
import com.ssafy.happyhouse.model.service.QnaService;

@CrossOrigin("*")
@RestController
@RequestMapping("/qna")
public class QnaController {
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@Autowired
	private QnaService qnaService;
	
	// 게시글 목록
	@GetMapping("")
	public ResponseEntity<List<QnaDto>> list() throws Exception {
		System.out.println("게시글 목록 : /qna");
		List<QnaDto> qnaList = qnaService.qnaList();
		System.out.println(qnaList);
		if(qnaList.isEmpty()) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		} 
		return new ResponseEntity<List<QnaDto>>(qnaList, HttpStatus.OK);
	}
	
	// 게시판 아이디를 눌러서 자세히 보기
	@GetMapping("/{id}")
	public QnaDto searchById(@PathVariable int id) throws Exception{
		System.out.println("게시글 id를 눌러 자세히 보기 : /id/" + id);
		return qnaService.searchById(id);
	}
	
	// 게시글 제목으로 검색
	@GetMapping("/title/{title}")
	public ResponseEntity<List<QnaDto>> searchByTitle(@PathVariable String title) throws Exception{
		System.out.println("게시글 제목으로 검색: /title/" + title);
		List<QnaDto> qnaList = qnaService.searchByTitle(title);
		System.out.println(qnaList);
		if(qnaList.isEmpty()) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		} 
		return new ResponseEntity<List<QnaDto>>(qnaList, HttpStatus.OK);
	}
	
	// 게시글 내용으로 검색
	@GetMapping("/content/{content}")
	public ResponseEntity<List<QnaDto>> searchByContent(@PathVariable String content) throws Exception {
		System.out.println("게시글 내용으로 검색: /content/" + content);
		List<QnaDto> qnaList = qnaService.searchByContent(content);
		System.out.println(qnaList);
		if(qnaList.isEmpty()) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		} 
		return new ResponseEntity<List<QnaDto>>(qnaList, HttpStatus.OK);
	}
	
	// 게시글 작성
	@PostMapping
	public ResponseEntity<String> register(@RequestBody QnaDto qnaDto) throws Exception {
//	public ResponseEntity<String> register(QnaDto qnaDto) throws Exception {
		System.out.println("게시판 작성 " + qnaDto);
		if(qnaService.qnaRegister(qnaDto) > 0) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
		}
	}
	
	// 게시글 수정 : 게시글 id에 수정하는 게시글 정보 수정
	@PutMapping("{id}")
	public ResponseEntity<String> modify(@RequestBody QnaDto qnaDto) throws Exception {
		System.out.println(">>>>> 게시판 수정 " + qnaDto);
		
		if(qnaService.qnaModify(qnaDto) > 0) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
		}
	}

	// 게시글 삭제 : 게시글 id에 수정하는 게시글 정보 수정
	@DeleteMapping("{id}")
	public ResponseEntity<String> delete(@PathVariable int id) throws Exception {
		System.out.println("게시판 삭제: " + id + "번깨 게시글");
		
//		if(qnaService.qnaDelete(Integer.parseInt(id)) > 0) {
		if(qnaService.qnaDelete(id) > 0) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		} else {
			return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
		}
	}
}
