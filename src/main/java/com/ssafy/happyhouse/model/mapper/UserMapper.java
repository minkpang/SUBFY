package com.ssafy.happyhouse.model.mapper;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.MemberDto;

public interface UserMapper {

	public MemberDto login(MemberDto memberDto) throws SQLException;
	public int update(MemberDto memberDto);
	public int delete(String userid);
	public MemberDto read(String userid);
	public int regist(MemberDto memberDto);
	public List<MemberDto> userList();
}
