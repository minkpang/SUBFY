package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.HashMap;
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
	public List<HashMap<String, Object>> searchByAptName(String AptName) throws SQLException {
		return sqlSession.getMapper(HouseDealMapper.class).searchByAptName(AptName);
	}

	@Override
	public List<HashMap<String, Object>> searchByDong(String dong) throws SQLException {
		return sqlSession.getMapper(HouseDealMapper.class).searchByDong(dong);
	}
	
	@Override
	public List<HashMap<String, Object>> searchByStationName(String stationName) throws SQLException {
		return sqlSession.getMapper(HouseDealMapper.class).searchByStationName(stationName);
	}
}
