package com.klef.jfsd.springboot.service;

import java.util.List; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceimpl implements AdminService {

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private FacultyRepository facultyRepository;

    @Autowired
    private CourseRepository courseRepository;

    AdminServiceimpl(CourseRepository courseRepository) {
        this.courseRepository = courseRepository;
    }

    @Override
    public List<Student> viewAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Admin checkAdminLogin(String uname, String pwd) {
        Admin admin = adminRepository.checkAdminLogin(uname, pwd);
        if (admin == null) {
            throw new IllegalArgumentException("Invalid username or password");
        }
        return admin;
    }

    @Override
    public List<Faculty> viewAllFaculty() {
        return facultyRepository.findAll();
    }

	@Override
	public String deletestudent(int id) {
	    studentRepository.deleteById(id);  // Correct instance method call
	    return "Student Deleted Successfully" ;
	}

	@Override
	public Student displaystudentbyid(int id) {
		return studentRepository.findById(id).get(); 
		 
	}

	@Override
	public String deletefaculty(String fusername) {
         facultyRepository.findById(fusername).get();
		return "Faculty Deleted Successfully" ;
	}

	
	@Override
	 public String addCourse(Course course) {
	        courseRepository.save(course); 
	        return "Course added successfully!";
	    }

	@Override
	    public List<Course> viewAllCourses() {
	        return courseRepository.findAll();  
	    }


}
