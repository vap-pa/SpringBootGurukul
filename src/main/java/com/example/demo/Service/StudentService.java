package com.example.demo.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.stereotype.Service;

import com.example.demo.Bean.BookCourse;
import com.example.demo.Bean.Student;
import com.example.demo.Repository.BookRepository;
import com.example.demo.Repository.StudentRepository;
import com.mysql.cj.Query;
import com.mysql.cj.Session;
@Service
public class StudentService {

	@Autowired
	StudentRepository studentrepo;
	
	@Autowired
	BookRepository bookrepo;
	
	//for registration
	public boolean createStudent(Student stud) {
		Boolean result=false;
		 Student s1=studentrepo.save(stud);
		 if(s1!=null) {
			result=true; 
		 }
		 
		 return result;
	}
	
	//for get data All Student
	public List<Student> allstudent(){
		
		List<Student> subjects = new ArrayList();
		studentrepo.findAll().forEach(subjects::add);
		return subjects;
	}
	
	//for delete
	public Boolean delete(String email) {
		boolean result=false;
		Optional<Student> obj=studentrepo.findById(email);
		if(obj.isPresent()) {
			studentrepo.deleteById(email);
			result=true;
		}
		
		return result;
	}
	
	public Boolean update(Student stud) {
		 Boolean result=false;
		Optional<Student> s1= studentrepo.findById(stud.getEmail());
		if(s1.isPresent()) {
			studentrepo.save(stud);
			result=true;
		}
		 return result;
		 
		 
	}
	
	//for login
	public Boolean login(String email ,String password) {
		boolean result=false;
		Student user = studentrepo.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
           result=true;
         
        }
		
				return result;
	}
	
	//for save book Course In Database
	public Boolean getBook(BookCourse slot) {
		boolean result =  false;
		  BookCourse book1 = bookrepo.save(slot);
		  if(book1!=null) {
				result=true; 
			 }
	      return result;	
	}
	
	public List<BookCourse> retriveOrder(){
		List<BookCourse> data=new ArrayList<>();
		bookrepo.findAll().forEach(data::add);
		
		return data;
	}
	
}
