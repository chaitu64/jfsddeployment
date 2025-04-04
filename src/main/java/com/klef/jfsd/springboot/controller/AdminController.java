package com.klef.jfsd.springboot.controller;

import java.util.List;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    // Show the Admin Login page
    @GetMapping("/adminLogin")
    public ModelAndView adminLogin() {
        return new ModelAndView("AdminLogin");
    }

    // Admin Home page
    @GetMapping("/adminhome")
    public ModelAndView adminHome() {
        return new ModelAndView("Adminhome");
    }

    @PostMapping("/checkadminlogin")
    public ModelAndView checkAdminLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        // Use the injected adminService to call the non-static method
        Admin admin = adminService.checkAdminLogin(auname, apwd); 

        if (admin != null) {
            mv.setViewName("Adminhome");
        } else {
            // Failed login
            mv.setViewName("adminloginfail"); // Redirect to login failure page
            mv.addObject("msgs", "Login Failed"); // Add error message
        }

        return mv;
    }
    

    // View all students
    @GetMapping("/viewallstudents")
    public ModelAndView viewAllStudents() {
        ModelAndView mv = new ModelAndView("viewallstudents");

        List<Student> students = adminService.viewAllStudents();
        mv.addObject("studentList", students);

        return mv;
    }
    
    @GetMapping("/deletestudent")
    public ModelAndView deleteStudent() {
        // Create a ModelAndView object
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deletestudent");

        
        List<Student> students = adminService.viewAllStudents();
        mv.addObject("studentList", students);
        return mv;
    }

    
    @GetMapping("delete")
    public String delete(@RequestParam int id) {
        adminService.deletestudent(id);
        return "redirect:/deletestudent";    
    }
    @PostMapping("/displaystudent")
    public ModelAndView displayStudent(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("studentId")); // Use the name 'studentId' from the form
        Student student = adminService.displaystudentbyid(id); // Fetch the student by ID from the service
        ModelAndView mv = new ModelAndView("displaystudent"); // Make sure it points to the correct JSP view
        mv.addObject("student", student); // Add the student object to the model
        return mv;
    }

    
    @GetMapping("/viewallfaculty")
    public ModelAndView viewAllFaculty() {
        ModelAndView mv = new ModelAndView("viewallfaculty");
        List<Faculty> facultyList = adminService.viewAllFaculty();
        mv.addObject("facultyList", facultyList);
        return mv;
    }

    @GetMapping("/deletefaculty")
    public ModelAndView deleteFaculty() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deletefaculty"); // your JSP page to display faculty list
        
        List<Faculty> facultyList = adminService.viewAllFaculty();
        mv.addObject("facultyList", facultyList);
        return mv;
    }

    @GetMapping("/deletefaculty/{fusername}")
    public String deleteFaculty(@PathVariable String fusername, RedirectAttributes redirectAttributes) {
        try {
            adminService.deletefaculty(fusername);
            redirectAttributes.addFlashAttribute("message", "Faculty deleted successfully!");
            redirectAttributes.addFlashAttribute("messageType", "success");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("message", "Error deleting faculty.");
            redirectAttributes.addFlashAttribute("messageType", "error");
        }
        return "redirect:/deletefaculty";
    }
    
    
    @GetMapping("/addfaculty")
    public ModelAndView addfaculty() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addfaculty"); 
        return mv;
    }
    
    
    
    

    @GetMapping("/addcourse")
    public String addcourse()
    {
    	return "addcourse";
    }
    
    
    @PostMapping("/insertcourse")
    public ModelAndView insertCourse(HttpServletRequest request) {
        // Retrieve course details from request parameters
        String name = request.getParameter("name");  // Course name
        double credits = Double.parseDouble(request.getParameter("credits"));  // Course credits
        String description = request.getParameter("description");  // Course description

        // Create a new Course object and set its properties
        Course course = new Course();
        course.setName(name);
        course.setCredits(credits);
        course.setDescription(description);

        // Call the service to add the course
        String message = adminService.addCourse(course);

        // Prepare ModelAndView to return the success view
        ModelAndView mv = new ModelAndView();
        mv.setViewName("courseisadded");  // View name for success page
        mv.addObject("message", message);  // Add the success message to the view

        return mv;  // Return ModelAndView with the success message
    }

    
    @GetMapping("/viewallcourse")
    public ModelAndView viewAllCourses() {
        ModelAndView mv = new ModelAndView("viewallcourse");
        List<Course> courses = adminService.viewAllCourses();
        mv.addObject("courseList", courses);
        return mv;
    }

    
    @GetMapping("/studentseeallcourses")
    public ModelAndView studentseeallcourses() {
        ModelAndView mv = new ModelAndView("studentseeallcourses");
        List<Course> courses = adminService.viewAllCourses();
        mv.addObject("courseList", courses);
        return mv;
    }
    
    

    @GetMapping("/Timetable")
    public ModelAndView Timetable() {
        return new ModelAndView("Timetable");
    }

    @GetMapping("/studentregistration")
    public ModelAndView studentregistration() {
        return new ModelAndView("studentregistration");
    }


    @GetMapping("/generate-timetable")
    public ModelAndView generateTimetable()
    {
        return new ModelAndView("Timetable");
    }
    
}
    
#nuvvu pedda yedava
