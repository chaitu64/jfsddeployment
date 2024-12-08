package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository; 
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Faculty;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, String> {

    @Query("SELECT f FROM Faculty f WHERE f.fusername = ?1 AND f.fpassword = ?2")
    public Faculty checkFacultyLogin(String fusername, String fpassword);
}
