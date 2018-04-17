package com.bdqn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.TeacherMapper;
import com.bdqn.model.Teacher;
import com.bdqn.service.TeacherService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service("TeacherService")
public class TeacherServiceImpl implements TeacherService {
	
	@Autowired
	private TeacherMapper teacherMapper;
	

	@Override
	public PageInfo<Teacher> listAll(int i, int j) {
		PageHelper.startPage(i,j);
		List<Teacher> l = teacherMapper.listAll();
		PageInfo<Teacher> pageInfo = new PageInfo<Teacher>(l);
		pageInfo.setList(l);
		return pageInfo;
	}


	@Override
	public PageInfo<Teacher> listPage(Teacher teacher, Integer pageNum, int i) {
		PageHelper.startPage(pageNum,i);
		List<Teacher> l = teacherMapper.selectTive(teacher);
		PageInfo<Teacher> pageInfo = new PageInfo<Teacher>(l);
		pageInfo.setList(l);
		return pageInfo;
	}


	@Override
	public Teacher get(String id) {
		return teacherMapper.get(id);
	}


	@Override
	public int update(Teacher teacher) {
		return teacherMapper.update(teacher);
	}


	@Override
	public int delete(String id) {
		return teacherMapper.delete(id);
	}
	 

}
