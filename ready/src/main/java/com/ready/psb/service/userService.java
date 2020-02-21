package com.ready.psb.service;

import java.util.List;

public interface userService {

	public List<userVO> selectList()throws Exception;
	
	public void userInsert(userVO userVO)throws Exception;

	public userVO userView(int user_id)throws Exception;

	public void userUpdate(userVO userVO)throws Exception;

	public void userDelete(int user_id)throws Exception;
	
}
