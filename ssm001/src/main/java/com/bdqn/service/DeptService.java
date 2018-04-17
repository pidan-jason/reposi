package com.bdqn.service;

import java.util.List;

import com.bdqn.model.Dept;
import com.bdqn.model.Position;

public interface DeptService {

	
	public List<Dept> getAll();

	public List<Position> getPositionByDeptId(String id);
}
