package com.bdqn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.UserMapper;
import com.bdqn.model.User;
import com.bdqn.service.UserService;

@Service("UserService")
public class UserServiceImpl  implements UserService{

	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User login(User user) {
		User u = userMapper.selectTive(user);
		return u;
	}

}
