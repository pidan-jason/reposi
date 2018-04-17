package com.bdqn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.DeptMapper;
import com.bdqn.model.Dept;
import com.bdqn.model.Position;
import com.bdqn.service.DeptService;

@Service("DeptService")
public class DeptServiceImpl  implements DeptService{

	@Autowired
	private DeptMapper deptMapper;
	
	
	public List<Dept> getAll(){
		return deptMapper.getAll();
	}


	@Override
	public List<Position> getPositionByDeptId(String id) {
		return deptMapper.getPositionByDeptId(id);
	}
}
