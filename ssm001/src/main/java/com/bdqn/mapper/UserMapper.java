package com.bdqn.mapper;

import com.bdqn.model.User;

public interface UserMapper {

	/**
	 * 根据用户名密码查询用户
	 * @param user
	 * @return
	 */
	User selectTive(User user);

}
