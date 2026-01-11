package com.sdr.dao;

import java.sql.*;

import com.sdr.model.User;
import com.sdr.util.DBUtil;

public class UserDAO {

    // LOGIN
    public static boolean login(String username, String password) {
        try {
            Connection con = DBUtil.getConnection();
            String sql = "SELECT * FROM users WHERE username=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            return rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // REGISTER
    public static boolean register(User user) {
        try {
            Connection con = DBUtil.getConnection();
            String sql = "INSERT INTO users(name, username, mobile, email, birthdate, password) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getMobile());
            ps.setString(4, user.getEmail());
            ps.setDate(5, user.getBirthdate());
            ps.setString(6, user.getPassword());

            int rows = ps.executeUpdate();
            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
