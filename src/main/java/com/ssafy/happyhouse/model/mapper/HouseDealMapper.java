package com.ssafy.happyhouse.model.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.HouseDealDto;

@Mapper
public interface HouseDealMapper {
	public List<HouseDealDto> searchByAptName(String AptName) throws SQLException;
	public List<HouseDealDto> searchByDong(String dong) throws SQLException;
	public List<HouseDealDto> searchByStationName(String stationName) throws SQLException;
}
