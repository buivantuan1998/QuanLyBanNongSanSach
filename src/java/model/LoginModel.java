/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.User;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import util.ConnectionDB;

/**
 *
 * @author Win 10
 */
public class LoginModel {
    public int checkLogin(String email, String password){
        Connection conn=null;
        CallableStatement callSt=null;
        int status=0;
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call checkLogin(?,?,?)}");
            callSt.setString(1, email);
            callSt.setString(2, password);
            callSt.registerOutParameter(3, java.sql.Types.INTEGER);
            callSt.execute();
            status=callSt.getInt(3);
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callSt);
        }
        return status;
    }
    public String getUserNameByEmail(String email){
        Connection conn=null;
        CallableStatement callSt=null;
        String userName="";
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call getUserNameByEmail(?)}");
            callSt.setString(1, email);
            ResultSet rs=callSt.executeQuery();
            while(rs.next()){
                userName=rs.getString("UserName");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callSt);
        }
        return userName;
    }
    
//    kiem tra dang nhap quyen admin
    public int checkLoginAdmin(User user){
        Connection conn=null;
        CallableStatement callSt=null;
        int status=0;
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call checkLoginIsAdmin(?,?,?)}");
            callSt.setString(1, user.getEmail());
            callSt.setString(2, user.getPassword());
            callSt.registerOutParameter(3, java.sql.Types.INTEGER);
            callSt.execute();
            status=callSt.getInt(3);
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callSt);
        }
        return status;
    }
            
}
