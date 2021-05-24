package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import com.ssafy.happyhouse.model.HouseDealDto;

public interface HouseDealService {
	List<HouseDealDto> searchByAptName(String AptName) throws SQLException;
	List<HouseDealDto> searchByDong(String dong) throws SQLException;
	List<HouseDealDto> searchByStationName(String stationName) throws SQLException;
}
