package com.ready.psb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ready.psb.service.userMapper;
import com.ready.psb.service.userService;
import com.ready.psb.service.userVO;

@Service("userService")
public class userServiceImpl implements userService{
	
	@Autowired
	private userMapper userMapper;

	@Override
	public List<userVO> selectList() throws Exception {
		return userMapper.selectList();
	}

	@Override
	public void userInsert(userVO userVO) throws Exception {
		userMapper.userInsert(userVO);
	}

	@Override
	public userVO userView(int user_id) throws Exception {
		
		return userMapper.userView(user_id);
	}

	@Override
	public void userUpdate(userVO userVO) throws Exception {

		userMapper.userUpdate(userVO);
	}

	@Override
	public void userDelete(int user_id) throws Exception {
		userMapper.userDelete(user_id);
	}

}
