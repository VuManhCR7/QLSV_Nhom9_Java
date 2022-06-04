/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLySinhVien.Models;

/**
 *
 * @author Windows
 */
public class DiemThi {
    private String maHP;
    private int maSV;
    private float diemLan1;
    private float diemLan2;

    public DiemThi(String maHP, int maSV, float diemLan1, float diemLan2) {
        this.maHP = maHP;
        this.maSV = maSV;
        this.diemLan1 = diemLan1;
        this.diemLan2 = diemLan2;
    }

    public DiemThi() {
    }

    public String getMaHP() {
        return maHP;
    }

    public int getMaSV() {
        return maSV;
    }

    public float getDiemLan1() {
        return diemLan1;
    }

    public float getDiemLan2() {
        return diemLan2;
    }

    public void setMaHP(String maHP) {
        this.maHP = maHP;
    }

    public void setMaSV(int maSV) {
        this.maSV = maSV;
    }

    public void setDiemLan1(float diemLan1) {
        this.diemLan1 = diemLan1;
    }

    public void setDiemLan2(float diemLan2) {
        this.diemLan2 = diemLan2;
    }
    
    
}
