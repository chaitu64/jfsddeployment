package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "faculty_table")
public class Faculty {

    @Id
    @Column(name = "fusername", length = 50, nullable = false)
    private String fusername;

    @Column(name = "fpassword", length = 50, nullable = false)
    private String fpassword;

    // Getter for fusername
    public String getFusername() {
        return fusername;
    }

    // Setter for fusername
    public void setFusername(String fusername) {
        this.fusername = fusername;
    }

    // Getter for fpassword
    public String getFpassword() {
        return fpassword;
    }

    // Setter for fpassword
    public void setFpassword(String fpassword) {
        this.fpassword = fpassword;
    }
}
