package com.klef.jfsd.springboot.repository;
import org.springframework.data.jpa.repository.JpaRepository; 
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String> 
{

    @Query("SELECT a FROM Admin a WHERE a.username = ?1 AND a.password = ?2")
    public Admin checkAdminLogin(String uname, String pwd);
}
