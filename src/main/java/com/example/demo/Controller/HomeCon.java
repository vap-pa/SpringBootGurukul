package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeCon {

	@RequestMapping("/home")
	public String fir() {
		return "index";
		
	}
	
	@RequestMapping("/")
	public String first() {
		return "index";
		
	}
	
	@RequestMapping("/about")
	public String about() {
		return "index";
		
	}
	
	@RequestMapping("/gurukul")
	public String contect() {
		return "gurukul";
		
	}
	
	@RequestMapping("/contect")
	public String program() {
		return "contect";
		
	}
	@RequestMapping("/registration")
	public String ragistration() {
		return "Registration";
		
	}
	@RequestMapping("/update")
	public String update() {
		return "update";
		
	}
	@RequestMapping("/delete")
	public String delete() {
		return "delete";
		
	}
	@RequestMapping("/admin")
	public String admin() {
		return "Admin";
		
	}
	@RequestMapping("/adminportal")
	public String adminPortal() {
		return "AdminPortal";
		
	}
	
	@RequestMapping("/Course")
	public String Course() {
		return "Course";
		
	}
	
	@RequestMapping("/thankyou")
	public String thank() {
		return "thnakyou";
		
	}
}
