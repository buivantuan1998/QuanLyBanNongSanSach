/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Win 10
 */
public class CheckEmail {

    public static boolean checkEmail(String email) {
        String emailPattern = "^[\\w!#$%&’*+/=?`{|}~^-]+(?:\\.[\\w!#$%&’*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
        Pattern regex = Pattern.compile(emailPattern);
        Matcher matcher = regex.matcher(email);
        if (matcher.find()) {
            return true;
        } else {
            return false;
        }
    }
    public int checkEmailExist(String email){
        Connection conn=null;
        CallableStatement callSt=null;
        int status=0;
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call checkEmailExist(?,?)}");
            callSt.setString(1, email);
            callSt.registerOutParameter(2, java.sql.Types.INTEGER);
            callSt.execute();
            status=callSt.getInt(2);
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callSt);
        }
        return status;
    }
}
