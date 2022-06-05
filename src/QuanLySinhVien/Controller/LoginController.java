package QuanLySinhVien.Controller;


import QuanLySinhVien.Controller.SQLProcessing;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author duong
 */
public class LoginController {
    public static boolean CheckLogin(String taiKhoan,String matKhau){
        String sql = "select * from dangnhap where tenTaiKhoan = ? and matKhau = ?";
        try {
            PreparedStatement ps = SQLProcessing.conn.prepareStatement(sql);
            ps.setString(1, taiKhoan);
            ps.setString(2, matKhau);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }
}
