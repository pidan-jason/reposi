package com.bdqn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.model.Dept;
import com.bdqn.model.Position;

public interface DeptMapper {

	List<Dept> getAll();

	List<Position> getPositionByDeptId(@Param("id")String id);
}
