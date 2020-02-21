package com.ready.psb.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface userMapper {
	
	public List<userVO> selectList()throws Exception;

	public void userInsert(userVO userVO)throws Exception;
	
	public userVO userView(int user_id)throws Exception;
	
	public void userUpdate(userVO userVO)throws Exception;
	
	public void userDelete(int user_id)throws Exception;
}
