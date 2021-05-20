package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.QnaDto;
import com.ssafy.happyhouse.model.mapper.QnaMapper;

@Service
public class QnaServiceImpl implements QnaService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<QnaDto> qnaList() throws SQLException {
		return sqlSession.getMapper(QnaMapper.class).qnaList();
	}
	
	@Override
	public QnaDto searchById(int id) throws SQLException {
		return sqlSession.getMapper(QnaMapper.class).searchById(id);
	}
	
	@Override
	public List<QnaDto> searchByTitle(String title) throws SQLException {
		return sqlSession.getMapper(QnaMapper.class).searchByTitle(title);
	} 
	
	@Override
	public List<QnaDto> searchByContent(String content) throws SQLException {
		return sqlSession.getMapper(QnaMapper.class).searchByContent(content);
	}
	
	@Override
	public int qnaRegister(QnaDto qnaDto) throws SQLException {
		return sqlSession.getMapper(QnaMapper.class).qnaRegister(qnaDto);
	}
	
	@Override
	public int qnaModify(QnaDto qnaDto) throws SQLException {
		return sqlSession.getMapper(QnaMapper.class).qnaModify(qnaDto);
	}
	
	@Override
	public int qnaDelete(int id) throws SQLException {
		return sqlSession.getMapper(QnaMapper.class).qnaDelete(id);
	}
	
}
