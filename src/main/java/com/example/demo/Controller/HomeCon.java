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
	@RequestMapping("/ragistration")
	public String ragistration() {
		return "Ragistration";
		
	}
	@RequestMapping("/update")
	public String update() {
		return "update";
		
	}
	@RequestMapping("/delete")
	public String delete() {
		return "delete";
		
	}
}
