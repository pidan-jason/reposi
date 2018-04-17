package com.bdqn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bdqn.model.User;
import com.bdqn.service.TeacherService;
import com.bdqn.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private TeacherService teacherService;

	
	@RequestMapping("/login")
	public String login(User user,Model model) {
		User u =  userService.login(user);
		if(u != null) {
			// 登录成功
			// 查询到所有的teacher分页，然后返回到老师主页面
//			teacherService
//			PageInfo<Teacher> pageInfo  = teacherService.listAll(1, 2);
//			model.addAttribute("page", pageInfo);
			return "teacher";
		} else {
			// 登录失败
			return "/";
		}
	}
}
