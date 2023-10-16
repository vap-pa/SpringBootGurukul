package com.example.demo.Bean;





import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;



@Entity
public class BookCourse {

	@Id
	private String email;
	private String course;
	
	
	private Date date;
	public BookCourse() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookCourse(String email, String course, Date date) {
		super();
		this.email = email;
		this.course = course;
		this.date = date;
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
		return "BookCourse [email=" + email + ", course=" + course + ", date=" + date + "]";
	}
	
	
	
	
}
