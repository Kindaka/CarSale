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
import model.Product;
import utils.DBUtils;

/**
 *
 * @author admin
 */
public class ProductDAO {

    public List<Product> findAll() {
        List<Product> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tblSanPham";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6), rs.getBoolean(7), rs.getInt(8), rs.getString(9)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> findByName(String name) {
        List<Product> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tblSanPham WHERE tensp like ?";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, "%" + name + "%");
                rs = stm.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6), rs.getBoolean(7), rs.getInt(8), rs.getString(9)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> findByCategory(String id) {
        List<Product> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tblSanPham WHERE madm = ?";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, id);
                rs = stm.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6), rs.getBoolean(7), rs.getInt(8), rs.getString(9)));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Product findOne(String id) {
        Product product = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM tblSanPham WHERE masp = ?";
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, id);
                rs = stm.executeQuery();
                if (rs.next()) {
                    product = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getString(6), rs.getBoolean(7), rs.getInt(8), rs.getString(9));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }

    public boolean delete(String id) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        String sql = "DELETE tblSanPham WHERE masp = ?";

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

    public boolean update(Product dto) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;

        String sql = "UPDATE tblSanPham SET tensp=?, mota=?, soluong=?, dongia=?, hinhanh=?, trangthai=? , madm=? , mancc=? WHERE masp=?";

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                stm = conn.prepareStatement(sql);
                stm.setString(1, dto.getTensp());
                stm.setString(2, dto.getMota());
                stm.setInt(3, dto.getSoluong());
                stm.setDouble(4, dto.getDongia());
                stm.setString(5, dto.getHinhanh());
                stm.setBoolean(6, dto.getTrangthai());
                stm.setInt(7, dto.getMadm());
                stm.setString(8, dto.getMancc());
                stm.setInt(9, dto.getMasp());
                result = stm.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public boolean save(Product dto)  {
        boolean result = false;
        Connection conn = null;
        PreparedStatement stm = null;
        String sql = "insert into tblSanPham(tensp, mota, soluong, dongia, hinhanh, trangthai, madm,mancc) values(?,?,?,?,?,?,?,?)";
        try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            stm = conn.prepareStatement(sql);
            stm.setString(1, dto.getTensp());
            stm.setString(2, dto.getMota());
            stm.setInt(3, dto.getSoluong());
            stm.setDouble(4, dto.getDongia());
            stm.setString(5, dto.getHinhanh());
            stm.setBoolean(6, dto.getTrangthai());
            stm.setInt(7, dto.getMadm());
            stm.setString(8, dto.getMancc());
            result = stm.executeUpdate() > 0;
        }
        }catch(Exception e){
            e.printStackTrace();
        }
        return result;
    }

}
