package com.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springdemo.entity.Student;
import com.springdemo.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	
	@GetMapping("/list")
	public String listStudents(Model model) {
		
		List<Student> studentsList = studentService.getStudents();
		
		model.addAttribute("students" , studentsList);
		
		return "list-students";
	}
	
	
	
}
