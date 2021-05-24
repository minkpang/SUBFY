package com.ssafy.happyhouse.model.mapper;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.HouseDealDto;


@Mapper
public interface HouseDealMapper {
	public List<HashMap<String, Object>> searchByAptName(String AptName) throws SQLException;
	public List<HashMap<String, Object>> searchByDong(String dong) throws SQLException;
	public List<HashMap<String, Object>> searchByStationName(String stationName) throws SQLException;
}
