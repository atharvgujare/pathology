package com.sdr.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Staff implements Serializable {

    private static final long serialVersionUID = 1L;

    private int staffId;
    private String firstName;
    private String lastName;
    private String gender;
    private String email;
    private String mobile;
    private String role;      // ADMIN, TECHNICIAN, RECEPTIONIST
    private String username;
    private String password;
    private String status;    // ACTIVE, INACTIVE
    private Timestamp createdAt;

    // ------------------ Constructors ------------------

    public Staff() {
        // Default constructor required by Spring & JDBC
    }

    public Staff(int staffId, String firstName, String lastName, String gender,
                 String email, String mobile, String role, String username,
                 String password, String status, Timestamp createdAt) {
        this.staffId = staffId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.email = email;
        this.mobile = mobile;
        this.role = role;
        this.username = username;
        this.password = password;
        this.status = status;
        this.createdAt = createdAt;
    }

    // ------------------ Getters & Setters ------------------

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

   
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    // ------------------ Utility Methods ------------------

    public String getFullName() {
        return firstName + " " + lastName;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "staffId=" + staffId +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", gender='" + gender + '\'' +
                ", email='" + email + '\'' +
                ", mobile='" + mobile + '\'' +
                ", role='" + role + '\'' +
                ", username='" + username + '\'' +
                ", status='" + status + '\'' +
                ", createdAt=" + createdAt +
                '}';
    }
}
