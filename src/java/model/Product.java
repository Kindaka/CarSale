/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Product {

    private Integer masp;
    private String tensp;
    private String mota;
    private Integer soluong;
    private Double dongia;
    private String hinhanh;
    private Boolean trangthai;
    private String mancc;
    private Integer madm;

    public Product(Integer masp, String tensp, String mota, Integer soluong, Double dongia, String hinhanh, Boolean trangthai, Integer madm, String mancc) {
        this.masp = masp;
        this.tensp = tensp;
        this.mota = mota;
        this.soluong = soluong;
        this.dongia = dongia;
        this.hinhanh = hinhanh;
        this.trangthai = trangthai;
        this.mancc = mancc;
        this.madm = madm;
    }

    public Product() {
    }

    public Product(Integer masp) {
        this.masp = masp;
    }

    public Integer getMasp() {
        return masp;
    }

    public void setMasp(Integer masp) {
        this.masp = masp;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public Integer getSoluong() {
        return soluong;
    }

    public void setSoluong(Integer soluong) {
        this.soluong = soluong;
    }

    public Double getDongia() {
        return dongia;
    }

    public void setDongia(Double dongia) {
        this.dongia = dongia;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    public Boolean getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(Boolean trangthai) {
        this.trangthai = trangthai;
    }

    public String getMancc() {
        return mancc;
    }

    public void setMancc(String mancc) {
        this.mancc = mancc;
    }

    public Integer getMadm() {
        return madm;
    }

    public void setMadm(Integer madm) {
        this.madm = madm;
    }

}
