package com.example.demo.Service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.stereotype.Service;

import com.example.demo.Bean.Student;
import com.example.demo.Repository.StudentRepository;
import com.mysql.cj.Query;
import com.mysql.cj.Session;
@Service
public class StudentService {

	@Autowired
	StudentRepository studentrepo;
	
	public int createStudent(Student stud) {
		 studentrepo.save(stud);
		 int x=1;
		 return x;
	}
	
	
	public List<Student> allstudent(){
		
		List<Student> subjects = new ArrayList();
		studentrepo.findAll().forEach(subjects::add);
		return subjects;
	}
	public int delete(Student stud) {
		studentrepo.deleteById(stud.getId());
		return 1;
	}
	
	public int update(Student stud) {
		 studentrepo.save(stud);
		 return 1;
		 
		 
	}
	public Student login(String email ,String password) {
		Student user = studentrepo.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            // Login successful
            return user;
        }
		
				return null;
	}
}
