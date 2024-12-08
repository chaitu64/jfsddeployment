package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Faculty;

public interface FacultyService {
    List<Student> viewAllStudents();
    Faculty checkFacultyLogin(String fusername, String fpassword);
    
    public String facultyRegistration(Faculty faculty);

    
}

