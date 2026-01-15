package com.sdr.dao;

import java.util.List;
import com.sdr.model.Staff;

public interface StaffDAO {

    // ------------------ CREATE ------------------

    /**
     * Add new staff member
     * @param staff Staff object
     */
    void addStaff(Staff staff);

    // ------------------ READ ------------------

    /**
     * Fetch all staff members
     * @return List of Staff
     */
    List<Staff> getAllStaff();

    /**
     * Fetch staff by ID
     * @param staffId staff primary key
     * @return Staff object
     */
    Staff getStaffById(int staffId);

    /**
     * Login staff (ACTIVE only)
     * @param username staff username
     * @param password staff password
     * @return Staff object if valid
     */
    Staff login(String username, String password);

    /**
     * Fetch staff by username (useful for validation)
     * @param username staff username
     * @return Staff
     */
    Staff getStaffByUsername(String username);

    // ------------------ UPDATE ------------------

    /**
     * Update staff basic details (admin use)
     * @param staff Staff object
     */
    void updateStaff(Staff staff);

    /**
     * Update staff password
     * @param staffId staff id
     * @param password encrypted password
     */
    void updatePassword(int staffId, String password);

    /**
     * Activate or deactivate staff
     * @param staffId staff id
     * @param status ACTIVE / INACTIVE
     */
    void updateStatus(int staffId, String status);

    // ------------------ DELETE ------------------

    /**
     * Delete staff permanently (admin only)
     * @param staffId staff id
     */
    void deleteStaff(int staffId);
}
