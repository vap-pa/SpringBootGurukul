package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Bean.BookCourse;
import com.example.demo.Bean.Student;
import com.example.demo.Service.StudentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

	@Autowired
	StudentService studentservice;
	
	
	
	
	@RequestMapping(path = "/adminLogin" ,method = RequestMethod.POST)
	public String adminLogin(@RequestParam("email")String email,@RequestParam("password")String password,Model model) {
		
		String target="";
		if(email.equals("vap07@gmail.com")&&password.equals("0716")) {
		target="AdminPortal";
			model.addAttribute("admin","Welcome Vap");
		}else {
			target="Admin";
			model.addAttribute("admin","wroung Id and Password");
			
		}
		return target;
	}
	
	
	
	//For Student Registration
	@RequestMapping(path = "/registration", method = RequestMethod.POST)
	public String create(@ModelAttribute("stud") Student stud,Model model) {
		System.out.println(stud);
		Boolean result = this.studentservice.createStudent(stud);
		if(result) {
			model.addAttribute("msg","Registration Successfull "+stud.getName());
		}else {
			model.addAttribute("msg","this EmailId alerady Exist "+stud.getName());
		}
		return "Registration";
	}
	//for get all student
	@RequestMapping(path = "/allStudent")
	public String getstudent(@ModelAttribute("stud") Student stud,Model model) {
		System.out.println(stud);
		List<Student> allstud = this.studentservice.allstudent();
		if(allstud!=null) {
			model.addAttribute("allstud",allstud);
		}else {
			model.addAttribute("msg","No student Find");
		}
		return "allStudent";
	}
	//for Update
	@RequestMapping(path = "/updatestud",method = RequestMethod.POST)
	public String update(@ModelAttribute("stud") Student stud,Model model) {
		
		boolean result = this.studentservice.update(stud);
		if(result) {
			model.addAttribute("up","Student Updated "+stud.getName());
		}else {
			model.addAttribute("up","we can not find this Email "+stud.getEmail());
		}
		return "update";
	}
	
	
	
	//for delete
	@RequestMapping(path = "/delete",method = RequestMethod.POST)
	public String delete(@RequestParam("email")String email,Model model) {
		
		boolean x = this.studentservice.delete(email);
		if(x) {
			model.addAttribute("del","Student Deleted "+email);
		}else {
			model.addAttribute("del","Wrong Id "+email);
		}
		return "delete";
	}
	
	
	//for logins
	
	  @RequestMapping(path = "/login",method = RequestMethod.POST) public String
	  login(@RequestParam("email") String em,@RequestParam("password") String
	  pwd,Model model) {
		  String target="";
		  boolean result=this.studentservice.login(em, pwd);
	  if(result) {
		  model.addAttribute("stud",em); 
		  
		  target="Course";
	  }else {
	  model.addAttribute("stud", "Wrong EmailId and Password ");
	  target="gurukul";
	  }
	  return target;
	  }
	 
	  //book Course
	  @RequestMapping(path = "/book" ,method = RequestMethod.POST)
	  public String book(@ModelAttribute("slot")BookCourse slot, Model model) {
          String target= "";   
		  boolean result = this.studentservice.getBook(slot);
              if(result) {
        		  model.addAttribute("msg","join book Course"); 
        		  
        		  target="thnakyou";
        	  }else {
        	  model.addAttribute("msg", "could not join this Book Course ");
        	  target="Course";
        	  }
        
        	return target;  
	  }
	  @RequestMapping(path="/allOrder")
	  public String getOrder(Model model){
	List<BookCourse> list=	studentservice.retriveOrder();
		  model.addAttribute("orderdata",list);
		 
		  return "AllOrder";
	  }
	  
	
}
