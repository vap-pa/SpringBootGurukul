package com.example.demo.Repository;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.Bean.BookCourse;

public interface BookRepository extends CrudRepository<BookCourse, String> {

}
