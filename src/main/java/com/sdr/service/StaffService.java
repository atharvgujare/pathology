package com.sdr.service;

import java.util.List;
import com.sdr.model.Staff;

public interface StaffService {

    // -------------------- CREATE --------------------

    /**
     * Add new staff member
     * @param staff Staff object
     */
    void addStaff(Staff staff);

    // -------------------- READ --------------------

    /**
     * Get all staff members
     * @return List of Staff
     */
    List<Staff> getAllStaff();

    /**
     * Get staff by ID
     * @param staffId staff primary key
     * @return Staff object
     */
    Staff getStaffById(int staffId);

    /**
     * Login staff (ACTIVE only)
     * @param username staff username
     * @param password staff password
     * @return Staff object if valid else null
     */
    Staff login(String username, String password);

    /**
     * Get staff by username
     * Used for duplicate username validation
     * @param username staff username
     * @return Staff object or null
     */
    Staff getStaffByUsername(String username);

    // -------------------- UPDATE --------------------

    /**
     * Update staff details
     * @param staff Staff object
     */
    void updateStaff(Staff staff);

    /**
     * Update staff password
     * @param staffId staff ID
     * @param password encrypted password
     */
    void updatePassword(int staffId, String password);

    /**
     * Activate or deactivate staff
     * @param staffId staff ID
     * @param status ACTIVE / INACTIVE
     */
    void updateStatus(int staffId, String status);

    // -------------------- DELETE --------------------

    /**
     * Delete staff permanently
     * @param staffId staff ID
     */
    void deleteStaff(int staffId);
}
