package com.apollo.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {
	
	//need controller method to show html form
	@RequestMapping("/showForm")
	public String showForm() {
		return "hello-world-form";
	}

	//need controller method to process html form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	//new controller method to read form data and add data to the model
	
	@RequestMapping("/processFormVersionTwo")
	public String letsShout(HttpServletRequest request, Model model) {
		
		//read the request param from html form
		String theName=request.getParameter("studentName");
		
		//convert to all caps
		theName=theName.toUpperCase();
		
		//create the message
		String result=" YO! "+theName;
		
		//add message to model
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
}
