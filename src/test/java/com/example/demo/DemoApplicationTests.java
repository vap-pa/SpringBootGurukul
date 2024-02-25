package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.Repository.StudentRepository;

@SpringBootTest
class DemoApplicationTests {

	@Autowired
	StudentRepository st;
	@Test
	void contextLoads() {
		String name = this.st.getClass().getName();
		System.out.println(name);
	}

}
