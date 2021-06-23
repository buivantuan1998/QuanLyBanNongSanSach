/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.servlet.http.HttpSession;

/**
 *
 * @author Win 10
 */
public class AccountModel {
    public static boolean CheckUrl(HttpSession session){
        if(session.getAttribute("user")!=null){
            return true;
        }else return false;
    }
}
