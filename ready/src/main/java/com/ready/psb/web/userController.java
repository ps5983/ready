package com.ready.psb.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ready.psb.service.userService;
import com.ready.psb.service.userVO;

@Controller
public class userController {

	
	@Autowired
	private userService userService;
	
	@RequestMapping("/userList")
	public String userList(Model model)throws Exception{
		List<userVO> list = userService.selectList();
		model.addAttribute("usermodel",list);
		return "userList";
	}
	
	@RequestMapping(value = "/userInsert", method=RequestMethod.GET)
	public String userInsert()throws Exception{
		
		return "userInsert";
	}
	
	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public String userInsertProc(userVO userVO)throws Exception{
		userService.userInsert(userVO);
		return "redirect:/userList";
	}
	
	@RequestMapping("/userView")
	public String userView(int user_id,ModelMap model)throws Exception{
		userVO userVO = userService.userView(user_id);
		model.addAttribute("usermodel", userVO);
		
		return "userView";
	}
	
	@RequestMapping(value = "/userUpdate", method=RequestMethod.GET)
	public String userUpdate(
			int user_id,Model model
			)throws Exception{
		userVO userVO = userService.userView(user_id);
		model.addAttribute("usermodel",userVO);
		return "userUpdate";
	}
	
	@RequestMapping(value = "/userUpdate", method=RequestMethod.POST)
	public String userUpdateProc(
			userVO userVO
			)throws Exception{
		
		userService.userUpdate(userVO);
		return "redirect:/userView?user_id="+userVO.getUSER_ID();
	}
	
	@RequestMapping("/userDelete")
	public String userDelete(int user_id)throws Exception{
		userService.userDelete(user_id);
		
		return "redirect:/userList";
	}
}
