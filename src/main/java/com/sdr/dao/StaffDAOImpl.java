package com.sdr.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.sdr.model.Staff;

@Repository
public class StaffDAOImpl implements StaffDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // -------------------- CREATE --------------------

    @Override
    public void addStaff(Staff staff) {
        String sql = "INSERT INTO staff " +
                     "(first_name, last_name, gender, email, mobile, role, username, password, status) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'ACTIVE')";

        jdbcTemplate.update(sql,
                staff.getFirstName(),
                staff.getLastName(),
                staff.getGender(),
                staff.getEmail(),
                staff.getMobile(),
                staff.getRole(),
                staff.getUsername(),
                staff.getPassword()
        );
    }

    // -------------------- READ --------------------

    @Override
    public List<Staff> getAllStaff() {
        String sql = "SELECT * FROM staff ORDER BY staff_id DESC";
        return jdbcTemplate.query(sql,
                new BeanPropertyRowMapper<>(Staff.class));
    }

    @Override
    public Staff getStaffById(int staffId) {
        String sql = "SELECT * FROM staff WHERE staff_id = ?";
        return jdbcTemplate.queryForObject(sql,
                new BeanPropertyRowMapper<>(Staff.class),
                staffId);
    }

    @Override
    public Staff getStaffByUsername(String username) {
        String sql = "SELECT * FROM staff WHERE username = ?";
        try {
            return jdbcTemplate.queryForObject(sql,
                    new BeanPropertyRowMapper<>(Staff.class),
                    username);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    @Override
    public Staff login(String username, String password) {
        String sql = "SELECT * FROM staff " +
                     "WHERE username = ? AND password = ? AND status = 'ACTIVE'";
        try {
            return jdbcTemplate.queryForObject(sql,
                    new BeanPropertyRowMapper<>(Staff.class),
                    username, password);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // -------------------- UPDATE --------------------

    @Override
    public void updateStaff(Staff staff) {
        String sql = "UPDATE staff SET " +
                     "first_name = ?, " +
                     "last_name = ?, " +
                     "gender = ?, " +
                     "email = ?, " +
                     "mobile = ?, " +
                     "role = ?, " +
                     "status = ? " +
                     "WHERE staff_id = ?";

        jdbcTemplate.update(sql,
                staff.getFirstName(),
                staff.getLastName(),
                staff.getGender(),
                staff.getEmail(),
                staff.getMobile(),
                staff.getRole(),
                staff.getStatus(),
                staff.getStaffId()
        );
    }

    @Override
    public void updatePassword(int staffId, String password) {
        String sql = "UPDATE staff SET password = ? WHERE staff_id = ?";
        jdbcTemplate.update(sql, password, staffId);
    }

    @Override
    public void updateStatus(int staffId, String status) {
        String sql = "UPDATE staff SET status = ? WHERE staff_id = ?";
        jdbcTemplate.update(sql, status, staffId);
    }

    // -------------------- DELETE --------------------

    @Override
    public void deleteStaff(int staffId) {
        String sql = "DELETE FROM staff WHERE staff_id = ?";
        jdbcTemplate.update(sql, staffId);
    }
}
