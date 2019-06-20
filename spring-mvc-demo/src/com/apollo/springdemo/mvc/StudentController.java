package com.apollo.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		
		//create object
		Student theStudent=new Student();
		
		//add object to model
		theModel.addAttribute("student",theStudent);
		
		return "student-form";
	}
	
	@RequestMapping("/processForm")
	public String showForm(@ModelAttribute("student") Student theStudent) {
	
		//log input data
		System.out.println("Student info: "+theStudent.getFirstName()+" "+ theStudent.getLastName());
		
		return "student-confirmation";
	}	
}
