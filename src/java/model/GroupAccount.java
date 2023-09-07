/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class GroupAccount {

    private Integer nhomtk;
    private String mota;
    private Boolean trangthai;

    public GroupAccount(Integer nhomtk, String mota, Boolean trangthai) {
        this.nhomtk = nhomtk;
        this.mota = mota;
        this.trangthai = trangthai;
    }

    public GroupAccount() {
    }

    public GroupAccount(Integer nhomtk) {
        this.nhomtk = nhomtk;
    }

    public Integer getNhomtk() {
        return nhomtk;
    }

    public void setNhomtk(Integer nhomtk) {
        this.nhomtk = nhomtk;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public Boolean getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(Boolean trangthai) {
        this.trangthai = trangthai;
    }

}
