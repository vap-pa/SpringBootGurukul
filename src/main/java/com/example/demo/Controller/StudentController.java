package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Bean.Student;
import com.example.demo.Service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService studentservice;
	
	
	@RequestMapping(path = "/ragistration", method = RequestMethod.POST)
	public String create(@ModelAttribute("stud") Student stud,Model model) {
		System.out.println(stud);
		int createStudent = this.studentservice.createStudent(stud);
		if(createStudent!=0) {
			model.addAttribute("msg","Ragistration Succesful "+stud.getName());
		}
		return "Ragistration";
	}
	//for get all student
	@RequestMapping(path = "/allStudent")
	public String getstudent(@ModelAttribute("stud") Student stud,Model model) {
		System.out.println(stud);
		List<Student> allstud = this.studentservice.allstudent();
		if(allstud!=null) {
			model.addAttribute("allstud",allstud);
		}
		return "allStudent";
	}
	//for Update
	@RequestMapping(path = "/updatestud",method = RequestMethod.POST)
	public String update(@ModelAttribute("stud") Student stud,Model model) {
		System.out.println(stud);
		int x = this.studentservice.update(stud);
		if(x==1) {
			model.addAttribute("up","Student Updated "+stud.getName());
		}
		return "update";
	}
	
	
	
	//for delete
	@RequestMapping(path = "/delete",method = RequestMethod.POST)
	public String delete(@ModelAttribute("stud") Student stud,Model model) {
		System.out.println(stud);
		int x = this.studentservice.delete(stud);
		if(x==1) {
			model.addAttribute("del","Student Deleted "+stud.getId());
		}
		return "delete";
	}
	
	
	//for logins
	
	  @RequestMapping(path = "/login",method = RequestMethod.POST) public String
	  login(@RequestParam("email") String em,@RequestParam("password") String
	  pwd,Model model) {
		  Student s1 =this.studentservice.login(em, pwd);
	  if(s1!=null) {
		  model.addAttribute("stud","Welcome "+s1.getName()); 
		  return "index";
	  }else {
	  model.addAttribute("stud", "Wroung EmailId Password ");
	  return "gurukul"; 
	  }
	  
	 
	  
	  }
	 
	
}
