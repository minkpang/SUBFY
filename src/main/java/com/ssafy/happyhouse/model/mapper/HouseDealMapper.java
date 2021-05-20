package com.ssafy.happyhouse.model.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.happyhouse.model.HouseDealDto;

@Mapper
public interface HouseDealMapper {
	public List<HouseDealDto> selectByAptName(String AptName) throws SQLException;
	public List<HouseDealDto> selectByDong(String dong) throws SQLException;
}
