package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.HashMap;
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
	
	@GetMapping
	public ResponseEntity<List<QnaDto>> search(@RequestParam(value="key", required=false) String key, 
			@RequestParam(value="word", required=false) String word) throws Exception {
		// defaul-전체게시물 목록: http://localhost:9999/qna
		// 제목으로 검색 : http://localhost:9999/qna?key=title&word=자바
		// 내용으로 검색:  http://localhost:9999/qna?key=content&word=자바자바

		List<QnaDto> qnaList = null;
		System.out.println(">>search " + key + ", " + word);
		
		if(key==null || word==null) {
			qnaList = qnaService.qnaList();
		} else if(key.equals("title")) {
			qnaList = qnaService.searchByTitle(word);
		} else if(key.equals("content")) {
			qnaList = qnaService.searchByContent(word);
		} 
		
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
	
	// 게시글 작성
	@PostMapping
	public ResponseEntity<String> register(@RequestBody QnaDto qnaDto) throws Exception {
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
