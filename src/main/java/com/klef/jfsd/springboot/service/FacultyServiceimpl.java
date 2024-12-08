package com.klef.jfsd.springboot.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class FacultyServiceimpl implements FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;

    @Autowired
    private StudentRepository studentRepository;


    @Override
    public List<Student> viewAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Faculty checkFacultyLogin(String fusername, String fpassword) {
        return facultyRepository.checkFacultyLogin(fusername, fpassword);
    }


	@Override
	public String facultyRegistration(Faculty faculty) {
		 facultyRepository.save(faculty);  // Save the faculty object
	        return "Faculty Registration Successful"; 
	}

}
