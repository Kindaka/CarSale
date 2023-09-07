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
import model.Product;
import utils.DBUtils;

/**
 *
 * @author admin
 */
public class CategoryDAO {

    public List<Category> findAll() {
        List<Category> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tblDanhMuc WHERE trangthai = 1";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    list.add(new Category(rs.getInt(1), rs.getString(2), rs.getBoolean(3)));
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
        String sql = "UPDATE tblDanhMuc SET trangthai = ?  WHERE madm = ?";
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

    public boolean update(Category dto) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;

        String sql = "UPDATE tblDanhMuc SET tendm = ? WHERE madm = ?";

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, dto.getTendm());
                stm.setInt(2, dto.getMadm());
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean save(Category dto) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        String sql = "insert into tblDanhMuc(tendm, trangthai) values(?,?)";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, dto.getTendm());
                stm.setBoolean(2, true);
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

}
