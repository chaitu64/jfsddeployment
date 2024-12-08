package com.klef.jfsd.springboot.service;

import java.util.List; 

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService {

    Admin checkAdminLogin(String uname, String pwd);
	
    List<Student> viewAllStudents();
        
    List<Faculty> viewAllFaculty();
  
    public List<Course> viewAllCourses();
    
    public String deletestudent(int id);
    
    public Student displaystudentbyid(int id);
    
    public String deletefaculty(String fusername);

    public String addCourse(Course course);
    
    
}
