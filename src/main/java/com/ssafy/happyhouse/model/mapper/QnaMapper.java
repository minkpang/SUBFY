package com.ssafy.happyhouse.model.mapper;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.QnaDto;

public interface QnaMapper {
	public List<QnaDto> qnaList();
	public QnaDto searchById(int id);
	public List<QnaDto> searchByTitle(String title);
	public List<QnaDto> searchByContent(String content);
	
	public int qnaRegister(QnaDto qnaDto);
	public int qnaModify(QnaDto qnaDto);
	public int qnaDelete(int id);
}
