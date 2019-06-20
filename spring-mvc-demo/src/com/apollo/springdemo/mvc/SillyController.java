package com.apollo.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SillyController {
		//need controller method to show html form
	
		@RequestMapping("/showForm")
		public String displayForm() {
			return "silly";
		}


}
