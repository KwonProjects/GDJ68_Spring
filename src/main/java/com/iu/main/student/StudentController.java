package com.iu.main.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/student/*")
public class StudentController {

	@Autowired
	StudentService service;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView getList(ModelAndView mv) throws Exception {

		List<StudentDTO> list = service.getList();

		mv.addObject("list", list);
		mv.setViewName("student/list");
		return mv;
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String addStudent(StudentDTO studentDTO) throws Exception {

		return "student/add";
	}

	@RequestMapping(value = "add",method = RequestMethod.POST)
	public ModelAndView addStudent(StudentDTO studentDTO,ModelAndView mv) throws Exception {
		int result = service.addStudent(studentDTO);
		mv.setViewName("sendredirect:./list");
		
		return mv;  
	}

	/*
	 * public ModelAndView getDetail(StudentDTO studentDTO, ModelAndView mv)throws
	 * Exception{
	 * 
	 * studentDTO = service.getDetail() }
	 */
}
