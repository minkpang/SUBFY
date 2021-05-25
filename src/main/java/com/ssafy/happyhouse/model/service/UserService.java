package com.ssafy.happyhouse.model.service;

import java.util.List;
import java.util.Map;

import com.ssafy.happyhouse.model.MemberDto;

public interface UserService {
	public MemberDto login(MemberDto memberDto) throws Exception;
	public boolean regist(MemberDto memberDto) throws Exception;
	public MemberDto read(String userid) throws Exception;
	public boolean update(MemberDto memberDto) throws Exception;
	public boolean delete(String userid) throws Exception;
	public String getServerInfo();
	public List<MemberDto> userList() throws Exception;
}
