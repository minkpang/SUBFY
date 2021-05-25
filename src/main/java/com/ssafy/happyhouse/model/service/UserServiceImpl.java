package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberDto login(MemberDto memberDto) throws Exception {
		return sqlSession.getMapper(UserMapper.class).login(memberDto);
	}

	@Override
	public String getServerInfo() {
		return "사용자에게 전달하고 싶은 중요정보";
	}

	@Override
	public boolean regist(MemberDto memberDto) throws Exception {
		return sqlSession.getMapper(UserMapper.class).regist(memberDto) == 1;
	}

	@Override
	public MemberDto read(String userid) throws Exception {
		return sqlSession.getMapper(UserMapper.class).read(userid);
	}

	@Override
	public boolean update(MemberDto memberDto) throws Exception {
		return sqlSession.getMapper(UserMapper.class).update(memberDto) == 1;
	}

	@Override
	public boolean delete(String userid) throws Exception {
		return sqlSession.getMapper(UserMapper.class).delete(userid) == 1;
	}
	 
	@Override
	public List<MemberDto> userList() throws Exception {
		return sqlSession.getMapper(UserMapper.class).userList();
	}
}
