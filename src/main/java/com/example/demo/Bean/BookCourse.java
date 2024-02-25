package com.example.demo.Bean;





import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;



@Entity
public class BookCourse {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String email;
	private String course;
	
	
	private Date date;
	public BookCourse() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookCourse(int id, String email, String course, Date date) {
		super();
		this.id = id;
		this.email = email;
		this.course = course;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "BookCourse [id=" + id + ", email=" + email + ", course=" + course + ", date=" + date + "]";
	}
		
	
	
}
