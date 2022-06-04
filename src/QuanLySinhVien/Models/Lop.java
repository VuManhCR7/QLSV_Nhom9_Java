/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLySinhVien.Models;

/**
 *
 * @author duong
 */
public class Lop {
    private int maLop;
    private String tenLop ;
    private String khoa ;
    private String heDaoTao;
    private int namNhapHoc;
    private int siSo ;
    private int maKhoa;

    public Lop(int maLop, String tenLop, String khoa, String heDaoTao, int namNhapHoc, int siSo, int maKhoa) {
        this.maLop = maLop;
        this.tenLop = tenLop;
        this.khoa = khoa;
        this.heDaoTao = heDaoTao;
        this.namNhapHoc = namNhapHoc;
        this.siSo = siSo;
        this.maKhoa = maKhoa;
    }

    public Lop() {
    }

    public int getMaLop() {
        return maLop;
    }

    public void setMaLop(int maLop) {
        this.maLop = maLop;
    }

    public String getTenLop() {
        return tenLop;
    }

    public void setTenLop(String tenLop) {
        this.tenLop = tenLop;
    }

    public String getKhoa() {
        return khoa;
    }

    public void setKhoa(String khoa) {
        this.khoa = khoa;
    }

    public String getHeDaoTao() {
        return heDaoTao;
    }

    public void setHeDaoTao(String heDaoTao) {
        this.heDaoTao = heDaoTao;
    }

    public int getNamNhapHoc() {
        return namNhapHoc;
    }

    public void setNamNhapHoc(int namNhapHoc) {
        this.namNhapHoc = namNhapHoc;
    }

    public int getSiSo() {
        return siSo;
    }

    public void setSiSo(int siSo) {
        this.siSo = siSo;
    }

    public int getMaKhoa() {
        return maKhoa;
    }

    public void setMaKhoa(int maKhoa) {
        this.maKhoa = maKhoa;
    }
    
}
