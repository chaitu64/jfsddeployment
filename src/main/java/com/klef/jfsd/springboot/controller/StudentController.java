package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@SessionAttributes("student")  // Optional, if you want to store student data in session automatically
public class StudentController {
    
    @Autowired
    private StudentService studentService;
    
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");  // Set the name of the view to be rendered
        return mv;  // Return the ModelAndView object
    }

    @GetMapping("/contact")
    public ModelAndView contact() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("contact");  // Set the name of the view to be rendered
        return mv;  // Return the ModelAndView object
    }
    
    @GetMapping("/studentReg")
    public ModelAndView studentReg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentReg"); 
        return mv;
    }
    
    @GetMapping("/studenthome")
    public ModelAndView studentHome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studenthome");  // Ensure this matches the JSP file name 'studenthome.jsp'
        return mv;
    }

    @PostMapping("/insertstudent")  // Fixed the path by adding the leading '/'
    public ModelAndView insertStudent(HttpServletRequest request) {
        // Retrieving parameters from the HTTP request (form inputs)
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("date_of_birth");
        String department = request.getParameter("department");
        String email = request.getParameter("email");
        String location = request.getParameter("location");
        String contact = request.getParameter("contact");
        String password = request.getParameter("password");  // Retrieve password

        // Create a Student object and set the values
        Student student = new Student();
        student.setName(name);
        student.setGender(gender);
        student.setDateOfBirth(dob);
        student.setDepartment(department);
        student.setEmail(email);
        student.setLocation(location);
        student.setContact(contact);
        student.setPassword(password);  // Ensure password is set

        // Save the student and return the success view
        String message = studentService.studentRegistration(student);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");
        mv.addObject("message", message);
        return mv;
    }
    
    @PostMapping("/checkStudentLogin")  // Fixed the path by adding the leading '/'
    public ModelAndView checkStudentLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Retrieve parameters from the request (form inputs)
        String semail = request.getParameter("semail");
        String spwd = request.getParameter("spwd");

        // Use the injected studentService to check login
        Student student = studentService.checkStudentLogin(semail, spwd);

        if (student != null) {
            HttpSession session = request.getSession();
            session.setAttribute("student", student);  // Store student in session

            mv.setViewName("studenthome"); // Ensure the view matches the JSP file name
        } else {
            mv.setViewName("studentloginfail"); // Redirect to login failure page
            mv.addObject("msg", "Login Failed"); // Add error message
        }

        return mv;
    }

    @GetMapping("/studentprofile")
    public ModelAndView studentprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentprofile"); 
        return mv;
    }

    @GetMapping("/studentlogin")
    public ModelAndView studentLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentlogin"); 
        return mv;
    }

    @GetMapping("/spagefeedback")
    public ModelAndView spagefeedback() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("spagefeedback"); 
        return mv;
    }
    
    
   
}
