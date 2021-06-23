/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Contact;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.ConnectionDB;

/**
 *
 * @author ADMIN
 */
public class ContactModel {
     public List<Contact> getAllContact() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Contact> list = new ArrayList<Contact>();
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getAllContact()}");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                Contact c = new Contact();
                c.setId(rs.getInt("Id"));
                c.setName(rs.getString("Name"));
                c.setEmail(rs.getString("Email"));
                c.setContent(rs.getString("Content"));
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }
     
     public boolean insertContact(Contact contact) {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{ call insertContact(?,?,?)}");
            calla.setString(1, contact.getName());
            calla.setString(2, contact.getEmail());
            calla.setString(3, contact.getContent());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(CatalogModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionDB.closeConnect(conn, calla);
        }
        return result;
     }
}
