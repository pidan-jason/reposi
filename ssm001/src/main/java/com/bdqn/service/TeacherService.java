package com.bdqn.service;

import com.bdqn.model.Teacher;
import com.github.pagehelper.PageInfo;

public interface TeacherService {

	
	/**
	 * 查询所有的老师
	 * @param i
	 * @param j
	 * @return
	 */
	PageInfo<Teacher> listAll(int i, int j);

	PageInfo<Teacher> listPage(Teacher teacher, Integer pageNum, int i);

	Teacher get(String id);

	int update(Teacher teacher);

	int delete(String id);

}
