package com.klef.jfsd.springboot.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceimpl implements StudentService {
	
    @Autowired
    private StudentRepository studentRepository;


    @Autowired
    private CourseRepository courseRepository;
    
    @Override
    public String studentRegistration(Student student) 
    {
        studentRepository.save(student);
        return "Student Registration Successfull";
    }

    @Override
    public Student checkStudentLogin(String email, String password) 
    {
        return studentRepository.checkStudentLogin(email, password);
    }

	@Override
	public List<Course> getAllCourses() {
        return courseRepository.findAll();  
	}


}
