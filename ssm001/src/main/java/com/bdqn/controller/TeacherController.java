package com.bdqn.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bdqn.dto.TeacherDto;
import com.bdqn.model.Teacher;
import com.bdqn.service.TeacherService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

/**
 * 老师控制类
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/teacher")
public class TeacherController {


	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("/page")
	@ResponseBody
	public PageInfo<Teacher> list(Model model ,@RequestBody TeacherDto teacherDto) {
		Teacher t = teacherDto.getTeacher();
//		model.addAttribute("teacher", t);
		PageInfo page = teacherDto.getPage();
		PageInfo<Teacher> pageInfo =  teacherService.listPage(t,page.getPageNum()+1,page.getPageSize());
//		model.addAttribute("page", pageInfo);
		for(Teacher t2:pageInfo.getList()) {
			System.out.println(t2.getDept().getName() + t2.getPosition().getName() + t2.getName());
		}
		return  pageInfo;
	}
	
 
	
	@RequestMapping("/get/{id}")
	public String get( Model model,@PathVariable("id") String id) {
		Teacher teacher =  teacherService.get(id);
		model.addAttribute("teacher", teacher);
		return "teacherEdit";
	}
	
	@RequestMapping("/update")
	public String get( Teacher teacher) {
		int row  = teacherService.update(teacher);
		return "teacher";
	}
	
	@RequestMapping("/delete/{id}")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable("id") String id) {
		Map<String, Object> map = new HashMap<>();
		String msg = "删除失败";
		int row  = teacherService.delete(id);
		if(row == 1)
			msg = "删除成功";
		map.put("msg", msg);
		return map;
	}
	
}

















