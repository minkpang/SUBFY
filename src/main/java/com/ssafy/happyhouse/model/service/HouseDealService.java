package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import com.ssafy.happyhouse.model.HouseDealDto;

public interface HouseDealService {
	List<HashMap<String, Object>> searchByAptName(String AptName) throws SQLException;
	List<HashMap<String, Object>> searchByDong(String dong) throws SQLException;
	List<HashMap<String, Object>> searchByStationName(String stationName) throws SQLException;
}
