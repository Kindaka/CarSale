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
import model.Category;
import model.GroupAccount;
import utils.DBUtils;

/**
 *
 * @author admin
 */
public class GroupAccountDAO {

    public List<GroupAccount> findAll() {
        List<GroupAccount> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tblNhomTaiKhoan WHERE trangthai = 1";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    list.add(new GroupAccount(rs.getInt(1), rs.getString(2), rs.getBoolean(3)));
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
        String sql = "UPDATE tblNhomTaiKhoan SET trangthai = ?  WHERE nhomtk = ?";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setBoolean(1, false);
                stm.setString(2, id);
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean update(GroupAccount dto) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;

        String sql = "UPDATE tblNhomTaiKhoan SET mota = ? WHERE nhomtk = ?";

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, dto.getMota());
                stm.setInt(2, dto.getNhomtk());
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean save(GroupAccount dto) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        String sql = "insert into tblNhomTaiKhoan(mota, trangthai) values(?,?)";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, dto.getMota());
                stm.setBoolean(2, true);
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

}
