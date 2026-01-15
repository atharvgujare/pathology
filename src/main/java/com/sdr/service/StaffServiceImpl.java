package com.sdr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdr.dao.StaffDAO;
import com.sdr.model.Staff;

@Service
@Transactional
public class StaffServiceImpl implements StaffService {

    @Autowired
    private StaffDAO staffDAO;

    // -------------------- CREATE --------------------

    @Override
    public void addStaff(Staff staff) {
        staffDAO.addStaff(staff);
    }

    // -------------------- READ --------------------

    @Override
    public List<Staff> getAllStaff() {
        return staffDAO.getAllStaff();
    }

    @Override
    public Staff getStaffById(int staffId) {
        return staffDAO.getStaffById(staffId);
    }

    @Override
    public Staff login(String username, String password) {
        return staffDAO.login(username, password);
    }

    @Override
    public Staff getStaffByUsername(String username) {
        return staffDAO.getStaffByUsername(username);
    }

    // -------------------- UPDATE --------------------

    @Override
    public void updateStaff(Staff staff) {
        staffDAO.updateStaff(staff);
    }

    @Override
    public void updatePassword(int staffId, String password) {
        staffDAO.updatePassword(staffId, password);
    }

    @Override
    public void updateStatus(int staffId, String status) {
        staffDAO.updateStatus(staffId, status);
    }

    // -------------------- DELETE --------------------

    @Override
    public void deleteStaff(int staffId) {
        staffDAO.deleteStaff(staffId);
    }
}
