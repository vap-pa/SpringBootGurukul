package com.example.demo.Repository;

import org.springframework.data.repository.CrudRepository;
import org.yaml.snakeyaml.events.Event.ID;

import com.example.demo.Bean.Student;

public interface StudentRepository extends CrudRepository<Student, Integer>{
	Student findByEmail(String email);
}
