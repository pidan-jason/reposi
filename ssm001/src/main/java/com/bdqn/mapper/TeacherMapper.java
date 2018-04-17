package com.bdqn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.model.Teacher;

public interface TeacherMapper {

	List<Teacher> listAll();
	
	List<Teacher> selectTive(Teacher teacher);

	Teacher get(@Param("id")String id);

	int update(Teacher teacher);

	int delete(@Param("id")String id);

}
