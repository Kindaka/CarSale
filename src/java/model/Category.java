/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Category {

    private Integer madm;
    private String tendm;
    private Boolean trangthai;

    public Category(Integer madm, String tendm, Boolean trangthai) {
        this.madm = madm;
        this.tendm = tendm;
        this.trangthai = trangthai;
    }

    public Integer getMadm() {
        return madm;
    }

    public void setMadm(Integer madm) {
        this.madm = madm;
    }

    public String getTendm() {
        return tendm;
    }

    public void setTendm(String tendm) {
        this.tendm = tendm;
    }

    public Boolean getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(Boolean trangthai) {
        this.trangthai = trangthai;
    }
   

   
}
