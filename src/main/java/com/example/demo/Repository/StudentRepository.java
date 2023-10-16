package com.example.demo.Repository;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.Bean.BookCourse;
import com.example.demo.Bean.Student;

public interface StudentRepository extends CrudRepository<Student, String>{
	Student findByEmail(String email);
}
