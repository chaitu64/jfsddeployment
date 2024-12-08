package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Faculty;  
import com.klef.jfsd.springboot.service.FacultyService;  

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FacultyController {

    private FacultyService facultyService;  

    public FacultyController(FacultyService facultyService) {
        this.facultyService = facultyService;
    }

    @GetMapping("/facultylogin")
    public ModelAndView facultyLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultylogin");  
        return mv;
    }

    @GetMapping("/facultyhome")
    public ModelAndView facultyHome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Facultyhome");  
        return mv;
    }
    
    @PostMapping("/checkFacultyLogin")
    public ModelAndView checkFacultyLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String fusername = request.getParameter("fusername");
        String fpassword = request.getParameter("fpassword");

        Faculty faculty = facultyService.checkFacultyLogin(fusername, fpassword);

        if (faculty != null) {
            mv.setViewName("facultyhome");  
        } else {
            mv.setViewName("facultylogin");  
            mv.addObject("errorMessage", "Login Failed! Invalid username or password.");  
        }

        return mv;
    }
    
    @PostMapping("/addfaculty")
    public ModelAndView insertFaculty(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Faculty faculty = new Faculty();  
        faculty.setFusername(username);
        faculty.setFpassword(password);

        String message = facultyService.facultyRegistration(faculty);  

        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");  
        mv.addObject("message", message);
        return mv;
    }
}
