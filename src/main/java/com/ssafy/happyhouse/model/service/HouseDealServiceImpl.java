package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.happyhouse.model.mapper.HouseDealMapper;

@Service
public class HouseDealServiceImpl implements HouseDealService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<HouseDealDto> searchByAptName(String AptName) throws SQLException {
		return sqlSession.getMapper(HouseDealMapper.class).selectByAptName(AptName);
	}

	@Override
	public List<HouseDealDto> searchByDong(String dong) throws SQLException {
		return sqlSession.getMapper(HouseDealMapper.class).selectByDong(dong);
	}
}
