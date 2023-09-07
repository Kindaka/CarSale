/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Product;
import utils.DBUtils;

/**
 *
 * @author admin
 */
public class AccountDAO {

    public Account checkLogin(String username, String password) {
        Account account = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tblTaiKhoan WHERE tentk = ? AND matkhau = ?";
        try {
            con = DBUtils.getConnection();
            if (con != null) {
                ps = con.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2, password);
                rs = ps.executeQuery();
                if (rs.next()) {
                    account = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4), rs.getString(5), rs.getInt(6));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return account;
    }

    public List<Account> findAll() {
        List<Account> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tblTaiKhoan";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4), rs.getString(5), rs.getInt(6)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean delete(String id) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        String sql = "DELETE tblTaiKhoan WHERE id = ?";

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, id);
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean update(Account dto) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        String sql = "UPDATE tblTaiKhoan SET tentk=?, matkhau=?, trangthai=?, email=?, nhomtk=? WHERE id = ?";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, dto.getTentk());
                stm.setString(2, dto.getMatkhau());
                stm.setBoolean(3, dto.getTrangthai());
                stm.setString(4, dto.getEmail());
                stm.setInt(5, dto.getNhomtk());
                stm.setInt(6, dto.getId());
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean save(Account dto) throws ClassNotFoundException, SQLException {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        String sql = "insert into tblTaiKhoan(tentk, matkhau, trangthai, email, nhomtk) values(?,?,?,?,?)";
        conn = DBUtils.getConnection();
        if (conn != null) {
            stm = conn.prepareStatement(sql);
            stm.setString(1, dto.getTentk());
            stm.setString(2, dto.getMatkhau());
            stm.setBoolean(3, dto.getTrangthai());
            stm.setString(4, dto.getEmail());
            stm.setInt(5, dto.getNhomtk());
            result = stm.executeUpdate() > 0;
        }
        return result;
    }
}
