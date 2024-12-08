package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column; 
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Student")
public class Student {
    // Primary key
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "student_id", unique = true, nullable = false)
    private int id;
    
    @Column(name = "name", nullable = false, length = 100)  // Increased length for name
    private String name;

    @Column(name = "gender", nullable = false, length = 10)  // Reduced length for gender
    private String gender;


    @Column(name = "date_of_birth", nullable = false)
    private String dateOfBirth;  // Consider using LocalDate here

    @Column(name = "department", nullable = false, length = 100)  // Suitable for hashed passwords
    private String department;
    
    @Column(name = "email", unique = true, nullable = false, length = 100)  // Increased length for email
    private String email;
    
    @Column(name = "contact", nullable = false, length = 15)  // Reduced length to 15 for contact number
    private String contact;

    
    @Column(name = "location", nullable = false, length = 100)  // Increased length for location
    private String location;

    @Column(name = "password", nullable = false, length = 100)  // Suitable for hashed passwords
    private String password;


    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
