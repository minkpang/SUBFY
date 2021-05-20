package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.QnaDto;

public interface QnaService {
	public List<QnaDto> qnaList() throws SQLException;
	
	public QnaDto searchById(int id) throws SQLException;
	public List<QnaDto> searchByTitle(String title) throws SQLException;
	public List<QnaDto> searchByContent(String content) throws SQLException;
	
	public int qnaRegister(QnaDto qnaDto) throws SQLException;
	public int qnaModify(QnaDto qnaDto) throws SQLException;
	public int qnaDelete(int id) throws SQLException;
}
