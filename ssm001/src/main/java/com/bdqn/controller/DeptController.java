package com.bdqn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bdqn.model.Dept;
import com.bdqn.model.Position;
import com.bdqn.service.DeptService;


 
@RequestMapping("/dept")
@Controller
public class DeptController {

	@Autowired
	private DeptService deptService;
	
	@RequestMapping("/all")
	@ResponseBody
	public List<Dept> getAllDept() {
		List<Dept> depts = deptService.getAll();
		return depts;
	}
	
	/**
	 * 根据部门id获取所有的岗位
	 * @param id
	 * @return
	 */
	@RequestMapping("/{deptId}")
	@ResponseBody
	public List<Position> getPositionByDeptId(@PathVariable("deptId") String id) {
		List<Position> positions = deptService.getPositionByDeptId(id);
		return positions;
	}
}
